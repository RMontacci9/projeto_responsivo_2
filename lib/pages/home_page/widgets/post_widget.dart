import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: desktop ? 16: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    "Jane_Doe",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
              "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          Padding(
            padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.messenger_outline,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Curtido por Jane_Doe e outras 300 pessoas",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "HÁ 1 HORA",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
          ),
          if(desktop)...[
           Divider(
             color: Colors.white,
             height: 0.1,
           ),
           Row(
             children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                   child: TextFormField(
                     style: TextStyle(
                       color: Colors.white
                     ),
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       isCollapsed: true,
                       hintText: "Adicione um comentário...",
                       hintStyle: TextStyle(fontSize: 13, color: Colors.white ),
                     ),
                   ),
                 ),
               ),
               ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                     primary: Colors.transparent,
                   ),
                   child: Text("Publicar", style: TextStyle(color: Colors.blue),))
             ],
           )
          ]
        ],
      ),
    );
  }
}
