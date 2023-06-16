import 'package:flutter/material.dart';

class HomeSpecific extends StatelessWidget {

   final String label;
   final String imgpath;
   final double imgwidth;
   final double imgheight;
   // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
   HomeSpecific({required this.label,required this.imgpath,
   required this.imgwidth,required this.imgheight});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
        child: Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width*0.43,
          height: MediaQuery.of(context).size.width*0.48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20.0),),
            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(label,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                ),),
              ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.width*imgheight,
                  width: MediaQuery.of(context).size.width*imgwidth,
                  child: Image.asset(imgpath,fit: BoxFit.contain,),
                )
              ],
            )
            ],
          ),
        ));
  }
}
