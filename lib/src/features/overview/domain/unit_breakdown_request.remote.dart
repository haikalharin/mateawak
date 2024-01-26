class UnitBreakdownRequestRemote {
  int? _uid;
  String? _adAccount;
  String? _material;
  List<String>? _areas;

  int? _siteId;
  int? _roleId;

  UnitBreakdownRequestRemote({
    int? uid,
    String? adAccount,
    String? material,
    List<String>? areas,
    int? siteId,
    int? roleId,
  }) {
    if (uid != null) {
      _uid = uid;
    }
    if (adAccount != null) {
      _adAccount = adAccount;
    }
    if (material != null) {
      _material = material;
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

  int? get uid => _uid;
  set uid(int? uid) => _uid = uid;
  String? get adAccount => _adAccount;
  set adAccount(String? adAccount) => _adAccount = adAccount;
  String? get material => _material;
  set material(String? material) => _material = material;
  List<String>? get areas => _areas;
  set areas(List<String>? areas) => _areas = areas;

  int? get siteId => _siteId;
  set siteId(int? siteId) => _siteId = siteId;
  int? get roleId => _roleId;
  set roleId(int? roleId) => _roleId = roleId;

  UnitBreakdownRequestRemote.fromJson(Map<String, dynamic> json) {
    _uid = json['uid'];
    _adAccount = json['adAccount'];
    _material = json['material'];
    _areas = json['areas'].cast<String>();

    _siteId = json['siteId'];
    _roleId = json['roleId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = _uid;
    data['adAccount'] = _adAccount;
    data['material'] = _material;
    data['areas'] = _areas;

    data['siteId'] = _siteId;
    data['roleId'] = _roleId;

    return data;
  }
}
