import 'package:flutter/material.dart';

class LockImageWidget extends StatelessWidget {
  const LockImageWidget({super.key, required this.icon});

 final  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/circle.png",height: 160,),
        Positioned(
          top: 42,
          right: 42,
          child:  Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xff0E7885),
              boxShadow: [
                 BoxShadow(
                  color: Colors.black.withValues(alpha: 0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child:  Icon(  icon,size: 32,color: Colors.white,),
          ),

        )
      ],
    );
  }
}