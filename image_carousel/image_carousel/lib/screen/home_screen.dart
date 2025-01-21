import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller = PageController();

  Timer? timer; // 타이머

  @override
  void initState() {
    super.initState();

    // 그냥 Timer는 단일 실행이고 반복적으로 실행은 Timer.periodic
    timer = Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        int currentPage = controller.page!.toInt(); // 현재 페이지
        int nextPage = currentPage + 1; // 다음 페이지

        // 마지막 페이지 일 시 처음으로 돌아가게 하기
        if (nextPage > 3) {
          nextPage = 0;
        }

        // 이미지 넘어가는 애니메이션
        controller.animateToPage(
          nextPage,
          duration: Duration(microseconds: 500),
          curve: Curves.linear,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4]
            .map(
              (e) => Image.asset(
                "asset/img/image_$e.jpg",
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }


  // 앱이 삭제 될 때
  @override
  void dispose() {
    // 타이머 실행 중이면 끄키
    if(timer != null){
      timer!.cancel();
    }

    // controller 삭제
    controller.dispose();

    // 메모리 사용을 줄이기 위해 앱이 꺼지면 삭제시켜주기
    super.dispose();
  }


}
