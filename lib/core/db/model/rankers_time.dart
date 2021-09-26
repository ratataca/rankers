class RankersTime{
  String rankersTime = "";

  RankersTime(DateTime rankersTime){
    // 2021-09-07 16:32:04
    this.rankersTime = rankersTime.toString().substring(0, 19);
  }

  printRankersTime(){return this.rankersTime;}

  stringDate2int(){
    var t = this.rankersTime.toString().substring(0, 10);
    int pick = int.parse(t.substring(0,4) + t.substring(5,7) + t.substring(8,10));
    return pick;
  }

  printRankersTimeFormat(){
    // 2021. 09. 07.
    var formatTime = this.rankersTime.substring(0, 4) + ". " + this.rankersTime.substring(5, 7) + ". " + this.rankersTime.substring(8, 10) + ". ";
    return formatTime;
  }

}