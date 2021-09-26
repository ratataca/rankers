class DbRecordModel{

  // region - Table 이름과 생성 쿼리
  static String NAME = "records";
  static String TABLE_CREATION_QUERY ='''CREATE TABLE $NAME (
        idx INTEGER PRIMARY KEY AUTOINCREMENT,
        nickname TEXT,
        mode TEXT,
        date TEXT,
        place TEXT,
        partner1 TEXT,
        partner2 TEXT,
        opponent1 TEXT,
        opponent2 TEXT,
        myScore INTEGER,
        opScore INTEGER,
        myTiebreak INTEGER,
        opTiebreak INTEGER,
        isCertification INTEGER, 
        isCompetition INTEGER,
        competitionTitle TEXT
      );
    ''';
  // endregion
  // region - 생성자 및 매개변수
  // int idx=-1;
  String nickname="";
  String mode="double";
  String date="";
  String place="";
  String partner1="";
  String partner2="";
  String opponent1="";
  String opponent2="";

  int myScore=-1;
  int opScore=-1;
  int myTiebreak=-1;
  int opTiebreak=-1;

  int isCertification=0;
  int isCompetition=0;
  String competitionTitle="";

  DbRecordModel({
    // int idx=-1,
    String nickname="", //기록하는 사람
    String mode="double",
    String date="",
    String place="",
    String partner1="",
    String partner2="",
    String opponent1="",
    String opponent2="",
    int myScore=-1,
    int opScore=-1,
    int myTiebreak=-1,
    int opTiebreak=-1,

    int isCertification=0,
    int isCompetition=0,
    String competitionTitle="",
  }){
    // this.idx=idx;
    this.nickname=nickname;
    this.mode=mode;
    this.date=date;
    this.place=place;
    this.partner1=partner1;
    this.partner2=partner2;
    this.opponent1=opponent1;
    this.opponent2=opponent2;
    this.myScore=myScore;
    this.opScore=opScore;
    this.myTiebreak=myTiebreak;
    this.opTiebreak=opTiebreak;

    this.isCertification=isCertification;
    this.isCompetition=isCompetition;
    this.competitionTitle=competitionTitle;
  }
  // endregion

  static Map<String, dynamic> Select5RecentRecord(){
    return {
      'where' : null,
      'whereArgs' : null,
      'orderBy' : "idx DESC",
      'limit' : 5
    };
  }

  static GET_INFO(data){
    // region - 생략 가능한 것 같음
    var idx = data["idx"];
    var nickname = data["nickname"];
    var mode = data["mode"];
    var date = data["date"];
    var place = data["place"];
    var partner = data["partner"];
    var opponent1 = data["opponent1"];
    var opponent2 = data["opponent2"];
    var myScore = data["myScore"];
    var opScore = data["opScore"];
    var myTiebreak = data["myTiebreak"];
    var opTiebreak = data["opTiebreak"];
    // endregion
    return DbRecordModel(
        // idx: data["idx"],
        nickname: data["nickname"],
        mode: data["mode"],
        date: data["date"],
        place: data["place"],
        partner1: data["partner1"],
        partner2: data["partner2"],
        opponent1: data["opponent1"],
        opponent2: data["opponent2"],
        myScore: data["myScore"],
        opScore: data["opScore"],
        myTiebreak: data["myTiebreak"],
        opTiebreak: data["opTiebreak"],
        isCertification: data["isCertification"],
        isCompetition: data["isCompetition"],
        competitionTitle: data["competitionTitle"]
    );
  }

  Map<String, dynamic> toMap() {
    return {
      // 'idx': idx,
      'nickname': nickname,
      'mode': mode,
      'date': date,
      'place': place,
      'partner1': partner1,
      'partner2': partner2,
      'opponent1': opponent1,
      'opponent2': opponent2,
      'myScore': myScore,
      'opScore': opScore,
      'myTiebreak': myTiebreak,
      'opTiebreak': opTiebreak,
      'isCertification': isCertification,
      'isCompetition': isCompetition,
      'competitionTitle': competitionTitle,
    };

  }




}