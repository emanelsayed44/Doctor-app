import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
void main() {
  runApp(const ScreenFour());
}

class ScreenFour extends StatefulWidget{
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}
class _ScreenFourState extends State<ScreenFour>{
  DateTime today = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  void _onDaySelected(DateTime day,DateTime focusedDay){
    setState(() {
      today = day;

    });
  }
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
      body: content(),
    );
  }
  Widget content(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                ' اختار تاريخك المناسب',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: TableCalendar(
              rowHeight: 43,
              headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day ,today),
              focusedDay: today,
              firstDay: DateTime.utc(2000,10,20),
              lastDay: DateTime.utc(2100,4,3),
              onDaySelected: _onDaySelected,
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('${time.hour}:${time.minute}',
                style:const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(

                child: const Text('اختار الوقت',
                    style: TextStyle (fontSize: 20)),
                onPressed: () async {

                  TimeOfDay? newTime = await showTimePicker(
                    context: context,
                    initialTime: time,

                  );
                  if (newTime == null) return;
                  setState(() {
                    time = newTime;
                  }
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(1,115,130,1),
                ),
              ),
            ],

          ),
        ),
        Padding(

          padding: const EdgeInsets.only(top: 160),
          child: ElevatedButton(


            onPressed: () async {
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(270,80),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              primary: const Color.fromRGBO(1,115,130,1),
            ),

            child:  const Text('حجز',
                style: TextStyle (fontSize: 35)),
          ),

        )



      ],
    );
  }
}