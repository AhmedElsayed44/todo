import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/home/todo_widget.dart';


class todolisttap extends StatefulWidget{
  @override
  _todolisttapState createState() => _todolisttapState();
}

class _todolisttapState extends State<todolisttap> {
DateTime selectedday= DateTime.now();

DateTime focuseday= DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
     child: Column(
       children: [
         TableCalendar(
           selectedDayPredicate: (day) {
             return isSameDay(selectedday, day);
           },
        onDaySelected: (sDay, fDay) {
          setState(() {
            selectedday=sDay;
            focuseday=fDay;
          });

        },
           calendarFormat: CalendarFormat.week,
             focusedDay: focuseday, firstDay: DateTime.now()
             .subtract(
           Duration(days: 365)
         ),
             lastDay: DateTime.now().add(Duration(days: 365)),
           calendarStyle: CalendarStyle(
             selectedTextStyle: TextStyle(
               color: Colors.white
             ),
             selectedDecoration: BoxDecoration(
               color: Theme.of(context).primaryColor,
               borderRadius: BorderRadius.circular(8)
             ),
             todayTextStyle: TextStyle(
                 color: Colors.white
             ),
             todayDecoration: BoxDecoration(
                 color:Colors.black45,
                 borderRadius: BorderRadius.circular(8)
             ),
             defaultDecoration: BoxDecoration(
               color: Colors.white,
                 borderRadius: BorderRadius.circular(8)
             ),
             defaultTextStyle: TextStyle(
               color: Colors.black
             )

           ),
           weekendDays: [],
           daysOfWeekStyle: DaysOfWeekStyle(
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(8)
             ),
             weekdayStyle: TextStyle(
               color: Colors.black
             )
           ),
         ),
         Expanded(child: ListView.builder(itemBuilder: (buildcontext,context){
           return todowidget();
         },
           itemCount: 10,
         ))
       ],
     ),
    );
  }
}