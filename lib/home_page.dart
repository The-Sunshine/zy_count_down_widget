
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zy_count_down_widget/count_down_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Center(
          child: CountDownWidget(
            defaultText: '倒计时:',
            fontSize: 17,
            second: 5,
            onCountDownFinishCallBack: (bool value) {
              if (value) {
                print('倒计时完成');
                setState(() {

                });
              }
            },
          ),
        )
      ],
    ));
  }
}
