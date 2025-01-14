import '../features/telematry/domain/user_infos_response.remote.dart';

class Constant {
  static const baseUrl = 'baseUrlKey';
  static const tokenApi = 'tokenApiKey';
  static const apiVer = 'ver=v1';
  static const etamkawaIsarInstance = 'etamkawa-isar-instance';
  static const feature = 'BPS';

  static const defaultUnParseErrorMsg = "Ooops.. Something went wrong";
  static const noInternetMsg = "No internet Connection";
  static const requestCancelled = "Request Cancelled";

  static const ob = "OB";
  static const cm = "CM";
  static const obgen = "OB-GEN";
  static const mudgen = 'MUD-GEN';

  static const all = "ALL";
  static const top = "TOP";
  static const middle = "MIDDLE";
  static const bottom = "BOTTOM";

  static const readiness = "READINESS";
  static const production = "PRODUCTION";
  static const rca = "RCA";
  static const performance = "PERFORMANCE";

  static const siteLevel = 'Site Level';
  static const equipment = 'Equipment';
  static const model = 'MODEL';
  static const kelas = 'CLASS';

  static const actual = 'Actual';
  static const plan = 'plan';

  static const muslim = 'MUSLIM';
  static const nonMuslim = 'NON MUSLIM';
  static const islam = 'ISLAM';

  static const loader = 'LOADER';
  static const hauler = 'HAULER';

  static const mud = 'Mud';
  static const nonPerfect = 'Non Perfect';
  static const perfect = 'Perfect';

  static const day = 'DAY';
  static const week = 'WEEK';
  static const month = 'MONTH';
  static const year = 'YEAR';

  static const rain = 'RAIN';
  static const slippery = 'SLIPPERY';
  static const fog = 'FOG';
  static const dusty = 'DUSTY';
  static const safety = 'SAFETY ACTIVITY';

  static const delay = 'DELAY';
  static const standby = 'STANDBY';

  static const liveFilterAll = 'Semua Unit';
  static const liveFilterLoader = 'Loader';
  static const liveFilterHauler = 'Hauler';

  static const liveUnitStatusReady = 'Running';
  static const liveUnitStatusDelay = 'Delay';
  static const liveUnitStatusStandby = 'Standby';
  static const liveUnitStatusBD = 'Breakdown';

  static const liveUnitCategoryAll = 'Semua Kategori';
  static const liveUnitCategoryClassCategory = 'Kategori Kelas';
  static const liveUnitCategoryClass = 'Kelas';
  static const liveUnitCategoryType = 'Tipe';
  static const liveUnitCategoryUnit = 'Unit';

  static const liveFilterGenObAll = 'ALL';
  static const liveFilterGenObMdl = 'mud_liquid';
  static const liveFilterGenObMds = 'mud_solid';
  static const liveFilterGenObInPit = 'overburden';
  static const liveFilterGenObPfc = 'parting_fine_coal';
  static const liveFilterGenObSoil = 'soil';

  static const qty = 'QTY';
  static const pa = 'PA';
  static const ua = 'UA';
  static const pty = 'PTY';

  // Pareto UA Loss Type
  static const lossProduction = 'Loss Production';
  static const lossTime = 'Loss Time';

  // PTY Reason Loss Type
  static const ptyLossProd = 'LOSS_PROD';
  static const ptyLossFreq = 'LOSS_FREQ';

  // PTY Reason Category
  static const ptyEP = 'EQUIPMENT PROBLEM';
  static const ptyFE = 'FRONT ENVIRONMENT';
  static const ptyLM = 'LOADING METHOD';
  static const ptyGP = 'GENERAL PROBLEM';
  static const ptyDE = 'DISPOSAL ENVIRONMENT';
  static const ptyMP = 'MATERIAL PROBLEM';
  static const ptyOP = 'OPERATOR PROBLEM';
  static const ptyRE = 'ROAD ENVIRONMENT';
  static const ptyTP = 'TRUCK PROBLEM';

  static const paretoDelay = 'DELAY OPERATING';
  static const paretoInbudget = 'INBUDGET';
  static const paretoNonBudget = 'NON BUDGET';
  static const paretoInplan = 'INPLAN';
  static const paretoUnplan = 'UNPLAN';

  static const notificationGeneral = 'general';
  static const notificationSystem = 'system';

  static const notificationToday = 'TODAY';
  static const notificationYesterday = 'YESTERDAY';
  static const notificationNeitherTodayOrYesterday = 'NODAY';

  static const notificationFilterProduksi = 'Produksi';
  static const notificationFilterUnit = 'Unit';
  static const notificationFilterMyEval = 'My Evaluation';

  static const tempUrlFeedback =
      'https://docs.google.com/forms/d/e/1FAIpQLSf0X5exhVrGjYvgEOsl3MSbEe3bspfhQL1IuimGOo3PMoMYzw/viewform?usp=pp_url';

  //background service
  static const bgMainNavClose = 'mainNav-close';
  static const bgMainNavInit = 'mainNav-init';
  static const bgMissionInit = 'mission-init';
  static const bgSendAnswer = 'send-answer';
  static const bgMainNavStopServiceManual = 'stop-service-manual';

  static const dateSelectorModeDari = 'Dari';
  static const dateSelectorModeKe = 'Ke';

  static const fullscreenTitle = 'title';
  static const fullscreenTrailing = 'trailing';
  static const fullscreenChild = 'child';
  static const fullscreenOnRefresh = 'onRefresh';
  static const listTask = 'list-task';
  static const gamification = 'gamification';

