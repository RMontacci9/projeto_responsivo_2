import 'package:flutter/material.dart';
import 'package:projeto_responsivo_2/pages/home_page/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;
    return Container(
      height: 110,
      margin:  EdgeInsets.only(top: mobile ? 15 : 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) => const SizedBox(width: 16,),
        itemCount: 16,
        itemBuilder: (_, i) => StoryCircle(),
      ),
    );
  }
}
