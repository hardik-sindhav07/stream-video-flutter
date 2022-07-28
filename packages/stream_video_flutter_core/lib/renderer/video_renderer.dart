import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart'show RTCVideoViewObjectFit;
// ignore: depend_on_referenced_packages
import 'package:livekit_client/livekit_client.dart' show VideoTrackRenderer,VideoTrack,VideoViewMirrorMode;
import 'package:stream_video/stream_video.dart';

class StreamVideoTrackRenderer extends StatelessWidget {
  final StreamVideoTrack track;
  const StreamVideoTrackRenderer(this.track, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoTrackRenderer(
      track as VideoTrack,
      mirrorMode: VideoViewMirrorMode.auto,
      fit: RTCVideoViewObjectFit.RTCVideoViewObjectFitContain,
    );
  }
}