  static const menuOverview = 'Menu Overview';
  static const menuLive = 'Menu Live';
  static const menuSitePerform = 'Menu Site Perform';
  static const menuLineupOperator = 'Menu Lineup Operator';
  static const menuLineupSpv = 'Menu Lineup Spv';
  static const String testToken = 'testToken';

  static final Map<String, RoleAccess> fullListFeature = {
    //BPS
    'overview': RoleAccess(
        tabId: 158, tabName: 'View Achievement Produksi BPS', moduleId: 62),
    'live_readiness':
        RoleAccess(tabId: 159, tabName: 'View Summary BPS', moduleId: 63),
    'live_prod':
        RoleAccess(tabId: 160, tabName: 'View Produksi BPS', moduleId: 63),
    'live_rca': RoleAccess(tabId: 161, tabName: 'View RCA BPS', moduleId: 63),
    'live_performance':
        RoleAccess(tabId: 185, tabName: 'View Performance BPS', moduleId: 63),
    'siteperform_day': RoleAccess(
        tabId: 173, tabName: 'View Site Performance Daily BPS', moduleId: 64),
    'siteperform_week': RoleAccess(
        tabId: 174, tabName: 'View Site Performance Weekly BPS', moduleId: 64),
    'siteperform_month': RoleAccess(
        tabId: 175, tabName: 'View Site Performance Monthly BPS', moduleId: 64),
    'siteperform_year': RoleAccess(
        tabId: 176, tabName: 'View Site Performance Yearly BPS', moduleId: 64),
    'siteperform_equip_day': RoleAccess(
        tabId: 177,
        tabName: 'View Equipment Performance Daily BPS',
        moduleId: 64),
    'siteperform_equip_week': RoleAccess(
        tabId: 178,
        tabName: 'View Equipment Performance Weekly BPS',
        moduleId: 64),
    'siteperform_equip_month': RoleAccess(
        tabId: 179,
        tabName: 'View Equipment Performance Monthly BPS',
        moduleId: 64),
    'siteperform_equip_year': RoleAccess(
        tabId: 180,
        tabName: 'View Equipment Performance Yearly BPS',
        moduleId: 64),

    //LINEUP
    'lineup_operator':
        RoleAccess(tabId: 164, tabName: 'View Lineup BPS', moduleId: 68),

    'view_dashboard':
        RoleAccess(tabId: 167, tabName: 'View Dashboard BPS', moduleId: 65),
    'view_reporting':
        RoleAccess(tabId: 170, tabName: 'View Reporting BPS', moduleId: 65),
    'view_readiness': RoleAccess(
        tabId: 165, tabName: 'View Readiness Operator BPS', moduleId: 65),
    'maintain_readiness': RoleAccess(
        tabId: 166, tabName: 'Maintain Readiness Operator BPS', moduleId: 65),
    'view_master':
        RoleAccess(tabId: 168, tabName: 'View Master BPS', moduleId: 65),
    'upload_master':
        RoleAccess(tabId: 169, tabName: 'Upload Master BPS', moduleId: 65),
  };

  ///Module Lineup ----
  static const moduleEtamkawa = 'module_etamkawa';
  static const izinSakit = "Sakit";
  static const izinKarantina = "Karantina";
  static const izinKeperluanPribadi = "Keperluan Pribadi";
  static const izinDispensasi = "Dispensasi";
  static const izinLainnya = "Lainnya";

  static const dateSelectorModeSampai = 'Sampai';

  static const formTypeRadio = 'radio';
  static const formTypeTextField = 'textfield';
  static const formTypeTime = 'time';
  static const formTimeTypeDateTime = 'datetime';
  static const formTimeTypeTime = 'time';
  static const formTimeTypeTimeRange = 'timerange';

  static const typeBekerja = 'BEKERJA';
  static const typeTidakBekerja = 'TIDAK BEKERJA';

  static const statusFailed = 'Failed';
  static const statusWaiting = 'Waiting';
  static const statusNotWorking = 'Not Working';

  static const chartTotalEquipment = "SP_TOTAL_EQUIPMENT";
  static const chartLogin = "SP_TOTAL_EQUIPMENT_LOGIN";
  static const chartEquipmentStatus = "SP_TOTAL_EQUIPMENT_STATUS";
  static const chartOperatorType = "SP_TOTAL_OPERATOR_TYPE";
  static const chartFingerprintDaily = "SP_TOTAL_FINGERPRINT";

  static const lineUpDashboard = "Dashboard";
  static const lineUpReport = "Report";
  static const lineUpReadiness = "Readiness";
  static const lineUpMasterIntegrasi = "Master Integrasi";
  static const lineUpMasterUploader = "Master Uploader";

  static const readinessTidakBekerja = "TIDAK BEKERJA";
}

class EtamKawaUploadConstant {
  static const int maxSizeDefault = 2;
  static const List<String> fileTypeDefault = ['doc', 'jpg', 'jpeg', 'heic','heif', 'png', 'gif', 'pdf'];
  static const String fileTypeTextDefault = '.jpg, .jpeg, .png, .heic, .pdf, .doc,';
  static const List<String> fileTypeImage = ['jpg', 'jpeg', 'png','heic','heif'];
  static const List<String> fileTypeImageAndroid = ['jpg', 'jpeg', 'png'];
  static const String fileTypeTextImage = '.heif, .jpg, .jpeg, .png';
  static const String fileTypeTextImageAndroid = '.jpg, .jpeg, .png';
}