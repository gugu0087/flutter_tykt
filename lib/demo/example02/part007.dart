import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../utils/device_utils.dart';


class Part007DemoPage extends StatefulWidget {
  const Part007DemoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part007DemoState();
  }
}

class Part007DemoState extends State<Part007DemoPage> {
  late Chewie playerWidget;
  final String videoUrl =
      "https://auto.pcvideo.com.cn/oss/pcauto/vpcauto/2021/12/22/1640174601272-vpcauto-75886-1_3.mp4";
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initVideoPlay();
  }

  bool isInitFinish = false;

  /// 初始化视频播放控件
  initVideoPlay() async {
    videoPlayerController = VideoPlayerController.network(videoUrl);
    await videoPlayerController.initialize().then((value) => {
          chewieController = ChewieController(
              videoPlayerController: videoPlayerController,
              autoPlay: false,
              looping: true,
              aspectRatio: videoPlayerController.value.aspectRatio),
          isInitFinish = true,
          if (mounted) {setState(() {})}
        });
  }

  @override
  Widget build(BuildContext context) {
    double height = 200;
    if (isInitFinish) {
      /// 视频播放器 widget
      playerWidget = Chewie(
        controller: chewieController,
      );
      double ratio = chewieController.aspectRatio ?? 1;
      double width =
          DeviceUtils.px2dip(context, DeviceUtils.getScreenSize().width);
      height = width / ratio;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: isInitFinish
          ? Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      chewieController.play();
                    },
                    child: Text("视频播放"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      chewieController.pause();
                    },
                    child: Text("暂停播放"),
                  ),
                ),
                SizedBox(
                  height: height,
                  child: playerWidget,
                ),
              ],
            )
          : Text("sdsdsd"),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
  }
}
