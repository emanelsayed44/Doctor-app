import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                    leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back,color: Colors.black,size:25,)),
                    title: Text(
                          "قائمة الاطباء",
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
              body:Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Container(
                                width: 720,
                                margin: EdgeInsets.only(right:130),
                                    decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30.0),
                                          color: Colors.grey[300],
                                    ),
                                    padding: EdgeInsets.all(10,),
                                    child: TextField(
                                          decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black
                                            ),
                                            hintText: "ابحث عن طبيب او مركز",
                                            border: InputBorder.none,
                                              suffixIcon: Icon(
                                                  Icons.search,
                                                  size:30 ,
                                              ),
                                          ),
                                    ),
                              ),
                              SizedBox(
                                height: 20.0,
                          ),

                              ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                 shrinkWrap: true,
                                 itemBuilder: (context,index)=>builddoctoritem(),
                                 separatorBuilder:(context,index)=> SizedBox(
                                   height: 20.0,
                                 ),
                                 itemCount:15,
                             ),
                        ],
                  ),
                ),
              )

        );
  }
  Widget builddoctoritem()=>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(50.0),
      ) ,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundImage:  AssetImage(
                    'images/portrait-smiling-handsome-male-doctor-man.jpg'
                  )
                  ),

                CircleAvatar(
                  radius: 13.0,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    start: 5.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),


          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text("د.على احمد",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(onPressed: (){},
                    icon: CircleAvatar(
                      radius: 1000.0,
                      backgroundColor: Colors.white,
                      child:Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 19,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text("استاذ مساعد امراض التخاطب",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 72.0,bottom: 20),
                child: Text("دكتور نطق وتخاطب",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0,bottom: 10),
                    child: ElevatedButton(onPressed: (){
                    },
                      child: Text(
                        "حجز",style: TextStyle(
                          fontSize: 27
                      ),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.
                          all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                          padding: MaterialStateProperty.all(EdgeInsets.all(23)),
                          backgroundColor: MaterialStateProperty.all(Color(0xFF017382))
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.star,color: Colors.amber,),
                  Text("4.5"),
                  SizedBox(
                    width: 16,
                  ),
                  Text("500"),
                  SizedBox(
                    width: 12,
                  ),
                  Text("مراجعات"),
                ],
              )

            ],
          )
        ],
      ),
    ),
  );
  }
