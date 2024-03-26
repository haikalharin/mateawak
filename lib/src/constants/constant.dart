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
  static const rawMissionDummy = [
    {
      "employeeMissionId": 5,
      "employeeId": 70002009,
      "missionId": 21,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2024-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-03-18T06:32:43.167",
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
              "missionId": 21,
              "chapterId": 1,
              "missionCode": "M0000021",
              "missionName": "Mission Name 2",
              "missionInstruction": "Mission Instruction 1",
              "missionDuration": 2,
              "missionActiveOnDay": 5,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 100,
              "taskData": [
                {
                  "taskId": 57,
                  "missionId": 21,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=Ip89HeF5M6cqnZM60k2HTjQSkacsWtve6itDZdJMi9o%3D",
                  "taskCode": "T0000057",
                  "taskGroup": "G0002",
                  "taskCaption": "Task Name 2",
                  "taskTypeCode": "MCQ",
                  "taskTypeName": "Multiple Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 99,
                      "taskId": 57,
                      "answerCode": "A0000099",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    },
                    {
                      "answerId": 95,
                      "taskId": 57,
                      "answerCode": "A0000095",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    },
                    {
                      "answerId": 96,
                      "taskId": 57,
                      "answerCode": "A0000096",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 98,
                      "taskId": 57,
                      "answerCode": "A0000098",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    },
                    {
                      "answerId": 97,
                      "taskId": 57,
                      "answerCode": "A0000097",
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
    },
    {
      "employeeMissionId": 2,
      "employeeId": 70002009,
      "missionId": 18,
      "missionStatusCode": 0,
      "missionStatus": "Complete",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2024-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-03-19T02:25:09.577",
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
              "missionId": 18,
              "chapterId": 1,
              "missionCode": "M0000018",
              "missionName": "Mission Name 1",
              "missionInstruction": "Mission Instruction 1",
              "missionDuration": 2,
              "missionActiveOnDay": 5,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 100,
              "taskData": [
                {
                  "taskId": 58,
                  "missionId": 18,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=Ip89HeF5M6cqnZM60k2HTjQSkacsWtve6itDZdJMi9o%3D",
                  "taskCode": "T0000058",
                  "taskGroup": "G0002",
                  "taskCaption": "Task Name 1",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 105,
                      "taskId": 58,
                      "answerCode": "A0000105",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    },
                    {
                      "answerId": 106,
                      "taskId": 58,
                      "answerCode": "A0000106",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 107,
                      "taskId": 58,
                      "answerCode": "A0000107",
                      "answerField": "Answer3",
                      "answerCaption": "Answer 3"
                    },
                    {
                      "answerId": 109,
                      "taskId": 58,
                      "answerCode": "A0000109",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    },
                    {
                      "answerId": 108,
                      "taskId": 58,
                      "answerCode": "A0000108",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    }
                  ]
                },
                {
                  "taskId": 59,
                  "missionId": 18,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=Ip89HeF5M6cqnZM60k2HTjQSkacsWtve6itDZdJMi9o%3D",
                  "taskCode": "T0000059",
                  "taskGroup": "G0002",
                  "taskCaption": "Task Name 2",
                  "taskTypeCode": "MCQ",
                  "taskTypeName": "Multiple Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 112,
                      "taskId": 59,
                      "answerCode": "A0000112",
                      "answerField": "Answer3",
                      "answerCaption": "Answer 3"
                    },
                    {
                      "answerId": 110,
                      "taskId": 59,
                      "answerCode": "A0000110",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    },
                    {
                      "answerId": 111,
                      "taskId": 59,
                      "answerCode": "A0000111",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 114,
                      "taskId": 59,
                      "answerCode": "A0000114",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    },
                    {
                      "answerId": 113,
                      "taskId": 59,
                      "answerCode": "A0000113",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "employeeMissionId": 3,
      "employeeId": 70002009,
      "missionId": 19,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2024-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-03-18T06:32:43.167",
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
              "missionId": 19,
              "chapterId": 1,
              "missionCode": "M0000019",
              "missionName": "Mission Name 1",
              "missionInstruction": "Mission Instruction 1",
              "missionDuration": 2,
              "missionActiveOnDay": 10,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 100,
              "taskData": [
                {
                  "taskId": 60,
                  "missionId": 19,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=Ip89HeF5M6cqnZM60k2HTjQSkacsWtve6itDZdJMi9o%3D",
                  "taskCode": "T0000060",
                  "taskGroup": "G0002",
                  "taskCaption": "Task Name 1",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 115,
                      "taskId": 60,
                      "answerCode": "A0000115",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    },
                    {
                      "answerId": 116,
                      "taskId": 60,
                      "answerCode": "A0000116",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 117,
                      "taskId": 60,
                      "answerCode": "A0000117",
                      "answerField": "Answer3",
                      "answerCaption": "Answer 3"
                    },
                    {
                      "answerId": 118,
                      "taskId": 60,
                      "answerCode": "A0000118",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    },
                    {
                      "answerId": 119,
                      "taskId": 60,
                      "answerCode": "A0000119",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    }
                  ]
                },
                {
                  "taskId": 61,
                  "missionId": 19,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=Ip89HeF5M6cqnZM60k2HTjQSkacsWtve6itDZdJMi9o%3D",
                  "taskCode": "T0000061",
                  "taskGroup": "G0002",
                  "taskCaption": "Task Name 2",
                  "taskTypeCode": "MCQ",
                  "taskTypeName": "Multiple Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 122,
                      "taskId": 61,
                      "answerCode": "A0000122",
                      "answerField": "Answer3",
                      "answerCaption": "Answer 3"
                    },
                    {
                      "answerId": 120,
                      "taskId": 61,
                      "answerCode": "A0000120",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    },
                    {
                      "answerId": 121,
                      "taskId": 61,
                      "answerCode": "A0000121",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 123,
                      "taskId": 61,
                      "answerCode": "A0000123",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    },
                    {
                      "answerId": 124,
                      "taskId": 61,
                      "answerCode": "A0000124",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "employeeMissionId": 1,
      "employeeId": 70002009,
      "missionId": 17,
      "missionStatusCode": 0,
      "missionStatus": "Complete",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2024-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-03-18T06:32:43.167",
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
                  "taskId": 78,
                  "missionId": 17,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=Ip89HeF5M6cqnZM60k2HTjQSkacsWtve6itDZdJMi9o%3D",
                  "taskCode": "T0000078",
                  "taskGroup": "G0002",
                  "taskCaption": "Task Name 2",
                  "taskTypeCode": "MCQ",
                  "taskTypeName": "Multiple Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 182,
                      "taskId": 78,
                      "answerCode": "A0000182",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 185,
                      "taskId": 78,
                      "answerCode": "A0000185",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    },
                    {
                      "answerId": 184,
                      "taskId": 78,
                      "answerCode": "A0000184",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    },
                    {
                      "answerId": 181,
                      "taskId": 78,
                      "answerCode": "A0000181",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    },
                    {
                      "answerId": 183,
                      "taskId": 78,
                      "answerCode": "A0000183",
                      "answerField": "Answer3",
                      "answerCaption": "Answer 3"
                    }
                  ]
                },
                {
                  "taskId": 77,
                  "missionId": 17,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=Ip89HeF5M6cqnZM60k2HTjQSkacsWtve6itDZdJMi9o%3D",
                  "taskCode": "T0000077",
                  "taskGroup": "G0002",
                  "taskCaption": "Task Name 1",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 178,
                      "taskId": 77,
                      "answerCode": "A0000178",
                      "answerField": "Answer3",
                      "answerCaption": "Answer 3"
                    },
                    {
                      "answerId": 179,
                      "taskId": 77,
                      "answerCode": "A0000179",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    },
                    {
                      "answerId": 177,
                      "taskId": 77,
                      "answerCode": "A0000177",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 180,
                      "taskId": 77,
                      "answerCode": "A0000180",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    },
                    {
                      "answerId": 176,
                      "taskId": 77,
                      "answerCode": "A0000176",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "employeeMissionId": 4,
      "employeeId": 70002009,
      "missionId": 20,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2024-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-03-18T06:32:43.167",
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
              "missionId": 20,
              "chapterId": 1,
              "missionCode": "M0000020",
              "missionName": "Mission Name 1",
              "missionInstruction": "Mission Instruction 1",
              "missionDuration": 2,
              "missionActiveOnDay": 5,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 100,
              "taskData": [
                {
                  "taskId": 92,
                  "missionId": 20,
                  "attachmentId": 1,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-24216.jpg?sv=2023-11-03&st=2024-03-22T13%3A55%3A44Z&se=2024-03-23T13%3A55%3A44Z&sr=b&sp=r&sig=UXnQL9ZSwgMXdoCYkSdi6kiIYQEei8uLKoZ%2FCjDKQsU%3D",
                  "taskCode": "T0000092",
                  "taskGroup": "G0001",
                  "taskCaption": "Task Name 1",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 199,
                      "taskId": 92,
                      "answerCode": "A0000199",
                      "answerField": "Answer2",
                      "answerCaption": "Answer 2"
                    },
                    {
                      "answerId": 198,
                      "taskId": 92,
                      "answerCode": "A0000198",
                      "answerField": "Answer1",
                      "answerCaption": "Answer 1"
                    },
                    {
                      "answerId": 201,
                      "taskId": 92,
                      "answerCode": "A0000201",
                      "answerField": "Answer4",
                      "answerCaption": "Answer 4"
                    },
                    {
                      "answerId": 202,
                      "taskId": 92,
                      "answerCode": "A0000202",
                      "answerField": "Answer5",
                      "answerCaption": "Answer 5"
                    },
                    {
                      "answerId": 200,
                      "taskId": 92,
                      "answerCode": "A0000200",
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
