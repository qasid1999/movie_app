import 'package:movie_app/core/helpers/imports_helper.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerPlayerScreen extends StatefulWidget {
  const TrailerPlayerScreen({super.key});

  @override
  TrailerPlayerScreenState createState() => TrailerPlayerScreenState();
}

class TrailerPlayerScreenState extends State<TrailerPlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    var movieController = readProvider<MovieController>();
    final videoId = YoutubePlayer.convertUrlToId(movieController.getTrailerId());

    _controller = YoutubePlayerController(
      initialVideoId: videoId ?? "",
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        disableDragSeek: true,
      ),
    );

    _controller.addListener(() {
      if (_controller.value.playerState == PlayerState.ended) {
        Navigator.pop(context); // Close player after trailer ends
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.onBackgroundColor,
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onEnded: (_) => Navigator.pop(context), // Close when done
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
