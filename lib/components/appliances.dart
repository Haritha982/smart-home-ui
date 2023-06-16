// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class appliance extends StatelessWidget {
  final Color colour;
  final IconData icon;
  final String label;
  // ignore: prefer_const_constructors_in_immutables
  appliance({required this.colour,required this.icon,required this.label});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:(){},
        child: Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width*0.43,
          height: MediaQuery.of(context).size.width*0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15),),
            border: Border.all(
              color: Colors.grey.shade300,
            )
          ),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.1,
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                  color: colour,
                ),
                child: Center(child: Icon(icon,
                color: Colors.white,
                size: 25,),),
              ),
              SizedBox(
                width: 20,
              ),
              Text(label,style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),),
            ],
          ),
        ),);
  }
}
