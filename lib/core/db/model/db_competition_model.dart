class DbCompetitionModel{

  // region - Table 이름과 생성 쿼리
  static String NAME = "competition";
  static String TABLE_CREATION_QUERY ='''CREATE TABLE $NAME (
        idx INTEGER PRIMARY KEY AUTOINCREMENT,
        competitionId TEXT,
        competitionName TEXT,   
        participationMaxNum INTEGER,
        participationNum INTEGER,
        mode TEXT,
        place TEXT,
        uploadDate TEXT,
        registrationDateStart TEXT,
        registrationDateEnd TEXT,
        competitionDateStart TEXT,
        competitionDateEnd TEXT,
        firstTieCondition TEXT,
        secondTieCondition TEXT,
        thirdTieCondition TEXT,
        description TEXT,
        writerId TEXT,
        nickname TEXT,
        state TEXT
      );
    ''';
  // endregion
  // region - 생성자 및 매개변수
  // int idx=-1;
  String competitionId="";
  String competitionName="";
  int participationMaxNum=0;
  int participationNum=0;
  String mode="double";
  String place="";
  String uploadDate="";

  String registrationDateStart="";
  String registrationDateEnd="";
  String competitionDateStart="";
  String competitionDateEnd="";

  String firstTieCondition="";
  String secondTieCondition="";
  String thirdTieCondition="";

  String description="";

  String writerId="";
  String nickname="";
  String state="";


  DbCompetitionModel({
    // int idx=-1,
    String competitionId="",
    String competitionName="",
    int participationMaxNum=0,
    int participationNum=0,
    String mode="double",
    String place="",
    String uploadDate="",

    String registrationDateStart="",
    String registrationDateEnd="",
    String competitionDateStart="",
    String competitionDateEnd="",

    String firstTieCondition="",
    String secondTieCondition="",
    String thirdTieCondition="",

    String description="",

    String writerId="",
    String nickname="",
    String state=""
  }){
    // this.idx=idx;
    this.competitionId=competitionId;
    this.competitionName=competitionName;
    this.participationMaxNum=participationMaxNum;
    this.participationNum=participationNum;
    this.mode=mode;
    this.place=place;
    this.uploadDate=uploadDate;
    this.registrationDateStart=registrationDateStart;
    this.registrationDateEnd=registrationDateEnd;
    this.competitionDateStart=competitionDateStart;
    this.competitionDateEnd=competitionDateEnd;

    this.firstTieCondition=firstTieCondition;
    this.secondTieCondition=secondTieCondition;
    this.thirdTieCondition=thirdTieCondition;
    this.description=description;
    this.writerId=writerId;
    this.nickname=nickname;
    this.state=state;
  }
  // endregion

  // static Map<String, dynamic> Select5RecentRecord(){
  //   return {
  //     'where' : null,
  //     'whereArgs' : null,
  //     'orderBy' : "idx DESC",
  //     'limit' : 5
  //   };
  // }

  static GET_INFO(data){
    // region - 생략 가능한 것 같음
    // var idx = data["idx"];
    // var nickname = data["nickname"];
    // var mode = data["mode"];
    // var date = data["date"];
    // var place = data["place"];
    // var partner = data["partner"];
    // var opponent1 = data["opponent1"];
    // var opponent2 = data["opponent2"];
    // var myScore = data["myScore"];
    // var opScore = data["opScore"];
    // var myTiebreak = data["myTiebreak"];
    // var opTiebreak = data["opTiebreak"];
    // endregion
    return DbCompetitionModel(
      // idx: data["idx"],
        competitionId: data["competitionId"],
        competitionName: data["competitionName"],
        participationMaxNum: data["participationMaxNum"],
        participationNum: data["participationNum"],
        mode: data["mode"],
        place: data["place"],
        uploadDate: data["uploadDate"],
        registrationDateStart: data["registrationDateStart"],
        registrationDateEnd: data["registrationDateEnd"],
        competitionDateStart: data["competitionDateStart"],
        competitionDateEnd: data["competitionDateEnd"],
        firstTieCondition: data["firstTieCondition"],
        secondTieCondition: data["secondTieCondition"],
        thirdTieCondition: data["thirdTieCondition"],
        description: data["description"],
        writerId: data["writerId"],
        nickname: data["nickname"],
        state: data["state"]
    );
  }

  Map<String, dynamic> toMap() {
    return {
      // 'idx': idx,
      'competitionId': competitionId,
      'competitionName': competitionName,
      'participationMaxNum': participationMaxNum,
      'participationNum': participationNum,
      'mode': mode,
      'place': place,
      'uploadDate': uploadDate,
      'registrationDateStart': registrationDateStart,
      'registrationDateEnd': registrationDateEnd,
      'competitionDateStart': competitionDateStart,
      'competitionDateEnd': competitionDateEnd,
      'firstTieCondition': firstTieCondition,
      'secondTieCondition': secondTieCondition,
      'thirdTieCondition': thirdTieCondition,
      'description': description,
      'writerId': writerId,
      'nickname': nickname,
      'state': state,
    };

  }
}