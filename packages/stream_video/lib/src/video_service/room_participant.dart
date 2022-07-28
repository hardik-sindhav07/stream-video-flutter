import 'package:livekit_client/livekit_client.dart'
    show TrackSource, Participant;
import 'package:stream_video/src/models/aliases.dart';

class RoomParticipant {
  final Participant _participant;

  RoomParticipant(this._participant);

  String get id => _participant.sid;

  String get name => _participant.name;

  VideoConnectionQuality get connectionQuality =>
      _participant.connectionQuality;

  bool get isSpeaking => _participant.isSpeaking;

  VideoTrackPublication? get firstCameraPublication => _participant.videoTracks
      .firstWhere((element) => element.source == TrackSource.camera,
          orElse: null);

  VideoTrackPublication? get firstScreenSharePublication =>
      _participant.videoTracks.firstWhere(
          (element) => element.source == TrackSource.screenShareVideo,
          orElse: null);

  VideoTrackPublication get firstAudioPublication =>
      _participant.audioTracks.first;

  StreamVideoTrack? get firstCameraVideoTrack {
    if (firstCameraPublication != null) {
      if (!firstCameraPublication!.muted &&
          firstCameraPublication!.subscribed) {
        return firstCameraPublication!.track;
      }
    } else {
      return null;
    }
  }

  StreamVideoTrack? get firstScreenShareVideoTrack {
    if (firstScreenSharePublication != null) {
      if (!firstScreenSharePublication!.muted &&
          firstScreenSharePublication!.subscribed) {
        return firstScreenSharePublication!.track;
      }
    } else {
      return null;
    }
  }

  List<VideoTrackPublication> get videoTracks => _participant.videoTracks;

  void addListener(void Function() onParticipantChanged) =>
      _participant.addListener(onParticipantChanged);

  void removeListener(void Function() onParticipantChanged) =>
      _participant.removeListener(onParticipantChanged);
}

extension RoomParticipantX on RoomParticipant {
  VideoTrackPublication? get mainVideoPublication =>
      firstScreenSharePublication ?? firstCameraPublication;

  StreamVideoTrack? get mainVideoTrack =>
      firstScreenShareVideoTrack ?? firstCameraVideoTrack;

  StreamVideoTrack? get subVideoTrack =>
      firstScreenShareVideoTrack != null ? firstCameraVideoTrack : null;
}
