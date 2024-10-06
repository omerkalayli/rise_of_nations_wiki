import 'package:assets_audio_player/assets_audio_player.dart';

Future<void> playClickSound() async {
  await AssetsAudioPlayer.newPlayer()
      .open(Audio("assets/sounds/button_click_sound.wav"));
}

Future<void> playNavigateForwardSound() async {
  await AssetsAudioPlayer.newPlayer()
      .open(Audio("assets/sounds/transition_in.wav"));
}

Future<void> playNavigateBackSound() async {
  await AssetsAudioPlayer.newPlayer()
      .open(Audio("assets/sounds/transition_out.wav"));
}
