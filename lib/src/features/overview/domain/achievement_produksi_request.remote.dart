class AchievementProduksiRequestRemote {
  String? _material;
  String? _adAccount;
  int? _uid;

  int? _siteId;
  int? _roleId;
  List<String>? _areas;

  AchievementProduksiRequestRemote(
      {String? material,
      String? adAccount,
      int? siteId,
      int? roleId,
      int? uid,
      List<String>? areas}) {
    if (material != null) {
      _material = material;
    }
    if (adAccount != null) {
      _adAccount = adAccount;
    }
    if (uid != null) {
      _uid = uid;
    }
    if (areas != null) {
      _areas = areas;
    }

    if (siteId != null) {
      _siteId = siteId;
    }

    if (roleId != null) {
      _roleId = roleId;
    }
  }

  String? get material => _material;
  set material(String? material) => _material = material;
  String? get adAccount => _adAccount;
  set adAccount(String? adAccount) => _adAccount = adAccount;
  int? get uid => _uid;
  set uid(int? uid) => _uid = uid;
  List<String>? get areas => _areas;
  set areas(List<String>? areas) => _areas = areas;

  int? get siteId => _siteId;
  set siteId(int? siteId) => _siteId = siteId;
  int? get roleId => _roleId;
  set roleId(int? roleId) => _roleId = roleId;

  AchievementProduksiRequestRemote.fromJson(Map<String, dynamic> json) {
    _material = json['material'];
    _adAccount = json['adAccount'];
    _uid = json['uid'];
    _areas = json['areas'].cast<String>();

    _siteId = json['siteId'];
    _roleId = json['roleId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['material'] = _material;
    data['adAccount'] = _adAccount;
    data['uid'] = _uid;
    data['areas'] = _areas;

    data['siteId'] = _siteId;
    data['roleId'] = _roleId;
    return data;
  }
}
