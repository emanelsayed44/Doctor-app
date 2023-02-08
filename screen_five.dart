import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  IconButton(

                      icon: const Icon(Icons.arrow_forward_sharp),
                          onPressed: (){
                        Navigator.pop(context);
                          },
                  ),
                ],
              ),
              Expanded(
                child: Column(

                  children:  [

                    SvgPicture.asset('assets/image/Good team-pana.svg'),

                    const Text(
                      'تمت العملية بنجاح',
                      style: TextStyle(
                        color: Color.fromRGBO(1,115,130,1),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold ,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

}
