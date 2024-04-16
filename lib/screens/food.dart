// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Корзина"),
        actions: const [
          Text(
            "Очистить",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
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
            height: 380,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Bellagio Coffee"),
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
                      "assets/pizza.png",
                      width: 110.w,
                      height: 110.h,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Том ям ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        '250 C',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Buttomm2(
                    text: "Добавки",
                    color: Color(0xffF8F8F8),
                    colorbg: Color(0xffF8F8F8),
                    colortx: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Buttomm2(
                    text: "Заказать",
                    color: Color(0xffF72055),
                    colorbg: Color(0xffF72055),
                    colortx: Colors.white,
                    text2: "250 C",
                    colortx2: Colors.white,
                  ),
                )
              ],
            ),
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
    this.text2,
    this.colortx2,
  });
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
        padding: const EdgeInsets.all(10.0),
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
