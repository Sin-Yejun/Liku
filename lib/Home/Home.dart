import 'package:flutter/material.dart';
import 'package:liku/Theme/Colors.dart';
import 'package:marquee/marquee.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          //backgroundColor: Colors.grey,
          flexibleSpace: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 왼쪽 구역
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: primaryRed,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text('Language',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                backgroundColor: primaryYellow,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                minimumSize: Size(55, 30),
                              ),
                              onPressed: () {
                                //
                              },
                              child: const Text('Select',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                        Container(
                          width: 150,
                          height: 1, // 선의 높이
                          color: Colors.white, // 선의 색상
                        ),
                        const Text(
                          '한국어',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // 가운데 구역
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primaryBlack,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '동서울 터미널 무인발매기 입니다.',
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          color: primaryYellow,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                // 오른쪽 구역
                Expanded(
                  child: Container(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      child: const Column(
                        children: [
                          Text(
                            '2022-11-25',
                          ),
                          Text(
                            '10:33:02',
                          ),
                          Text(
                            '승차권잔여수량',
                            style: TextStyle(color: primaryRed),
                          ),
                          Text(
                            '831',
                            style: TextStyle(color: primaryRed),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '한차원높은\n',
                    style: TextStyle(
                      color: primaryOrange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '전국 시외버스 통합 예매 · 발권 시스템',
                    style: TextStyle(
                      color: primaryPurple,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '으로\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '안전',
                    style: TextStyle(
                      color: primaryOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '하고 ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '편안',
                    style: TextStyle(
                      color: primaryOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '하게!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      // 버튼이 눌렸을 때 수행할 작업
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryOrange,
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '모바일/인터넷\n예매발권\n----->',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      // 버튼이 눌렸을 때 수행할 작업
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[800],
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '당일/예매 발권\n----->',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 30, // 컨테이너 높이 설정
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black, // 여기서 primaryBlack 대신 직접 색상을 지정했습니다.
          ),
          child: Marquee(
            text: '동서울 터미널 무인발매기 입니다.',
            style: TextStyle(color: Colors.white, fontSize: 15),
            scrollAxis: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            blankSpace: MediaQuery.of(context).size.width * 0.8,
            velocity: -50.0,
            startPadding: 10.0,
            accelerationCurve: Curves.linear,
            decelerationCurve: Curves.easeOut,
            fadingEdgeStartFraction: 0.1, // 시작 부분에 페이딩 효과
            fadingEdgeEndFraction: 0.1, // 끝 부분에 페이딩 효과
          ),
        ),
      ),
    );
  }
}
