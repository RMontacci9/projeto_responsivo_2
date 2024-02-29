import 'package:flutter/material.dart';
import 'package:projeto_responsivo_2/pages/home_page/widgets/post_widget.dart';
import 'package:projeto_responsivo_2/pages/home_page/widgets/responsive_app_bar.dart';
import 'package:projeto_responsivo_2/pages/home_page/widgets/right_panel.dart';
import 'package:projeto_responsivo_2/pages/home_page/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(preferredSize: Size(double.infinity, 52),
      child: ResponsiveAppBar(),),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              RightPanel()
            ],
          ),
        ),
      ),
    );
  }
}
