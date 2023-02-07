import 'package:flutter/material.dart';
class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 25,)),
        title: Text(
          "المواعيد",
          style: TextStyle(
            fontSize: 29,
            fontFamily: "myfont",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right:20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                          ) ,
                          clipBehavior:Clip.antiAliasWithSaveLayer,
                          child: Image(image: AssetImage('images/female doctor.jpg',
                          ),
                            width:400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Column(
                        children: [
                          Text("د.مروة احمد",
                            style: TextStyle(
                                fontSize: 33,
                                color: Color(0xFF7c7c7c)
                            ),
                          ),
                          Text("اخصائى امراض تخاطب",
                            style: TextStyle(
                                fontSize: 33,
                                color: Colors.grey[500]
                            ),
                          ),
                          Text("استشارى ومساعد امراض تخاطب بكلية الطب",
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.grey[500]
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:70.0,top:70.0,right: 30.0,bottom: 70.0 ),
                    child: Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFfcfcfc),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "الخبرة",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF7c7c7c)
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "١٣ سنة",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF7c7c7c)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFfcfcfc),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "السعر",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF7c7c7c)
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "٤٠٠ جنيه ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF7c7c7c)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFfcfcfc),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "المراجعات",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF7c7c7c)
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "١.٤ الف",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF7c7c7c)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    Text("عن الطبيب",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF7c7c7c),

                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("information about him doctor enters it",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF7c7c7c)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("المركز",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF7c7c7c)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("information about him doctor enters it",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF7c7c7c)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("المؤهلات الاكاديمية",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF7c7c7c)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("information about him doctor enters it",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF7c7c7c)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
                Align(
                  alignment: Alignment.topRight,
                child: Text("مواعيد السيشن المتاحه",
                style: TextStyle(
                  fontSize: 29,
                  color: Color(0xFF7c7c7c)
                ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:40.0),
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("٩:٠٠ مساء",
                        style: TextStyle(
                          fontSize: 29,
                          color: Color(0xFF7c7c7c)
                        ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF017382),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("٤:٠٠ مساء",
                        style: TextStyle(
                            fontSize: 29,
                            color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("١١:٣٠ صباحا",
                        style: TextStyle(
                            fontSize: 29,
                            color: Color(0xFF7c7c7c)
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(onPressed: (){},
                child: Text(
                  "حجز",style: TextStyle(
                    fontSize: 27
                ),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.
                    all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    padding: MaterialStateProperty.all(EdgeInsets.all(60)),
                    backgroundColor: MaterialStateProperty.all(Color(0xFF017382))
                ),
              ),

            ],
          ),
        ),
      )

    );
  }
}