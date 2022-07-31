import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/data/songs_json.dart';
import 'package:spotify_clone/utils/utils.dart';

class MusiconPage extends StatefulWidget {
  MusiconPage({Key? key, required this.imageid}) : super(key: key);
  final imageid;

  @override
  State<MusiconPage> createState() => _MusiconPageState(imageid);
}

class _MusiconPageState extends State<MusiconPage> {
  final id;
  bool fav = true;
  _MusiconPageState(this.id);
  var size, h, w;
  final _audioPlayer = AudioPlayer();
  Duration pos = Duration.zero;
  Duration tot = Duration.zero;
  bool isplaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setAudio();
    //Listen to states: playing, paused,stoped
    _audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        musicon = isplaying = event == PlayerState.playing;
      });
    });

    // Listen to audio duration
    _audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        tot = event;
      });
    });

    // Listen to audio postion
    _audioPlayer.onPositionChanged.listen((newpos) {
      setState(() {
        pos = newpos;
      });
    });
  }

  Future setAudio() async {
    // Repeat song when completed
    _audioPlayer.setReleaseMode(ReleaseMode.loop);
    final player = AudioCache(prefix: 'assets/songs/');
    final url = await player.load('1.mp3');
    await _audioPlayer.setSourceUrl(url.path);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blueGrey.withOpacity(1),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 80),
              width: w - 50,
              child: Image.asset(
                id['img'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      id['title'],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      id['description'],
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        fav = !fav;
                      });
                    },
                    color: Colors.green,
                    icon: fav
                        ? Icon(FontAwesomeIcons.heart)
                        : Icon(FontAwesomeIcons.solidHeart)),
              ],
            ),
          ),
          Slider(
              max: tot.inSeconds.toDouble(),
              min: 0,
              value: pos.inSeconds.toDouble(),
              activeColor: Colors.green.shade400,
              onChanged: (value) async {
                final position = Duration(seconds: value.toInt());
                await _audioPlayer.seek(position);
                await _audioPlayer.resume();
              }),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatTime(pos)),
                Text(formatTime(tot)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.shuffle,
                  color: Colors.white,
                ),
                Icon(
                  FontAwesomeIcons.backwardStep,
                  color: Colors.white,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.green,
                  child: IconButton(
                      onPressed: () async {
                        if (isplaying) {
                          await _audioPlayer.pause();
                        } else {
                          await _audioPlayer.resume();
                        }
                      },
                      color: Colors.white,
                      iconSize: 35,
                      icon: isplaying
                          ? Icon(Icons.pause)
                          : Icon(Icons.play_arrow)),
                ),
                Icon(
                  FontAwesomeIcons.forwardStep,
                  color: Colors.white,
                ),
                Icon(
                  FontAwesomeIcons.repeat,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
