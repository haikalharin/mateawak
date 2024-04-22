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
  static const bgMainNavInit= 'mainNav-init';
  static const bgMissionInit= 'mission-init';
  static const bgSendAnswer= 'send-answer';
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
      "employeeMissionId": 35,
      "employeeId": 70002009,
      "missionId": 105,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-04-18T00:00:00",
      "dueDate": "2024-04-25T00:00:00",
      "submittedBy": "",
      "submittedDate": null,
      "completedBy": "",
      "completedDate": null,
      "chapterData": [
        {
          "chapterId": 3,
          "chapterCode": "C0002",
          "chapterName": "Chapter 2",
          "chapterGoal": "Chapter Goal 2",
          "competencyCode": "C0001",
          "competencyName": "Coname",
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 105,
              "chapterId": 3,
              "missionCode": "M0000105",
              "missionName": "General Knowledge Plant : Misi 1",
              "missionInstruction": "Langkah Kerja\n\n1. Tuliskan NIK dan NAMA Anda secara benar\n2. Bacalah pertanyaan soal dengan seksama dan pilihlah jawaban yang tepat\n3. Ketika sudah menjawab seluruh pertanyaan, klik \"submit\"\n4. Jawaban hanya bisa dikerjakan hingga 15 Februari 2024 pukul 10.00 WITA dan diambil nilai tertinggi, sehingga perlu untuk dikerjakan secara teliti, jika membutuhkan bantuan bisa diskusi / bertanya dengan rekan kerja atau atasan terkait soal yang ditanyakan\n\nSebarkan informasi yang anda dapatkan dari kuis, ke rekan kerja anda untuk berbagi pengetahuan.",
              "missionDuration": 2,
              "missionActiveOnDay": 7,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 20,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 182,
                  "missionId": 105,
                  "attachmentId": 2,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/png-40110.png?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=pCQVR%2Fj0tbM4ghg3CzJqAe9AICiqiwh9fo11%2F8YilV8%3D",
                  "taskCode": "T0000182",
                  "taskGroup": "G0001",
                  "taskCaption": "Apa yang merupakan upaya untuk menghindari resiko terjepit pada saat melakukan pekerjaan maintenance alat berat ?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 4,
                  "answerData": [
                    {
                      "answerId": 334,
                      "taskId": 182,
                      "answerCode": "A0000334",
                      "answerField": "Answer2",
                      "answerCaption": "Memastikan tool, alat bantu kerja sesuai dengan standard, dan menggunakan APD"
                    },
                    {
                      "answerId": 333,
                      "taskId": 182,
                      "answerCode": "A0000333",
                      "answerField": "Answer1",
                      "answerCaption": "Bekerja dengan pengawasan dan selalu saling mengingatkan pada saat melakukan tahapan aktivitas peker"
                    },
                    {
                      "answerId": 335,
                      "taskId": 182,
                      "answerCode": "A0000335",
                      "answerField": "Answer3",
                      "answerCaption": "Membaca dan menyampaikan JSA sebelum bekerja"
                    }
                  ]
                },
                {
                  "taskId": 185,
                  "missionId": 105,
                  "attachmentId": 2,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/png-40110.png?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=pCQVR%2Fj0tbM4ghg3CzJqAe9AICiqiwh9fo11%2F8YilV8%3D",
                  "taskCode": "T0000185",
                  "taskGroup": "G0001",
                  "taskCaption": "Site IPR memiliki program UBI yang bertujuan untuk mencegah terjadinya Tindakan Tidak Aman saat bekerja. Apa kepanjangan dari UBI tersebut ?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 4,
                  "answerData": [
                    {
                      "answerId": 342,
                      "taskId": 185,
                      "answerCode": "A0000342",
                      "answerField": "Answer1",
                      "answerCaption": "Unsafe Behaviour Inspection"
                    },
                    {
                      "answerId": 344,
                      "taskId": 185,
                      "answerCode": "A0000344",
                      "answerField": "Answer3",
                      "answerCaption": "Unsafe Behaviour Indicator"
                    },
                    {
                      "answerId": 343,
                      "taskId": 185,
                      "answerCode": "A0000343",
                      "answerField": "Answer2",
                      "answerCaption": "Unsafe Behaviour Intervention"
                    }
                  ]
                },
                {
                  "taskId": 186,
                  "missionId": 105,
                  "attachmentId": 2,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/png-40110.png?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=pCQVR%2Fj0tbM4ghg3CzJqAe9AICiqiwh9fo11%2F8YilV8%3D",
                  "taskCode": "T0000186",
                  "taskGroup": "G0001",
                  "taskCaption": "Unit HDCT77077 beroperasi selama 77 jam, lalu breakdown Low Power selama 2 jam. Beroperasi kembali selama 111 jam lalu service PS500 selama 12 jam. Berapakah MTBS dari unit HDCT77077 pada periode tersebut ?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 4,
                  "answerData": [
                    {
                      "answerId": 345,
                      "taskId": 186,
                      "answerCode": "A0000345",
                      "answerField": "Answer1",
                      "answerCaption": "90 jam"
                    },
                    {
                      "answerId": 347,
                      "taskId": 186,
                      "answerCode": "A0000347",
                      "answerField": "Answer3",
                      "answerCaption": "93 jam"
                    },
                    {
                      "answerId": 346,
                      "taskId": 186,
                      "answerCode": "A0000346",
                      "answerField": "Answer2",
                      "answerCaption": "91 jam"
                    }
                  ]
                },
                {
                  "taskId": 183,
                  "missionId": 105,
                  "attachmentId": 2,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/png-40110.png?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=pCQVR%2Fj0tbM4ghg3CzJqAe9AICiqiwh9fo11%2F8YilV8%3D",
                  "taskCode": "T0000183",
                  "taskGroup": "G0001",
                  "taskCaption": "Mana saja aktifitas maintenance yang menjadi bagian dari strategi CBM Plant BUMA?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 4,
                  "answerData": [
                    {
                      "answerId": 336,
                      "taskId": 183,
                      "answerCode": "A0000336",
                      "answerField": "Answer1",
                      "answerCaption": "Schedule Oil Sampling, On Board Monitoring System, Filter Cut Rating, Digiman"
                    },
                    {
                      "answerId": 337,
                      "taskId": 183,
                      "answerCode": "A0000337",
                      "answerField": "Answer2",
                      "answerCaption": "Magnetig Plug Rating, Pre-Service Inspection, On Board Monitoring System, Filter Cut Rating"
                    },
                    {
                      "answerId": 338,
                      "taskId": 183,
                      "answerCode": "A0000338",
                      "answerField": "Answer3",
                      "answerCaption": "Schedule Oil Sampling, Program Pengecekan Undercarriage, On Board Monitoring System, Magnetig Plug R"
                    }
                  ]
                },
                {
                  "taskId": 184,
                  "missionId": 105,
                  "attachmentId": 2,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/png-40110.png?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=pCQVR%2Fj0tbM4ghg3CzJqAe9AICiqiwh9fo11%2F8YilV8%3D",
                  "taskCode": "T0000184",
                  "taskGroup": "G0001",
                  "taskCaption": "Pada PM’s Message bulan Februari 2024, Pak Agung Riyanto menyampaikan kita perlu tetap konsisten dalam menjalankan hal-hal yang sudah baik serta terus menumbuhkan semangat Continuous Improvement dan Zero Incident Mindset dalam operasional kita.\n\n“Selalu konsisten menggunakan APD saat bekerja dan melakukan pekerjaan sesuai dengan prosedur kerja dan keselamatan walaupun tidak ada yang melihat” mencerminkan tugas apa dalam pesan Pak Agung Riyanto ?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 4,
                  "answerData": [
                    {
                      "answerId": 340,
                      "taskId": 184,
                      "answerCode": "A0000340",
                      "answerField": "Answer2",
                      "answerCaption": "Membangun komunikasi terbuka"
                    },
                    {
                      "answerId": 339,
                      "taskId": 184,
                      "answerCode": "A0000339",
                      "answerField": "Answer1",
                      "answerCaption": "Evaluasi pekerjaan di area masing-masing"
                    },
                    {
                      "answerId": 341,
                      "taskId": 184,
                      "answerCode": "A0000341",
                      "answerField": "Answer3",
                      "answerCaption": "Melakukan achievement drive dan menjadi role model perubahan untuk menciptakan safety behavior yang "
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
      "missionId": 230,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2025-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-04-03T01:41:44.037",
      "chapterData": [
        {
          "chapterId": 1,
          "chapterCode": "C0001",
          "chapterName": "Chapter 1",
          "chapterGoal": "Chapter Goal 1",
          "competencyCode": "C0001",
          "competencyName": "Coname",
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 230,
              "chapterId": 1,
              "missionCode": "M0000231",
              "missionName": "Review JSA Plant",
              "missionInstruction": "Panduan Langkah Penyelesaian Misi :\n1. Pilihlah JSA yang sesuai dengan pekerjaan area kerja masing-masing, yang isinya berhubungan dalam prosedur pengendalian potensi jari terjepit, contoh : area kerja di Workshop, memilih JSAP Melepas dan memasang final drive OHT 777 D/E\n2. Lakukan diskusi dengan tim simulasi Anda (foreman dan mekanik), terkait isi dari JSA tersebut, terutama langkah pekerjaan yang memiliki bahaya / risiko jari terjepit, dan bagaimana prosedur pengendaliannya\n3. Dari JSA yang anda review tersebut dengan tim anda, apakah ada poin yang perlu untuk di revisi / ditambahkan untuk pengendalian potensi risiko jari terjepit.\n4. Dokumentasikan diskusi bersama tim anda tersebut dan upload evidennya di google form\n5. Poin dari anggota tim, akan didapatkan ketika supervisor mengupload foto full team bersama foreman dan 2 mekaniknya, jika ada team yang cuti, silahkan isi pada form\n6. Jika supervisor cuti, delegasikan tugas ini kepada foreman dalam tim anda",
              "missionDuration": 3,
              "missionActiveOnDay": 9,
              "missionTypeCode": "Assignment",
              "missionTypeName": "Assignment",
              "missionReward": 100,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 263,
                  "missionId": 230,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=eYHWaMfYj0ZFtvZhot1L4Ux4250XFVu0BwElkfyq8Lk%3D",
                  "taskCode": "T0000264",
                  "taskGroup": "G0002",
                  "taskCaption": "Judul JSA yang dilakukan Review.\nPoin - poin yang di revisi atau ditambahkan (urutan langkah tugas, bahaya/risiko, kode bahaya dan rekomendasi / prosedur pengendalian bahaya)\n\nMisalnya : JSA yang dipilih Dumping Material di Jalan Tambang, poin yang perlu ditambahkan dalam rekomendasi pengendalian bahaya tersebut adalah penggunaan rambu penanda perbaikan jalan, sehingga unit hauler yang lain dapat mengetahui dan akan mengurangi kecepatan saat melewati area perbaikan jalan tersebut.",
                  "taskTypeCode": "ASM",
                  "taskTypeName": "Assignment",
                  "taskReward": 6,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
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
      "missionId": 231,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2025-01-02T00:00:00",
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
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 231,
              "chapterId": 1,
              "missionCode": "M0000232",
              "missionName": "General Knowledge Plant : Misi 1",
              "missionInstruction": "Langkah Kerja\n\n1. Tuliskan NIK dan NAMA Anda secara benar\n2. Bacalah pertanyaan soal dengan seksama dan pilihlah jawaban yang tepat\n3. Ketika sudah menjawab seluruh pertanyaan, klik \"submit\"\n4. Jawaban hanya bisa dikerjakan hingga 15 Februari 2024 pukul 10.00 WITA dan diambil nilai tertinggi, sehingga perlu untuk dikerjakan secara teliti, jika membutuhkan bantuan bisa diskusi / bertanya dengan rekan kerja atau atasan terkait soal yang ditanyakan\n\nSebarkan informasi yang anda dapatkan dari kuis, ke rekan kerja anda untuk berbagi pengetahuan.",
              "missionDuration": 2,
              "missionActiveOnDay": 7,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 20,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 264,
                  "missionId": 231,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=eYHWaMfYj0ZFtvZhot1L4Ux4250XFVu0BwElkfyq8Lk%3D",
                  "taskCode": "T0000266",
                  "taskGroup": "G0002",
                  "taskCaption": "Mana saja aktifitas maintenance yang menjadi bagian dari strategi CBM Plant BUMA?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 1,
                  "answerData": [
                    {
                      "answerId": 505,
                      "taskId": 264,
                      "answerCode": "A0000509",
                      "answerField": "Answer2",
                      "answerCaption": "Magnetig Plug Rating, Pre-Service Inspection, On Board Monitoring System, Filter Cut Rating"
                    },
                    {
                      "answerId": 504,
                      "taskId": 264,
                      "answerCode": "A0000508",
                      "answerField": "Answer1",
                      "answerCaption": "Schedule Oil Sampling, On Board Monitoring System, Filter Cut Rating, Digiman"
                    },
                    {
                      "answerId": 506,
                      "taskId": 264,
                      "answerCode": "A0000510",
                      "answerField": "Answer3",
                      "answerCaption": "Schedule Oil Sampling, Program Pengecekan Undercarriage, On Board Monitoring System, Magnetig Plug R"
                    }
                  ]
                },
                {
                  "taskId": 265,
                  "missionId": 231,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=eYHWaMfYj0ZFtvZhot1L4Ux4250XFVu0BwElkfyq8Lk%3D",
                  "taskCode": "T0000265",
                  "taskGroup": "G0002",
                  "taskCaption": "Pada PM’s Message bulan Februari 2024, Pak Agung Riyanto menyampaikan kita perlu tetap konsisten dalam menjalankan hal-hal yang sudah baik serta terus menumbuhkan semangat Continuous Improvement dan Zero Incident Mindset dalam operasional kita.\n\n“Selalu konsisten menggunakan APD saat bekerja dan melakukan pekerjaan sesuai dengan prosedur kerja dan keselamatan walaupun tidak ada yang melihat” mencerminkan tugas apa dalam pesan Pak Agung Riyanto ?",
                  "taskTypeCode": "MCQ",
                  "taskTypeName": "Multiple Choice",
                  "taskReward": 1,
                  "answerData": [
                    {
                      "answerId": 508,
                      "taskId": 265,
                      "answerCode": "A0000505",
                      "answerField": "Answer2",
                      "answerCaption": "Membangun komunikasi terbuka"
                    },
                    {
                      "answerId": 509,
                      "taskId": 265,
                      "answerCode": "A0000506",
                      "answerField": "Answer3",
                      "answerCaption": "Melakukan achievement drive dan menjadi role model perubahan untuk menciptakan safety behavior yang "
                    },
                    {
                      "answerId": 510,
                      "taskId": 265,
                      "answerCode": "A0000507",
                      "answerField": "Answer4",
                      "answerCaption": "More collaboration dan more communication"
                    },
                    {
                      "answerId": 507,
                      "taskId": 265,
                      "answerCode": "A0000504",
                      "answerField": "Answer1",
                      "answerCaption": "Evaluasi pekerjaan di area masing-masing"
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
      "missionId": 232,
      "missionStatusCode": 3,
      "missionStatus": "Under Review",
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
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 232,
              "chapterId": 1,
              "missionCode": "M0000233",
              "missionName": "Review JSA Plant",
              "missionInstruction": "Panduan Langkah Penyelesaian Misi :\n1. Pilihlah JSA yang sesuai dengan pekerjaan area kerja masing-masing, yang isinya berhubungan dalam prosedur pengendalian potensi jari terjepit, contoh : area kerja di Workshop, memilih JSAP Melepas dan memasang final drive OHT 777 D/E\n2. Lakukan diskusi dengan tim simulasi Anda (foreman dan mekanik), terkait isi dari JSA tersebut, terutama langkah pekerjaan yang memiliki bahaya / risiko jari terjepit, dan bagaimana prosedur pengendaliannya\n3. Dari JSA yang anda review tersebut dengan tim anda, apakah ada poin yang perlu untuk di revisi / ditambahkan untuk pengendalian potensi risiko jari terjepit.\n4. Dokumentasikan diskusi bersama tim anda tersebut dan upload evidennya di google form\n5. Poin dari anggota tim, akan didapatkan ketika supervisor mengupload foto full team bersama foreman dan 2 mekaniknya, jika ada team yang cuti, silahkan isi pada form\n6. Jika supervisor cuti, delegasikan tugas ini kepada foreman dalam tim anda",
              "missionDuration": 3,
              "missionActiveOnDay": 9,
              "missionTypeCode": "Assignment",
              "missionTypeName": "Assignment",
              "missionReward": 100,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 268,
                  "missionId": 232,
                  "attachmentId": 1,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-24216.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=vJvujdrTazyp7nSb9a%2BspmUcOo%2B1aO11bHlPI9OEfgM%3D",
                  "taskCode": "T0000268",
                  "taskGroup": "G0001",
                  "taskCaption": "Judul JSA yang dilakukan Review.\nPoin - poin yang di revisi atau ditambahkan (urutan langkah tugas, bahaya/risiko, kode bahaya dan rekomendasi / prosedur pengendalian bahaya)\n\nMisalnya : JSA yang dipilih Dumping Material di Jalan Tambang, poin yang perlu ditambahkan dalam rekomendasi pengendalian bahaya tersebut adalah penggunaan rambu penanda perbaikan jalan, sehingga unit hauler yang lain dapat mengetahui dan akan mengurangi kecepatan saat melewati area perbaikan jalan tersebut.",
                  "taskTypeCode": "ASM",
                  "taskTypeName": "Assignment",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
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
      "employeeMissionId": 30,
      "employeeId": 70002009,
      "missionId": 234,
      "missionStatusCode": 3,
      "missionStatus": "Under Review",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2024-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-03-28T06:32:43.167",
      "chapterData": [
        {
          "chapterId": 1,
          "chapterCode": "C0001",
          "chapterName": "Chapter 1",
          "chapterGoal": "Chapter Goal 1",
          "competencyCode": "C0001",
          "competencyName": "Coname",
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 234,
              "chapterId": 1,
              "missionCode": "M0000235",
              "missionName": "Review JSA Plant",
              "missionInstruction": "Panduan Langkah Penyelesaian Misi :\n1. Pilihlah JSA yang sesuai dengan pekerjaan area kerja masing-masing, yang isinya berhubungan dalam prosedur pengendalian potensi jari terjepit, contoh : area kerja di Workshop, memilih JSAP Melepas dan memasang final drive OHT 777 D/E\n2. Lakukan diskusi dengan tim simulasi Anda (foreman dan mekanik), terkait isi dari JSA tersebut, terutama langkah pekerjaan yang memiliki bahaya / risiko jari terjepit, dan bagaimana prosedur pengendaliannya\n3. Dari JSA yang anda review tersebut dengan tim anda, apakah ada poin yang perlu untuk di revisi / ditambahkan untuk pengendalian potensi risiko jari terjepit.\n4. Dokumentasikan diskusi bersama tim anda tersebut dan upload evidennya di google form\n5. Poin dari anggota tim, akan didapatkan ketika supervisor mengupload foto full team bersama foreman dan 2 mekaniknya, jika ada team yang cuti, silahkan isi pada form\n6. Jika supervisor cuti, delegasikan tugas ini kepada foreman dalam tim anda",
              "missionDuration": 3,
              "missionActiveOnDay": 9,
              "missionTypeCode": "Assignment",
              "missionTypeName": "Assignment",
              "missionReward": 100,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 272,
                  "missionId": 234,
                  "attachmentId": 1,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-24216.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=vJvujdrTazyp7nSb9a%2BspmUcOo%2B1aO11bHlPI9OEfgM%3D",
                  "taskCode": "T0000272",
                  "taskGroup": "G0001",
                  "taskCaption": "Judul JSA yang dilakukan Review.\nPoin - poin yang di revisi atau ditambahkan (urutan langkah tugas, bahaya/risiko, kode bahaya dan rekomendasi / prosedur pengendalian bahaya)\n\nMisalnya : JSA yang dipilih Dumping Material di Jalan Tambang, poin yang perlu ditambahkan dalam rekomendasi pengendalian bahaya tersebut adalah penggunaan rambu penanda perbaikan jalan, sehingga unit hauler yang lain dapat mengetahui dan akan mengurangi kecepatan saat melewati area perbaikan jalan tersebut.",
                  "taskTypeCode": "ASM",
                  "taskTypeName": "Assignment",
                  "taskReward": 100,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
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
      "employeeMissionId": 29,
      "employeeId": 70002009,
      "missionId": 235,
      "missionStatusCode": 3,
      "missionStatus": "Under Review",
      "startedDate": "2024-01-01T00:00:00",
      "dueDate": "2024-01-02T00:00:00",
      "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "submittedDate": "2022-01-01T00:00:00",
      "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
      "completedDate": "2024-03-28T06:32:43.167",
      "chapterData": [
        {
          "chapterId": 1,
          "chapterCode": "C0001",
          "chapterName": "Chapter 1",
          "chapterGoal": "Chapter Goal 1",
          "competencyCode": "C0001",
          "competencyName": "Coname",
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 235,
              "chapterId": 1,
              "missionCode": "M0000236",
              "missionName": "Review JSA Plant",
              "missionInstruction": "Panduan Langkah Penyelesaian Misi :\n1. Pilihlah JSA yang sesuai dengan pekerjaan area kerja masing-masing, yang isinya berhubungan dalam prosedur pengendalian potensi jari terjepit, contoh : area kerja di Workshop, memilih JSAP Melepas dan memasang final drive OHT 777 D/E\n2. Lakukan diskusi dengan tim simulasi Anda (foreman dan mekanik), terkait isi dari JSA tersebut, terutama langkah pekerjaan yang memiliki bahaya / risiko jari terjepit, dan bagaimana prosedur pengendaliannya\n3. Dari JSA yang anda review tersebut dengan tim anda, apakah ada poin yang perlu untuk di revisi / ditambahkan untuk pengendalian potensi risiko jari terjepit.\n4. Dokumentasikan diskusi bersama tim anda tersebut dan upload evidennya di google form\n5. Poin dari anggota tim, akan didapatkan ketika supervisor mengupload foto full team bersama foreman dan 2 mekaniknya, jika ada team yang cuti, silahkan isi pada form\n6. Jika supervisor cuti, delegasikan tugas ini kepada foreman dalam tim anda",
              "missionDuration": 3,
              "missionActiveOnDay": 9,
              "missionTypeCode": "Assignment",
              "missionTypeName": "Assignment",
              "missionReward": 100,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 273,
                  "missionId": 235,
                  "attachmentId": 3,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=eYHWaMfYj0ZFtvZhot1L4Ux4250XFVu0BwElkfyq8Lk%3D",
                  "taskCode": "T0000274",
                  "taskGroup": "G0002",
                  "taskCaption": "Judul JSA yang dilakukan Review.\nPoin - poin yang di revisi atau ditambahkan (urutan langkah tugas, bahaya/risiko, kode bahaya dan rekomendasi / prosedur pengendalian bahaya)\n\nMisalnya : JSA yang dipilih Dumping Material di Jalan Tambang, poin yang perlu ditambahkan dalam rekomendasi pengendalian bahaya tersebut adalah penggunaan rambu penanda perbaikan jalan, sehingga unit hauler yang lain dapat mengetahui dan akan mengurangi kecepatan saat melewati area perbaikan jalan tersebut.",
                  "taskTypeCode": "ASM",
                  "taskTypeName": "Assignment",
                  "taskReward": 5,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
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
      "employeeMissionId": 37,
      "employeeId": 70002009,
      "missionId": 236,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-04-18T00:00:00",
      "dueDate": "2024-04-25T00:00:00",
      "submittedBy": "",
      "submittedDate": null,
      "completedBy": "",
      "completedDate": null,
      "chapterData": [
        {
          "chapterId": 1,
          "chapterCode": "C0001",
          "chapterName": "Chapter 1",
          "chapterGoal": "Chapter Goal 1",
          "competencyCode": "C0001",
          "competencyName": "Coname",
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 236,
              "chapterId": 1,
              "missionCode": "M0000237",
              "missionName": "MISI BANG",
              "missionInstruction": "Langkah Kerja\n\n1. Tuliskan NIK dan NAMA Anda secara benar\n2. Bacalah pertanyaan soal dengan seksama dan pilihlah jawaban yang tepat\ntahuan.",
              "missionDuration": 2,
              "missionActiveOnDay": 7,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 20,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 594,
                  "missionId": 236,
                  "attachmentId": 201,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/a-26662.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=cKIwZke9%2BhDmp1yCMWyHxyHKcgC68SoqXR8HKuTrJRg%3D",
                  "taskCode": "T0000594",
                  "taskGroup": "AjW8j9Nf8iwwl6V",
                  "taskCaption": "SOLAT APA GAK?",
                  "taskTypeCode": "YNQ",
                  "taskTypeName": "Yes/ No",
                  "taskReward": 10,
                  "answerData": [
                    {
                      "answerId": 546,
                      "taskId": 594,
                      "answerCode": "A0000546",
                      "answerField": "Answer1",
                      "answerCaption": "Y"
                    },
                    {
                      "answerId": 547,
                      "taskId": 594,
                      "answerCode": "A0000547",
                      "answerField": "Answer2",
                      "answerCaption": "G"
                    }
                  ]
                },
                {
                  "taskId": 595,
                  "missionId": 236,
                  "attachmentId": 198,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/b-99524.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=ej6dlzXj1lpXHyF107ZxAVCDUrKOEIPtKeXy7IseEYA%3D",
                  "taskCode": "T0000595",
                  "taskGroup": "AjW8j9Nf8iwwl6V",
                  "taskCaption": "foto selpi dong",
                  "taskTypeCode": "ASM",
                  "taskTypeName": "Assignment",
                  "taskReward": 10,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
                    }
                  ]
                },
                {
                  "taskId": 597,
                  "missionId": 236,
                  "attachmentId": 200,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/d-20333.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=BQUUeylF6lL399vW8TBoJywjWw1WRkqhJ4QGFlldofw%3D",
                  "taskCode": "T0000597",
                  "taskGroup": "AjW8j9Nf8iwwl6V",
                  "taskCaption": "TULIS DOA SEBELUM TIDUR",
                  "taskTypeCode": "STX",
                  "taskTypeName": "Short Answer",
                  "taskReward": 10,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
                    }
                  ]
                },
                {
                  "taskId": 593,
                  "missionId": 236,
                  "attachmentId": 199,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/e-14078.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=5hoDOWB6Zg6x1T1YPq4MTyKJr%2FPPqIx9CZTrko%2BTnr8%3D",
                  "taskCode": "T0000593",
                  "taskGroup": "AjW8j9Nf8iwwl6V",
                  "taskCaption": "Pada PM’s Message bulan Februari 2024, Pak Agung Riyanto menyampaikan kita perlu tetap konsisten dalam menjalankan hal-hal yang sudah baik serta terus menumbuhkan semangat Continuous Improvement dan Zero Incident Mindset dalam operasional kita.\n\n“Selalu konsisten menggunakan APD saat bekerja dan melakukan pekerjaan sesuai dengan prosedur kerja dan keselamatan walaupun tidak ada yang melihat” mencerminkan tugas apa dalam pesan Pak Agung Riyanto ?",
                  "taskTypeCode": "MCQ",
                  "taskTypeName": "Multiple Choice",
                  "taskReward": 20,
                  "answerData": [
                    {
                      "answerId": 542,
                      "taskId": 593,
                      "answerCode": "A0000542",
                      "answerField": "Answer1",
                      "answerCaption": "Evaluasi pekerjaan di area masing-masing"
                    },
                    {
                      "answerId": 545,
                      "taskId": 593,
                      "answerCode": "A0000545",
                      "answerField": "Answer4",
                      "answerCaption": "More collaboration dan more communication"
                    },
                    {
                      "answerId": 543,
                      "taskId": 593,
                      "answerCode": "A0000543",
                      "answerField": "Answer2",
                      "answerCaption": "Membangun komunikasi terbuka"
                    },
                    {
                      "answerId": 544,
                      "taskId": 593,
                      "answerCode": "A0000544",
                      "answerField": "Answer3",
                      "answerCaption": "Melakukan achievement drive dan menjadi role model perubahan untuk menciptakan safety behavior yang "
                    }
                  ]
                },
                {
                  "taskId": 596,
                  "missionId": 236,
                  "attachmentId": 197,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/c-79151.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=45Zb8rHd2Gwq0LlWxy%2Bx%2Bu54VTBfXmaaG6eaGa8fVEE%3D",
                  "taskCode": "T0000596",
                  "taskGroup": "AjW8j9Nf8iwwl6V",
                  "taskCaption": "1+1 berapa hayo?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 10,
                  "answerData": [
                    {
                      "answerId": 551,
                      "taskId": 596,
                      "answerCode": "A0000551",
                      "answerField": "Answer4",
                      "answerCaption": "4"
                    },
                    {
                      "answerId": 549,
                      "taskId": 596,
                      "answerCode": "A0000549",
                      "answerField": "Answer2",
                      "answerCaption": "3"
                    },
                    {
                      "answerId": 548,
                      "taskId": 596,
                      "answerCode": "A0000548",
                      "answerField": "Answer1",
                      "answerCaption": "10"
                    },
                    {
                      "answerId": 550,
                      "taskId": 596,
                      "answerCode": "A0000550",
                      "answerField": "Answer3",
                      "answerCaption": "5"
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
      "employeeMissionId": 38,
      "employeeId": 70002009,
      "missionId": 240,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-04-18T00:00:00",
      "dueDate": "2024-04-25T00:00:00",
      "submittedBy": "",
      "submittedDate": null,
      "completedBy": "",
      "completedDate": null,
      "chapterData": [
        {
          "chapterId": 1,
          "chapterCode": "C0001",
          "chapterName": "Chapter 1",
          "chapterGoal": "Chapter Goal 1",
          "competencyCode": "C0001",
          "competencyName": "Coname",
          "peopleCategoryCode": "Safe",
          "peopleCategoryName": "Safe",
          "missionData": [
            {
              "missionId": 240,
              "chapterId": 1,
              "missionCode": "M0000241",
              "missionName": "MISI LAGI BANG",
              "missionInstruction": "Langkah Kerja\n\n1. Tuliskan NIK dan NAMA Anda secara benar\n2. Bacalah pertanyaan soal dengan seksama dan pilihlah jawaban yang tepat\ntahuan.",
              "missionDuration": 2,
              "missionActiveOnDay": 7,
              "missionTypeCode": "Quiz",
              "missionTypeName": "Quiz",
              "missionReward": 10,
              "isMandatoryAttachment": null,
              "taskData": [
                {
                  "taskId": 601,
                  "missionId": 240,
                  "attachmentId": 203,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/b-68167.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=eSIUEGkv%2BIrPCsRLxGWLTJYXgza00BaDuT%2BTlSoJ%2Be4%3D",
                  "taskCode": "T0000598",
                  "taskGroup": "PBJXjkczYUb1HSG",
                  "taskCaption": "BERAPA RATING PANDU SEBAGAI TESTER?",
                  "taskTypeCode": "RAT",
                  "taskTypeName": "Rating",
                  "taskReward": 2,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
                    }
                  ]
                },
                {
                  "taskId": 598,
                  "missionId": 240,
                  "attachmentId": 202,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/c-55375.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=a4EaGAW3RJfmNnhEI7YljxA%2BcJ%2FSVVyf%2FhYWqqwqnTo%3D",
                  "taskCode": "T0000599",
                  "taskGroup": "PBJXjkczYUb1HSG",
                  "taskCaption": "1+1 berapa hayo?",
                  "taskTypeCode": "SCQ",
                  "taskTypeName": "Single Choice",
                  "taskReward": 2,
                  "answerData": [
                    {
                      "answerId": 552,
                      "taskId": 598,
                      "answerCode": "A0000552",
                      "answerField": "Answer1",
                      "answerCaption": "10"
                    },
                    {
                      "answerId": 555,
                      "taskId": 598,
                      "answerCode": "A0000555",
                      "answerField": "Answer4",
                      "answerCaption": "4"
                    },
                    {
                      "answerId": 553,
                      "taskId": 598,
                      "answerCode": "A0000553",
                      "answerField": "Answer2",
                      "answerCaption": "3"
                    },
                    {
                      "answerId": 554,
                      "taskId": 598,
                      "answerCode": "A0000554",
                      "answerField": "Answer3",
                      "answerCaption": "5"
                    }
                  ]
                },
                {
                  "taskId": 599,
                  "missionId": 240,
                  "attachmentId": 206,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/a-78696.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=k5wxuFD9RnZNJiONuvVcdtoJnDv4Atv5Pqy%2Fylh%2FaLQ%3D",
                  "taskCode": "T0000601",
                  "taskGroup": "PBJXjkczYUb1HSG",
                  "taskCaption": "SOLAT APA GAK?",
                  "taskTypeCode": "YNQ",
                  "taskTypeName": "Yes/ No",
                  "taskReward": 2,
                  "answerData": [
                    {
                      "answerId": 557,
                      "taskId": 599,
                      "answerCode": "A0000557",
                      "answerField": "Answer2",
                      "answerCaption": "G"
                    },
                    {
                      "answerId": 556,
                      "taskId": 599,
                      "answerCode": "A0000556",
                      "answerField": "Answer1",
                      "answerCaption": "Y"
                    }
                  ]
                },
                {
                  "taskId": 600,
                  "missionId": 240,
                  "attachmentId": 205,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/d-62579.jpg?sv=2023-11-03&st=2024-04-19T09%3A52%3A18Z&se=2024-04-20T09%3A52%3A18Z&sr=b&sp=r&sig=QW6WVv2GE8FfK03iyupuQZirj335ONS4uxMGEN3hcTQ%3D",
                  "taskCode": "T0000600",
                  "taskGroup": "PBJXjkczYUb1HSG",
                  "taskCaption": "TULIS DOA SEBELUM TIDUR",
                  "taskTypeCode": "STX",
                  "taskTypeName": "Short Answer",
                  "taskReward": 2,
                  "answerData": [
                    {
                      "answerId": 0,
                      "taskId": 0,
                      "answerCode": null,
                      "answerField": null,
                      "answerCaption": null
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

  static const rawValidationDummy = [
    {
                "employeeMissionId": 3,
                "employeeId": 70002009,
                "missionId": 232,
                "missionStatusCode": 3,
                "missionStatus": "Under Review",
                "startedDate": "2024-01-01T00:00:00",
                "dueDate": "2024-01-02T00:00:00",
                "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
                "submittedDate": "2022-01-01T00:00:00",
                "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
                "completedDate": "2024-03-18T06:32:43.167",
                "validatorId": 2801070,
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
                                "missionId": 232,
                                "chapterId": 1,
                                "missionCode": "M0000233",
                                "missionName": "Review JSA Plant",
                                "missionInstruction": "Panduan Langkah Penyelesaian Misi :\n1. Pilihlah JSA yang sesuai dengan pekerjaan area kerja masing-masing, yang isinya berhubungan dalam prosedur pengendalian potensi jari terjepit, contoh : area kerja di Workshop, memilih JSAP Melepas dan memasang final drive OHT 777 D/E\n2. Lakukan diskusi dengan tim simulasi Anda (foreman dan mekanik), terkait isi dari JSA tersebut, terutama langkah pekerjaan yang memiliki bahaya / risiko jari terjepit, dan bagaimana prosedur pengendaliannya\n3. Dari JSA yang anda review tersebut dengan tim anda, apakah ada poin yang perlu untuk di revisi / ditambahkan untuk pengendalian potensi risiko jari terjepit.\n4. Dokumentasikan diskusi bersama tim anda tersebut dan upload evidennya di google form\n5. Poin dari anggota tim, akan didapatkan ketika supervisor mengupload foto full team bersama foreman dan 2 mekaniknya, jika ada team yang cuti, silahkan isi pada form\n6. Jika supervisor cuti, delegasikan tugas ini kepada foreman dalam tim anda",
                                "missionDuration": 3,
                                "missionActiveOnDay": 9,
                                "missionTypeCode": "Assignment",
                                "missionTypeName": "Assignment",
                                "missionReward": 100,
                                "isMandatoryAttachment": null,
                                "taskData": [
                                    {
                                        "taskId": 268,
                                        "missionId": 232,
                                        "attachmentId": 1,
                                        "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-24216.jpg?sv=2023-11-03&st=2024-04-17T11%3A14%3A01Z&se=2024-04-18T11%3A14%3A01Z&sr=b&sp=r&sig=JKLBlTsIuorHzwQcv%2B2fqtu69dp3%2FEWFoer%2FnR3Tppw%3D",
                                        "taskCode": "T0000268",
                                        "taskGroup": "G0001",
                                        "taskCaption": "Judul JSA yang dilakukan Review.\nPoin - poin yang di revisi atau ditambahkan (urutan langkah tugas, bahaya/risiko, kode bahaya dan rekomendasi / prosedur pengendalian bahaya)\n\nMisalnya : JSA yang dipilih Dumping Material di Jalan Tambang, poin yang perlu ditambahkan dalam rekomendasi pengendalian bahaya tersebut adalah penggunaan rambu penanda perbaikan jalan, sehingga unit hauler yang lain dapat mengetahui dan akan mengurangi kecepatan saat melewati area perbaikan jalan tersebut.",
                                        "taskTypeCode": "ASM",
                                        "taskTypeName": "Assignment",
                                        "taskReward": 100,
                                        "taskAnswerId": 13,
                                        "answer": "Test",
                                        "answerAttachmentId": 70,
                                        "answerAttachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-31145.jpg?sv=2023-11-03&st=2024-04-17T11%3A14%3A01Z&se=2024-04-18T11%3A14%3A01Z&sr=b&sp=r&sig=BdufpXme4FJ9gkRf7cxLVU2cyQOowQs5yzaAgw292M0%3D",
                                        "answerReward": 0,
                                        "feedbackComment": null,
                                        "qualitativeScoreId": 0,
                                        "answerData": [
                                            {
                                                "answerId": 0,
                                                "taskId": 0,
                                                "answerCode": null,
                                                "answerField": null,
                                                "answerCaption": null
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
                "employeeMissionId": 30,
                "employeeId": 70002009,
                "missionId": 234,
                "missionStatusCode": 3,
                "missionStatus": "Under Review",
                "startedDate": "2024-01-01T00:00:00",
                "dueDate": "2024-01-02T00:00:00",
                "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
                "submittedDate": "2022-01-01T00:00:00",
                "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
                "completedDate": "2024-03-28T06:32:43.167",
                "validatorId": 2801070,
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
                                "missionId": 234,
                                "chapterId": 1,
                                "missionCode": "M0000235",
                                "missionName": "Review JSA Plant",
                                "missionInstruction": "Panduan Langkah Penyelesaian Misi :\n1. Pilihlah JSA yang sesuai dengan pekerjaan area kerja masing-masing, yang isinya berhubungan dalam prosedur pengendalian potensi jari terjepit, contoh : area kerja di Workshop, memilih JSAP Melepas dan memasang final drive OHT 777 D/E\n2. Lakukan diskusi dengan tim simulasi Anda (foreman dan mekanik), terkait isi dari JSA tersebut, terutama langkah pekerjaan yang memiliki bahaya / risiko jari terjepit, dan bagaimana prosedur pengendaliannya\n3. Dari JSA yang anda review tersebut dengan tim anda, apakah ada poin yang perlu untuk di revisi / ditambahkan untuk pengendalian potensi risiko jari terjepit.\n4. Dokumentasikan diskusi bersama tim anda tersebut dan upload evidennya di google form\n5. Poin dari anggota tim, akan didapatkan ketika supervisor mengupload foto full team bersama foreman dan 2 mekaniknya, jika ada team yang cuti, silahkan isi pada form\n6. Jika supervisor cuti, delegasikan tugas ini kepada foreman dalam tim anda",
                                "missionDuration": 3,
                                "missionActiveOnDay": 9,
                                "missionTypeCode": "Assignment",
                                "missionTypeName": "Assignment",
                                "missionReward": 100,
                                "isMandatoryAttachment": null,
                                "taskData": [
                                    {
                                        "taskId": 272,
                                        "missionId": 234,
                                        "attachmentId": 1,
                                        "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-24216.jpg?sv=2023-11-03&st=2024-04-17T11%3A14%3A01Z&se=2024-04-18T11%3A14%3A01Z&sr=b&sp=r&sig=JKLBlTsIuorHzwQcv%2B2fqtu69dp3%2FEWFoer%2FnR3Tppw%3D",
                                        "taskCode": "T0000272",
                                        "taskGroup": "G0001",
                                        "taskCaption": "Judul JSA yang dilakukan Review.\nPoin - poin yang di revisi atau ditambahkan (urutan langkah tugas, bahaya/risiko, kode bahaya dan rekomendasi / prosedur pengendalian bahaya)\n\nMisalnya : JSA yang dipilih Dumping Material di Jalan Tambang, poin yang perlu ditambahkan dalam rekomendasi pengendalian bahaya tersebut adalah penggunaan rambu penanda perbaikan jalan, sehingga unit hauler yang lain dapat mengetahui dan akan mengurangi kecepatan saat melewati area perbaikan jalan tersebut.",
                                        "taskTypeCode": "ASM",
                                        "taskTypeName": "Assignment",
                                        "taskReward": 100,
                                        "taskAnswerId": 14,
                                        "answer": "Test",
                                        "answerAttachmentId": 0,
                                        "answerAttachmentUrl": null,
                                        "answerReward": 0,
                                        "feedbackComment": null,
                                        "qualitativeScoreId": 0,
                                        "answerData": [
                                            {
                                                "answerId": 0,
                                                "taskId": 0,
                                                "answerCode": null,
                                                "answerField": null,
                                                "answerCaption": null
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
                "employeeMissionId": 29,
                "employeeId": 70002009,
                "missionId": 235,
                "missionStatusCode": 3,
                "missionStatus": "Under Review",
                "startedDate": "2024-01-01T00:00:00",
                "dueDate": "2024-01-02T00:00:00",
                "submittedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
                "submittedDate": "2022-01-01T00:00:00",
                "completedBy": "2009u1.supervisor@buma365.onmicrosoft.com",
                "completedDate": "2024-03-28T06:32:43.167",
                "validatorId": 2801070,
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
                                "missionId": 235,
                                "chapterId": 1,
                                "missionCode": "M0000236",
                                "missionName": "Review JSA Plant",
                                "missionInstruction": "Panduan Langkah Penyelesaian Misi :\n1. Pilihlah JSA yang sesuai dengan pekerjaan area kerja masing-masing, yang isinya berhubungan dalam prosedur pengendalian potensi jari terjepit, contoh : area kerja di Workshop, memilih JSAP Melepas dan memasang final drive OHT 777 D/E\n2. Lakukan diskusi dengan tim simulasi Anda (foreman dan mekanik), terkait isi dari JSA tersebut, terutama langkah pekerjaan yang memiliki bahaya / risiko jari terjepit, dan bagaimana prosedur pengendaliannya\n3. Dari JSA yang anda review tersebut dengan tim anda, apakah ada poin yang perlu untuk di revisi / ditambahkan untuk pengendalian potensi risiko jari terjepit.\n4. Dokumentasikan diskusi bersama tim anda tersebut dan upload evidennya di google form\n5. Poin dari anggota tim, akan didapatkan ketika supervisor mengupload foto full team bersama foreman dan 2 mekaniknya, jika ada team yang cuti, silahkan isi pada form\n6. Jika supervisor cuti, delegasikan tugas ini kepada foreman dalam tim anda",
                                "missionDuration": 3,
                                "missionActiveOnDay": 9,
                                "missionTypeCode": "Assignment",
                                "missionTypeName": "Assignment",
                                "missionReward": 100,
                                "isMandatoryAttachment": null,
                                "taskData": [
                                    {
                                        "taskId": 273,
                                        "missionId": 235,
                                        "attachmentId": 3,
                                        "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-61179.jpg?sv=2023-11-03&st=2024-04-17T11%3A14%3A01Z&se=2024-04-18T11%3A14%3A01Z&sr=b&sp=r&sig=JV4nFoEiMnuWDCwWMy6SYNWByDXNKVkcCTB1zlujg5Q%3D",
                                        "taskCode": "T0000274",
                                        "taskGroup": "G0002",
                                        "taskCaption": "Judul JSA yang dilakukan Review.\nPoin - poin yang di revisi atau ditambahkan (urutan langkah tugas, bahaya/risiko, kode bahaya dan rekomendasi / prosedur pengendalian bahaya)\n\nMisalnya : JSA yang dipilih Dumping Material di Jalan Tambang, poin yang perlu ditambahkan dalam rekomendasi pengendalian bahaya tersebut adalah penggunaan rambu penanda perbaikan jalan, sehingga unit hauler yang lain dapat mengetahui dan akan mengurangi kecepatan saat melewati area perbaikan jalan tersebut.",
                                        "taskTypeCode": "ASM",
                                        "taskTypeName": "Assignment",
                                        "taskReward": 5,
                                        "taskAnswerId": 15,
                                        "answer": "Test",
                                        "answerAttachmentId": 64,
                                        "answerAttachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/btech-85109-84197.jpg?sv=2023-11-03&st=2024-04-17T11%3A14%3A01Z&se=2024-04-18T11%3A14%3A01Z&sr=b&sp=r&sig=U5pooj0oOdWE88RtuWKPFHuksQ8%2B00vPTPOIFw34bqQ%3D",
                                        "answerReward": 0,
                                        "feedbackComment": null,
                                        "qualitativeScoreId": 0,
                                        "answerData": [
                                            {
                                                "answerId": 0,
                                                "taskId": 0,
                                                "answerCode": null,
                                                "answerField": null,
                                                "answerCaption": null
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
}
