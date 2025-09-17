import 'package:flutter/material.dart';

class FiveStarRating extends StatelessWidget {
  const FiveStarRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_rounded,color: Colors.yellow[700],size: 22,),
        Icon(Icons.star_rounded,color: Colors.yellow[700],size: 22,),
        Icon(Icons.star_rounded,color: Colors.yellow[700],size: 22,),
        Icon(Icons.star_rounded,color: Colors.yellow[700],size: 22,),
        Icon(Icons.star_rounded,color: Colors.yellow[700],size: 22,),
        SizedBox(width: 12,),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            "4.5",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: 'aago',
            ),
          ),
        ),
      ],
    );
  }
}
