import 'package:flutter/material.dart';
import 'package:liku/Theme/Colors.dart';
import 'package:marquee/marquee.dart';

class Selectseat extends StatefulWidget {
  const Selectseat({super.key});

  @override
  State<Selectseat> createState() => _SelectseatState();
}

class _SelectseatState extends State<Selectseat> {
  int adult = 0; // 어른
  int mid = 0; // 중고등학생
  int child = 0; // 어린이
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Component
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 30,
                  color: primaryGray,
                  child: Text(
                    '어른(\u20A939,300)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(30, 30), // 너비와 높이를 동일하게 설정하여 정사각형 모양 만들기
                              padding: EdgeInsets.all(0), // 내부 패딩을 제거하여 정사각형 유지
                              foregroundColor: Colors.white,
                              backgroundColor: primaryPurple,
                              shape: RoundedRectangleBorder()),
                          onPressed: () {
                            if (adult != 0) {
                              setState(() {
                                adult--;
                              });
                            }
                          },
                          child: Icon(Icons.remove)),
                      SizedBox(width: 30),
                      Text('$adult'),
                      SizedBox(width: 30),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(30, 30), // 너비와 높이를 동일하게 설정하여 정사각형 모양 만들기
                              padding: EdgeInsets.all(0), // 내부 패딩을 제거하여 정사각형 유지
                              foregroundColor: Colors.white,
                              backgroundColor: primaryPurple,
                              shape: RoundedRectangleBorder()),
                          onPressed: () {
                            setState(() {
                              adult++;
                            });
                          },
                          child: Icon(Icons.add)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 20,
                  color: primaryGray,
                  child: Text(
                    '중고20(\u20A931,400)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(30, 30), // 너비와 높이를 동일하게 설정하여 정사각형 모양 만들기
                            padding: EdgeInsets.all(0), // 내부 패딩을 제거하여 정사각형 유지
                            foregroundColor: Colors.white,
                            backgroundColor: primaryPurple,
                            shape: RoundedRectangleBorder()),
                        onPressed: () {
                          if (mid != 0) {
                            setState(() {
                              mid--;
                            });
                          }
                        },
                        child: Icon(Icons.remove)),
                    SizedBox(width: 30),
                    Text('$mid'),
                    SizedBox(width: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(30, 30), // 너비와 높이를 동일하게 설정하여 정사각형 모양 만들기
                            padding: EdgeInsets.all(0), // 내부 패딩을 제거하여 정사각형 유지
                            foregroundColor: Colors.white,
                            backgroundColor: primaryPurple,
                            shape: RoundedRectangleBorder()),
                        onPressed: () {
                          setState(() {
                            mid++;
                          });
                        },
                        child: Icon(Icons.add)),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 20,
                  color: primaryGray,
                  child: Text(
                    '아동50(\u20A919,700)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(30, 30), // 너비와 높이를 동일하게 설정하여 정사각형 모양 만들기
                            padding: EdgeInsets.all(0), // 내부 패딩을 제거하여 정사각형 유지
                            foregroundColor: Colors.white,
                            backgroundColor: primaryPurple,
                            shape: RoundedRectangleBorder()),
                        onPressed: () {
                          if (child != 0) {
                            setState(() {
                              child--;
                            });
                          }
                        },
                        child: Icon(Icons.remove)),
                    SizedBox(width: 30),
                    Text('$child'),
                    SizedBox(width: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(30, 30), // 너비와 높이를 동일하게 설정하여 정사각형 모양 만들기
                            padding: EdgeInsets.all(0), // 내부 패딩을 제거하여 정사각형 유지
                            foregroundColor: Colors.white,
                            backgroundColor: primaryPurple,
                            shape: RoundedRectangleBorder()),
                        onPressed: () {
                          setState(() {
                            child++;
                          });
                        },
                        child: Icon(Icons.add)),
                  ],
                )
              ],
            ),
          ),
        ],
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
