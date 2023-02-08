import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1,115,130,1),
        title:
        const Align(
          alignment: Alignment.centerRight,
          child:  Text(
            'خدمة سريعه',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold ,
            ),
          ),
        ),
        actions: [
          IconButton(

            icon: const Icon(Icons.arrow_forward_sharp),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),

    );
  }
}
