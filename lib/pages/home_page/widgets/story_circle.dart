import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            )
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
              ),
            ),
          ),
        ),
        Text("Jane_Doe",style: TextStyle(fontSize: 12, color: Colors.white), )
      ],
    );
  }
}
