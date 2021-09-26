import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/board/unit/divider/ranking_divider.dart';


import '../list_item/notice_board_list_item.dart';


class NoticeBoardList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      // Components
      child: Column(
        children: [

          // BoardDivider(),
          NoticeBoardListItem(
            category : "",
            title: "TGM 업데이트 버전2",
            content: "서울특별시 성북동에서 운동하실 남자2분 구합니다. 6시에 같이 저녁 간단하게 식사하고 저녁 8-10시 사이에 경기를 하고자 합니다. 관심있으신분 연락바랍니다.",
            time: "3분전",
          ),

          BoardDivider(),

          NoticeBoardListItem(
            category : "",
            title: "처음 가입시 매너 지킴이",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "3분전",
            isFolder: true,
          ),

          BoardDivider(),

          NoticeBoardListItem(
            category : "",
            title: "TGM 게임 규칙",
            content: "테니스 라켓 보통 xx 마켓에서 샀는데 좀 쓰다보니 불편하더라고요,, 그래서 이번에 바꾸기로 했습니다.",
            time: "3시간전",
          ),

          BoardDivider(),

          NoticeBoardListItem(
            category : "",
            title: "자주 묻는 질문",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "1일전",
          ),

          BoardDivider(),

          NoticeBoardListItem(
            category : "",
            title: "새로운 플레어를 만나고 싶을 때",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "7월 10일",
          ),
          BoardDivider(),

          NoticeBoardListItem(
            category : "궁금해요",
            title: "경기 매너 우리 같이 지켜요",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "7월 10일",
          ),
          BoardDivider(),

          NoticeBoardListItem(
            category : "궁금해요",
            title: "일상 공유 이렇게 해봐요",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "7월 10일",
          ),
          BoardDivider(),

          NoticeBoardListItem(
            category : "궁금해요",
            title: "국제 대회 기간 안내",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "7월 10일",
          ),
          BoardDivider(),

          NoticeBoardListItem(
            category : "궁금해요",
            title: "이번에 처음 가입합니다!",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "7월 10일",
          ),
          BoardDivider(),

          NoticeBoardListItem(
            category : "궁금해요",
            title: "이번에 처음 가입합니다!",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "7월 10일",
          ),
          BoardDivider(),

          NoticeBoardListItem(
            category : "궁금해요",
            title: "이번에 처음 가입합니다!",
            content: "안녕하세요 이번에 처음 가입을 하였습니다. 테니스 앱 중에서 이게 젤 유명하다고 하더라구요 ㅎㅎ 다들 반가워요",
            time: "7월 10일",
          ),
          BoardDivider(),

          
        ],
      ),

      // Styling
      margin: EdgeInsets.only(left: 12, right: 12, top: 8),
      padding: EdgeInsets.only(top: 2, bottom: 2, left: 4, right: 4,),
      width: double.infinity,

    );
  }
}