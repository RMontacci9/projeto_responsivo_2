import 'package:flutter/material.dart';
import 'package:projeto_responsivo_2/pages/home_page/widgets/responsive_menu_actions.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "Billabong",
                        fontWeight: FontWeight.w500),
                  ) ,
                ),
              ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              child:   Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child:  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white)
                    ),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 4),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white, size: 15,),
                        const SizedBox(width: 4,),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isCollapsed: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),),
             ResponsiveVisibility(
               visible: false,
               visibleWhen: [
                 Condition.largerThan(name: MOBILE)
               ],
               replacement:ResponsiveMenuActions(),
               child: Expanded(
                 child: ResponsiveMenuActions(),
               ),
             )

            ],
          ),
        ),
      ),
    );
  }
}
