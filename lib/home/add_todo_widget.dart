import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addtodobuttomsheet extends StatefulWidget{
  @override
  _addtodobuttomsheetState createState() => _addtodobuttomsheetState();
}

class _addtodobuttomsheetState extends State<addtodobuttomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('add new task',textAlign: TextAlign.center,style:
            Theme.of(context).textTheme.subtitle1,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Title'
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'Descrabtion'
            ),
            minLines: 1,
            maxLength: 4,
          ),
          Text('date',),
          InkWell(
            onTap: (){
              showdatedialge();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('1/12/2021',textAlign: TextAlign.center),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Add'))
        ],
      ),
    );
  }

  void  showdatedialge(){
       showDatePicker(context: context, initialDate: DateTime.now(),
           firstDate: DateTime.now(), lastDate: DateTime.now().add(
             Duration(days: 365)
           ));
  }
}