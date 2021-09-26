import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/list/legue_doing_list.dart';


class DoingLeague extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => DoingLeagueState();
}

class DoingLeagueState extends State<DoingLeague>{

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        HorizontalDivider(),

        Expanded(
          flex: 1,
          child: Container(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Column(
                  children: [

                    LegueDoingList([1, 2, 3]),
                    EmptyPlace()
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

}