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
  static const moduleBPS = 'module_etamkawa';
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
  static const rawMissionDummy = [
            {
                "employeeMissionId": 1,
                "employeeId": 70002009,
                "missionId": 17,
                "missionStatusId": 0,
                "missionStatus": "Assigned",
                "startedDate": "2024-01-01T00:00:00",
                "dueDate": "2024-01-02T00:00:00",
                "submittedBy": null,
                "submittedDate": null,
                "completedBy": null,
                "completedDate": null,
                "chapterData": [
                    {
                        "chapterId": 1,
                        "chapterCode": "C0001",
                        "chapterName": "Chapter 1",
                        "chapterGoal": "Chapter Goal 1",
                        "competencyCode": "C0001",
                        "competencyName": "Coname",
                        "peopleCategoryCode": "PC0001",
                        "peopleCategoryName": "People Category 1",
                        "missionData": [
                            {
                                "missionId": 17,
                                "chapterId": 1,
                                "missionCode": "M0000001",
                                "missionName": "Mission Name 1",
                                "missionInstruction": "Mission Instruction 1",
                                "missionDuration": 2,
                                "missionActiveOnDay": 1,
                                "missionTypeCode": "Quiz",
                                "missionTypeName": "Quiz",
                                "missionReward": 100,
                                "taskData": [
                                    {
                                        "taskId": 52,
                                        "missionId": 17,
                                        "attachmentId": 3,
                                        "taskCode": "T0000052",
                                        "taskGroup": "G0002",
                                        "taskCaption": "Task Name 2",
                                        "taskTypeCode": "TT0002",
                                        "taskTypeName": "Task Type 2",
                                        "taskReward": 50,
                                        "answerData": [
                                            {
                                                "answerId": 77,
                                                "taskId": 52,
                                                "answerCode": "A0000077",
                                                "answerField": "Answer3",
                                                "answerCaption": "Answer 3"
                                            },
                                            {
                                                "answerId": 75,
                                                "taskId": 52,
                                                "answerCode": "A0000075",
                                                "answerField": "Answer1",
                                                "answerCaption": "Answer 1"
                                            },
                                            {
                                                "answerId": 76,
                                                "taskId": 52,
                                                "answerCode": "A0000076",
                                                "answerField": "Answer2",
                                                "answerCaption": "Answer 2"
                                            },
                                            {
                                                "answerId": 78,
                                                "taskId": 52,
                                                "answerCode": "A0000078",
                                                "answerField": "Answer4",
                                                "answerCaption": "Answer 4"
                                            },
                                            {
                                                "answerId": 79,
                                                "taskId": 52,
                                                "answerCode": "A0000079",
                                                "answerField": "Answer5",
                                                "answerCaption": "Answer 5"
                                            }
                                        ]
                                    },
                                    {
                                        "taskId": 51,
                                        "missionId": 17,
                                        "attachmentId": 3,
                                        "taskCode": "T0000051",
                                        "taskGroup": "G0002",
                                        "taskCaption": "Task Name 1",
                                        "taskTypeCode": "TT0001",
                                        "taskTypeName": "Task Type 1",
                                        "taskReward": 50,
                                        "answerData": [
                                            {
                                                "answerId": 74,
                                                "taskId": 51,
                                                "answerCode": "A0000074",
                                                "answerField": "Answer5",
                                                "answerCaption": "Answer 5"
                                            },
                                            {
                                                "answerId": 73,
                                                "taskId": 51,
                                                "answerCode": "A0000073",
                                                "answerField": "Answer4",
                                                "answerCaption": "Answer 4"
                                            },
                                            {
                                                "answerId": 70,
                                                "taskId": 51,
                                                "answerCode": "A0000070",
                                                "answerField": "Answer1",
                                                "answerCaption": "Answer 1"
                                            },
                                            {
                                                "answerId": 71,
                                                "taskId": 51,
                                                "answerCode": "A0000071",
                                                "answerField": "Answer2",
                                                "answerCaption": "Answer 2"
                                            },
                                            {
                                                "answerId": 72,
                                                "taskId": 51,
                                                "answerCode": "A0000072",
                                                "answerField": "Answer3",
                                                "answerCaption": "Answer 3"
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ];
  static const htmlNews =
      "<p><strong><span style=\"font-family: 'Verdana',sans-serif; color: #333333;\">BUMA Rampungkan Penerbitan Obligasi I</span></strong><span style=\"font-family: 'Verdana',sans-serif; color: #333333;\">&nbsp;<strong><span style=\"font-family: 'Verdana',sans-serif;\">Tahun&nbsp;2023</span></strong></span></p> <p style=\"line-height: 14.25pt;\"><span style=\"font-size: 8.0pt; font-family: 'Verdana',sans-serif; color: black;\">Selasa, 16 Jan 2026</span></p> <p style=\"line-height: 14.25pt;\"><span style=\"font-family: 'Verdana',sans-serif; color: #333333;\">Torem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus.</span></p> <p style=\"line-height: 14.25pt; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"font-family: 'Verdana',sans-serif; color: #333333;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam.</span></p>";
}
