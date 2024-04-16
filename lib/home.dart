import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina_project/widgets/base_container.dart';
import 'package:malina_project/widgets/search_button.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        const SearchButton(),
        Container(
          width: 320.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: const Color(0xffF72055),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Image.asset(
                "assets/frame.png",
                width: 50.w,
                height: 50.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              const Text(
                "Сканируй QR-код и заказывай\nпрямо в заведении",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const BaseContainer(
          image: "assets/salat.png",
          text: 'Еда',
          text2: 'Из кафе и\nресторанов',
          color: Color(0xffFFDF94),
        ),
        SizedBox(
          height: 10.h,
        ),
        const BaseContainer(
          image: "assets/rose.png",
          text: 'Бьюти',
          text2: 'Салоны красоты\nи товары',
          color: Color(0xffFFDEDD),
        ),
      ],
    );
  }
}
