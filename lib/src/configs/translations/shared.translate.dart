import 'package:easy_localization/easy_localization.dart';

class SharedTranslate {
  static const _initial = 'shared';

  static String get isRequired => '$_initial-isRequired'.tr();
  static String get yes => '$_initial-yes'.tr();
  static String get no => '$_initial-no'.tr();
  static String get back => '$_initial-back'.tr();
  static String get timeout => '$_initial-timeout'.tr();
  static String get darkMode => '$_initial-darkmode'.tr();
  static String get lightMode => '$_initial-lightmode'.tr();
  static String get info => '$_initial-info'.tr();
  static String get success => '$_initial-success'.tr();
  static String get confirmSubmit => '$_initial-confirmSubmit'.tr();
  static String get confirmDraft => '$_initial-confirmDraft'.tr();
  static String get confirmDelete => '$_initial-confirmDelete'.tr();
  static String get uploadFiles => '$_initial-uploadFiles'.tr();
  static String get fileDoc => '$_initial-fileDoc'.tr();
  static String get save => '$_initial-save'.tr();
  static String get cancel => '$_initial-cancel'.tr();
  static String get saveAsDraft => '$_initial-saveAsDraft'.tr();
  static String get deleteDraft => '$_initial-deleteDraft'.tr();
  static String get submit => '$_initial-submit'.tr();
  static String get reSubmit => '$_initial-reSubmit'.tr();
  static String get notesUpload => '$_initial-notesUpload'.tr();
  static String get folder => '$_initial-folder'.tr();
  static String get gallery => '$_initial-gallery'.tr();
  static String get camera => '$_initial-camera'.tr();
  static String get dataEmpty => '$_initial-dataEmpty'.tr();
  static String get notes => '$_initial-notes'.tr();
  static String get link => '$_initial-link'.tr();
  static String get attachment => '$_initial-attachment'.tr();
  static String get employeeName => '$_initial-employeeName'.tr();
  static String get gender => '$_initial-gender'.tr();
  static String get filter => '$_initial-filter'.tr();
  static String get allData => '$_initial-allData'.tr();
  static String get search => '$_initial-search'.tr();
  static String get startDate => '$_initial-startDate'.tr();
  static String get endDate => '$_initial-endDate'.tr();
  static String get noTransaction => '$_initial-noTransaction'.tr();
  static String get man => '$_initial-man'.tr();
  static String get woman => '$_initial-woman'.tr();
  static String get pleaseCompleteCurrentTransaction => '$_initial-pleaseCompleteCurrentTransaction'.tr();
  static String get result => '$_initial-result'.tr();
  static String get close => '$_initial-close'.tr();
  static String get select => '$_initial-select'.tr();
  static String get name => '$_initial-name'.tr();
  static String get errorOccursWhenRetrievingData => '$_initial-errorOccursWhenRetrievingData'.tr();
  static String get errorOccurred => '$_initial-errorOccurred'.tr();
  static String get date => '$_initial-date'.tr();
  static String get invalidDate => '$_initial-invalidDate'.tr();
  static String get invalidPeriod => '$_initial-invalidPeriod'.tr();
  static String get processing => '$_initial-processing'.tr();
  static String get number => '$_initial-number'.tr();
  static String get status => '$_initial-status'.tr();
  static String get view => '$_initial-view'.tr();
  static String get delete => '$_initial-delete'.tr();
  static String get months => '$_initial-months'.tr();
  static String get downloading => '$_initial-downloading'.tr();
  static String get edit => '$_initial-edit'.tr();
  static String get remark => '$_initial-remark'.tr();
  static String get invalid => '$_initial-invalid'.tr();
  static Map<String, String> translateEn = {
    isRequired: 'is required',
    yes: 'Yes',
    no: 'No',
    back: 'Back',
    timeout: 'Your session has timed out. Please login again',
    darkMode: 'Dark mode',
    lightMode: 'Light mode',
    info: 'Information',
    success: 'Success',
    confirmSubmit: 'Are you sure want to submit this request?',
    confirmDraft: 'Are you sure want to save this request as a draft?',
    confirmDelete: 'Are you sure want to delete this request?',
    uploadFiles: 'Upload Files',
    fileDoc: 'File Document',
    save: 'Save',
    cancel: 'Cancel',
    saveAsDraft: 'Save as Draft',
    deleteDraft: 'Delete Draft',
    submit: 'Submit',
    reSubmit: 'Resubmit',
    notesUpload: 'File must be of format {format}, maximum size {size} MB',
    folder: 'Folder',
    gallery: 'Gallery',
    camera: 'Camera',
    dataEmpty: 'Data Empty',
    notes: 'Notes',
    link: 'Link',
    attachment: 'Attachment',
    employeeName: 'Employee Name',
    gender: 'Gender',
    filter: 'Filter',
    allData: 'All Data',
    search: 'Search',
    startDate: 'Start Date',
    endDate: 'End Date',
    noTransaction: 'No. Transaction',
    man: 'Man',
    woman: 'Woman',
    pleaseCompleteCurrentTransaction: "Please complete the existing transaction",
    result: 'Result',
    close: 'Close',
    select: 'Select',
    name: 'Name',
    errorOccursWhenRetrievingData: 'Error occurs when retrieving data',
    errorOccurred: 'Error occurs',
    date: 'Date',
    invalidDate: 'Invalid Date',
    invalidPeriod: 'Invalid Period',
    processing: 'Processing',
    number: 'Number',
    status: 'Status',
    view: 'Lihat',
    delete: 'Delete',
    months: 'Months',
    downloading: 'Downloading',
    edit: 'Edit',
    remark: 'Remark',
    invalid: 'Invalid'
  };
  static Map<String, String> translateId = {
    isRequired: 'wajib di isi',
    yes: 'Ya',
    no: 'Tidak',
    back: 'Kembali',
    timeout: 'Sesi Anda telah berakhir. Silakan masuk lagi',
    darkMode: 'Mode Gelap',
    lightMode: 'Mode Terang',
    info: 'Informasi',
    success: 'Sukses',
    confirmSubmit: 'Apakah anda yakin ingin \nmengirim request ini?',
    confirmDraft: 'Apakah anda yakin ingin \nmenyimpan request ini sebagai draft?',
    confirmDelete: 'Apakah anda yakin ingin \nhapus request ini?',
    uploadFiles: 'Unggah Berkas',
    fileDoc: 'Dokumen berkas',
    save: 'Simpan',
    cancel: 'Batal',
    saveAsDraft: 'Simpan Draft',
    deleteDraft: 'Hapus Draft',
    submit: 'Kirim',
    reSubmit: 'Kirim Ulang',
    notesUpload: 'File harus berformat {format}, ukuran maksimal {size} MB',
    folder: 'Berkas',
    gallery: 'Galeri',
    camera: 'Kamera',
    dataEmpty: 'Data Kosong',
    notes: 'Catatan',
    link: 'Tautan',
    attachment: 'Lampiran',
    employeeName: 'Nama Karyawan',
    gender: 'Jenis Kelamin',
    filter: 'Filter',
    allData: 'Semua Data',
    search: 'Pencarian',
    startDate: 'Tanggal Mulai',
    endDate: 'Tanggal Berakhir',
    noTransaction: 'No. Transaksi',
    man: 'Pria',
    woman: 'Wanita',
    pleaseCompleteCurrentTransaction: "Harap selesaikan transaksi yang ada",
    result: 'Hasilnya',
    close: 'Tutup',
    select: 'Pilih',
    name: 'Nama',
    errorOccursWhenRetrievingData: 'Terjadi kesalahan saat mengambil data',
    errorOccurred: 'Terjadi kesalahan',
    date: 'Tanggal',
    invalidDate: 'Tanggal tidak valid',
    invalidPeriod: 'Periode Tidak Valid',
    processing: 'Memproses',
    number: 'Nomor',
    status: 'Status',
    view: 'Lihat',
    delete: 'Hapus',
    months: 'Bulan',
    downloading: 'Mengunduh',
    edit: 'Edit',
    remark: 'Keterangan',
    invalid: 'Tidak Valid',
  };
}
