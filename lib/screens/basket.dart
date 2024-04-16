import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina_project/screens/food.dart';

class LinearFlowWidget extends StatelessWidget {
  const LinearFlowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Center(
          child: SizedBox(
            width: 150.w,
            height: 40.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF72055)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FoodScreen()));
              },
              child: const Text(
                'Еда',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Center(
          child: SizedBox(
            width: 150.w,
            height: 40.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF72055)),
              onPressed: () {},
              child: const Text(
                'Еда',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
