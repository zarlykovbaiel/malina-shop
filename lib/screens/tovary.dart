// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TovaryScreen extends StatelessWidget {
  const TovaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Корзина"),
        actions: const [
          Text(
            "Очистить",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Buttomm(
                      text: 'Доставка',
                      color: Colors.white,
                      colorbg: Color(0xffF72055),
                      colortx: Colors.white,
                    ),
                    Buttomm(
                      text: 'В заведении',
                      color: Colors.white,
                      colorbg: Colors.white,
                      colortx: Colors.black,
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      blurRadius: 5,
                    ),
                  ],
                ),
                width: 360,
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Hair"),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/h1.png",
                          width: 90.w,
                          height: 90.h,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Hadat cosmetics',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            '1900 C',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/h2.png",
                          width: 90.w,
                          height: 90.h,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Hadat cosmetics',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            '2000 C',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Buttomm2(
                        text: "Заказать",
                        color: Color(0xffF72055),
                        colorbg: Color(0xffF72055),
                        colortx: Colors.white,
                        text2: "3900 C",
                        colortx2: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      blurRadius: 5,
                    ),
                  ],
                ),
                width: 360,
                height: 270,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Hair"),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/h3.png",
                          width: 80.w,
                          height: 80.h,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'L’Oreal Paris\nElseve',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            '600 C',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Buttomm2(
                        text: "Заказать",
                        color: Color(0xffF72055),
                        colorbg: Color(0xffF72055),
                        colortx: Colors.white,
                        text2: "600 C",
                        colortx2: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Buttomm extends StatelessWidget {
  const Buttomm({
    super.key,
    required this.text,
    required this.color,
    required this.colorbg,
    required this.colortx,
    this.icon,
  });
  final String text;
  final Color color;
  final Color colorbg;
  final Color colortx;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorbg,
        borderRadius: BorderRadius.circular(30),
      ),
      width: 167.w,
      height: 40.h,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: colortx),
        ),
      ),
    );
  }
}

class Buttomm2 extends StatelessWidget {
  const Buttomm2({
    super.key,
    required this.text,
    required this.color,
    required this.colorbg,
    required this.colortx,
    this.myIcon,
    this.text2,
    this.colortx2,
  });

  final Icon? myIcon;
  final String text;
  final Color color;
  final Color colorbg;
  final Color colortx;
  final Color? colortx2;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorbg,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 260.w,
      height: 40.h,
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: colortx),
            ),
            Spacer(),
            Text(
              text2 ?? "",
              style: TextStyle(color: colortx2),
            )
          ],
        ),
      )),
    );
  }
}
