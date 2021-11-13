import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/add_todo_widget.dart';
import 'package:todo/home/todo_list_tap.dart';
import 'package:todo/home/todo_settings_tap.dart';


class homescreen extends StatefulWidget{
  static const String routeName='home';

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To Do List'),
        centerTitle: false,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,width: 4,
          )
        ),

        child: Icon(Icons.add),
        onPressed: (){
          showbottomsheet();

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index){
            currentindex=index;
            setState(() {

            });

          },
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon:Icon(Icons.list)
            ),
            BottomNavigationBarItem(
                label: '',
                icon:Icon(Icons.settings)
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
      ),
     body: tabs[currentindex],
    );
  }
  List<Widget> tabs= [
    todolisttap(),
  todosettingstap(),
  ];

  void showbottomsheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return addtodobuttomsheet();

    });
  }
}