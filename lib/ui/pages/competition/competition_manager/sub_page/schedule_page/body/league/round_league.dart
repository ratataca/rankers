import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/list/schedule_team_list.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/list/schedule_user_list.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/unit/title/schedule_title.dart';

class RoundLeague extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RoundLeagueState();
}

class RoundLeagueState extends State<RoundLeague>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        HorizontalDivider(),

        Expanded(
          flex: 1,
          child: Row(
            children: [

              Flexible(
                  child: Container(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        constraints: BoxConstraints(
                          minHeight: double.maxFinite
                        ),

                        child: Column(
                          children: [
                            // ScheduleTitle(title: "배정인원"),
                            ScheduleTeamList([1, 1, 1, 1, 1, 1]),
                            EmptyPlace()
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                    ),
                    color: Color.fromARGB(100, 240, 240, 240),
                  ),
                  flex : 3
              ),
              Container(
                width: 1,
                color: Color.fromARGB(100, 225, 225, 225),
              ),


              Flexible(
                  child: Container(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          ScheduleTitle(title: "편성대상"),
                          HorizontalDivider(),

                          ScheduleUserList([1, 1, 1, 1, 1, 1, 1], false),

                          SizedBox(height: 30,),

                          ScheduleTitle(title: "편성완료"),
                          HorizontalDivider(),
                          ScheduleUserList([1, 1, 1, 1], true),
                          EmptyPlace()
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    ),
                  ),
                  flex : 7
              ),
            ],
          ),
        )
      ],
    );
  }
}