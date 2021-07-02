import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:radio/models/youtube_item.dart';
import 'package:radio/pages/youtube_channel/youtube_viewmodel.dart';
import 'package:radio/video_list.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerPage extends StatefulWidget {
  final YoutubeItem youtubeChannel;
  final String title;
  final List<String> videos;

  YoutubePlayerPage(this.youtubeChannel,this.title, this.videos);

  @override
  _YoutubePlayerPageState createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.youtubeChannel.url,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<YoutubeListVM>.reactive(
        viewModelBuilder: () => YoutubeListVM(),
        builder: (context, model, child) {
          return YoutubePlayerBuilder(
            onExitFullScreen: () {
              // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
              SystemChrome.setPreferredOrientations(DeviceOrientation.values);
            },
            player: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.white,
              topActions: <Widget>[
                const SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    _controller.metadata.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  onPressed: () {
                    log('Settings Tapped!');
                  },
                ),
              ],
              onReady: () {
                _isPlayerReady = true;
              },
              onEnded: (data) {
                _controller.load(model.ids[
                    (model.ids.indexOf(data.videoId) + 1) % model.ids.length]);
                _showSnackBar('Next Video Started!');
              },
            ),
            builder: (context, player) => Scaffold(
              appBar: AppBar(
                title: Text(
                  "${widget.title}",
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.video_library),
                    onPressed: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => VideoList(widget.videos),
                      ),
                    ),
                  ),
                ],
              ),
              body: ListView(
                children: [
                  player,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _space,
                        _space,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                              ),
                              onPressed: _isPlayerReady
                                  ? () => _controller.load(model
                                      .ids[(model.ids.indexOf(
                                              _controller.metadata.videoId) -
                                          1) %
                                      model.ids.length])
                                  : null,
                            ),
                            IconButton(
                              icon: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.white,
                              ),
                              onPressed: _isPlayerReady
                                  ? () {
                                      _controller.value.isPlaying
                                          ? _controller.pause()
                                          : _controller.play();
                                      setState(() {});
                                    }
                                  : null,
                            ),
                            IconButton(
                              icon: Icon(
                                  _muted ? Icons.volume_off : Icons.volume_up),
                              color: Colors.white,
                              onPressed: _isPlayerReady
                                  ? () {
                                      _muted
                                          ? _controller.unMute()
                                          : _controller.mute();
                                      setState(() {
                                        _muted = !_muted;
                                      });
                                    }
                                  : null,
                            ),
                            FullScreenButton(
                              controller: _controller,
                              color: Colors.white,
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                              ),
                              onPressed: _isPlayerReady
                                  ? () => _controller.load(model
                                      .ids[(model.ids.indexOf(
                                              _controller.metadata.videoId) +
                                          1) %
                                      model.ids.length])
                                  : null,
                            ),
                          ],
                        ),
                        _space,
                        Row(
                          children: <Widget>[
                            const Text(
                              "Volume :",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Slider(
                                inactiveColor: Colors.transparent,
                                value: _volume,
                                min: 0.0,
                                max: 100.0,
                                divisions: 10,
                                label: '${(_volume).round()}',
                                onChanged: _isPlayerReady
                                    ? (value) {
                                        setState(() {
                                          _volume = value;
                                        });
                                        _controller.setVolume(_volume.round());
                                      }
                                    : null,
                              ),
                            ),
                          ],
                        ),
                        _space,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget get _space => const SizedBox(height: 10);

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
