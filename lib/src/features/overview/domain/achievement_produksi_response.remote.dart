import 'package:isar/isar.dart';
part 'achievement_produksi_response.remote.g.dart';

@collection
class AchievementProduksiResponseRemote {
  Id id = Isar.autoIncrement;
  bool? isOb;
  double? qty;
  double? dailyAchievementActual;
  double? dailyAchievementPlan;
  double? dailyAchievementActualMinus1;
  double? achievement;
  double? pty;
  double? pa;
  double? ua;
  double? remain;
  double? achievementActualMTD;
  double? achievementActualYTD;
  double? achievementPlanMTD;
  double? achievementPlanMTDProrate;
  double? achievementPlanYTD;
  double? achievementPlanYTDProrate;
  double? achievementRemainMTD;
  double? achievementRemainMTDProrate;
  double? achievementRemainYTD;
  double? achievementRemainYTDProrate;
  double? achievementMTD;
  double? achievementMTDProrate;
  double? achievementYTD;
  double? achievementYTDProrate;
  String? subLocation;

  AchievementProduksiResponseRemote(
      {this.isOb,
      this.qty,
      this.dailyAchievementActual,
      this.dailyAchievementPlan,
      this.dailyAchievementActualMinus1,
      this.achievement,
      this.pty,
      this.pa,
      this.ua,
      this.remain,
      this.achievementActualMTD,
      this.achievementActualYTD,
      this.achievementPlanMTD,
      this.achievementPlanMTDProrate,
      this.achievementPlanYTD,
      this.achievementPlanYTDProrate,
      this.achievementRemainMTD,
      this.achievementRemainMTDProrate,
      this.achievementRemainYTD,
      this.achievementRemainYTDProrate,
      this.achievementMTD,
      this.achievementMTDProrate,
      this.achievementYTD,
      this.achievementYTDProrate,
      this.subLocation});

  AchievementProduksiResponseRemote.fromJson(Map<String, dynamic> json) {
    qty = json['qty'].toDouble();
    dailyAchievementActual = json['dailyAchievementActual'].toDouble();
    dailyAchievementPlan = json['dailyAchievementPlan'].toDouble();
    dailyAchievementActualMinus1 =
        json['dailyAchievementActualMinus1'].toDouble();
    achievement = json['achievement'].toDouble();
    pty = json['pty'].toDouble();
    pa = json['pa'].toDouble();
    ua = json['ua'].toDouble();
    remain = json['remain'].toDouble();
    achievementActualMTD = json['achievementActualMTD'].toDouble();
    achievementActualYTD = json['achievementActualYTD'].toDouble();
    achievementPlanMTD = json['achievementPlanMTD'].toDouble();
    achievementPlanMTDProrate = json['achievementPlanMTDProrate'].toDouble();
    achievementPlanYTD = json['achievementPlanYTD'].toDouble();
    achievementPlanYTDProrate = json['achievementPlanYTDProrate'].toDouble();
    achievementRemainMTD = json['achievementRemainMTD'].toDouble();
    achievementRemainMTDProrate =
        json['achievementRemainMTDProrate'].toDouble();
    achievementRemainYTD = json['achievementRemainYTD'].toDouble();
    achievementRemainYTDProrate =
        json['achievementRemainYTDProrate'].toDouble();
    achievementMTD = json['achievementMTD'].toDouble();
    achievementMTDProrate = json['achievementMTDProrate'].toDouble();
    achievementYTD = json['achievementYTD'].toDouble();
    achievementYTDProrate = json['achievementYTDProrate'].toDouble();
    subLocation = json['subLocation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qty'] = qty;
    data['dailyAchievementActual'] = dailyAchievementActual;
    data['dailyAchievementPlan'] = dailyAchievementPlan;
    data['dailyAchievementActualMinus1'] = dailyAchievementActualMinus1;
    data['achievement'] = achievement;
    data['pty'] = pty;
    data['pa'] = pa;
    data['ua'] = ua;
    data['remain'] = remain;
    data['achievementActualMTD'] = achievementActualMTD;
    data['achievementActualYTD'] = achievementActualYTD;
    data['achievementPlanMTD'] = achievementPlanMTD;
    data['achievementPlanMTDProrate'] = achievementPlanMTDProrate;
    data['achievementPlanYTD'] = achievementPlanYTD;
    data['achievementPlanYTDProrate'] = achievementPlanYTDProrate;
    data['achievementRemainMTD'] = achievementRemainMTD;
    data['achievementRemainMTDProrate'] = achievementRemainMTDProrate;
    data['achievementRemainYTD'] = achievementRemainYTD;
    data['achievementRemainYTDProrate'] = achievementRemainYTDProrate;
    data['achievementMTD'] = achievementMTD;
    data['achievementMTDProrate'] = achievementMTDProrate;
    data['achievementYTD'] = achievementYTD;
    data['achievementYTDProrate'] = achievementYTDProrate;
    data['subLocation'] = subLocation;
    return data;
  }
}
