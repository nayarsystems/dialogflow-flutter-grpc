import '../../generated/google/cloud/dialogflow/v2beta1/audio_config.pb.dart';

/// Helper Class For passing in output audio config

class OutputConfigV2beta1 {
  OutputConfigV2beta1({
    this.audioEncoding = OutputAudioEncoding.OUTPUT_AUDIO_ENCODING_LINEAR_16,
    this.sampleRateHertz = 16000,
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.volumeGainDb,
    this.voiceName,
    this.ssmlGender = SsmlVoiceGender.SSML_VOICE_GENDER_FEMALE,
  });

  // Encoding of audio data sent in all RecognitionAudio messages.
  // This field is optional for FLAC and WAV audio files and required for all
  // other audio formats. For details, see [AudioEncoding].
  OutputAudioEncoding audioEncoding;

  /// Required. Sample rate in Hertz of the audio data sent in all RecognitionAudio
  /// messages. Valid values are: 8000-48000. 16000 is optimal. For best
  /// results, set the sampling rate of the audio source to 16000 Hz.
  /// If that's not possible, use the native sample rate of the audio source
  /// (instead of re-sampling). This field is optional for FLAC and WAV audio
  /// files, but is required for all other audio formats.
  /// For details, see [AudioEncoding].
  int sampleRateHertz;

  Iterable<String>? effectsProfileId;
  double? pitch;
  double? speakingRate;
  double? volumeGainDb;
  SsmlVoiceGender ssmlGender;
  String? voiceName;

  // Cast to proper OutputAudio object
  OutputAudioConfig cast() {
    final outputAudioConfig = OutputAudioConfig();
    outputAudioConfig.audioEncoding = audioEncoding;
    outputAudioConfig.sampleRateHertz = sampleRateHertz;
    outputAudioConfig.synthesizeSpeechConfig = SynthesizeSpeechConfig(
      effectsProfileId: effectsProfileId,
      pitch: pitch,
      speakingRate: speakingRate,
      voice: VoiceSelectionParams(
        name: voiceName,
        ssmlGender: ssmlGender,
      ),
    );

    return outputAudioConfig;
  }
}
