import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class todowidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        color: Colors.red,
        child: Container(

          color: Colors.white,

          child: Container(
            height: 120,
            padding: EdgeInsets.all(12),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),

            child: Row(
              children: [
                Container(

                  margin: EdgeInsets.symmetric(vertical: 12),
                  width: 4,
                  height: 62,
                  color: Theme.of(context).primaryColor,
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Titel',style: Theme.of(context).textTheme.headline1,),
                      Text('sub titel',style: Theme.of(context).textTheme.subtitle1),
                    ],
                  ),
                )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image.asset('assets/images/Iconcheck.png'),
                )

              ],
            ),

          ),
        ),
      ),
      actions: [
        IconSlideAction(
          color: Colors.transparent,
          iconWidget: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)
              )
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.delete,color: Colors.white,),
                Text('Delete',textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),)

              ],
            ),
          ),
          onTap: (){

          },
        )
      ],
    );
  }
}