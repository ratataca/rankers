import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/infor_content/horizontal_list_item/info_horizontal_list_item.dart';
import 'package:tennis_game_management/resources/colors.dart';

class InfoHorizontalList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InfoHorizontalListState();
}


class InfoHorizontalListState extends State<InfoHorizontalList>{
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 140, // card height
        child: PageView.builder(
          itemCount: 2,
          controller: PageController(viewportFraction: 0.9),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 1 : 1,
              child: Card(
                child: InfoHorizontalListItem(index: _index,),
                // shadowColor: BACKGROUND_GREEN_7be4952,
                shadowColor: Colors.transparent,
              ),

            );
          },
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }

}