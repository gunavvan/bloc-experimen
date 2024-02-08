class BaseUrl {
  static const String baseUrl = 'http://182.253.156.175/v2/be/';

  //dashboard
  static const String getListVideo = baseUrl + 'index.php/api/home/dashboard/getListVideo';
  static const String getKartuNpwpd = baseUrl + 'index.php/api/home/profile/cetakNpwd';
  static const String getProfile = baseUrl + 'index.php/api/home/profile/editProfile';
  static const String postGantiKataSandi = baseUrl + 'index.php/api/home/profile/updatePassword';
  static const String postUpdateProfile = baseUrl + 'index.php/api/home/profile/updateProfile';
  //auth
  static const String login = baseUrl + 'index.php/api/auth';
  static const String logout = baseUrl + 'index.php/api/auth/logout';
  //get pbjt
  static const String getDataTahun = baseUrl + 'index.php/api/master/getListTahun';
  static const String getDataBulan = baseUrl + 'index.php/api/master/getListBulan';
  static const String getListOp = baseUrl + 'index.php/api/pjbt/listop';
  static const String getListOpById = baseUrl + 'index.php/api/pjbt/listop/getOpById';
  static const String getListDoc = baseUrl + 'index.php/api/pjbt/listop/getListDoc';
  static const String getCetakTemplate = baseUrl + 'index.php/api/pjbt/listop/cetakTemplate';
  static const String getTerutang = baseUrl + 'index.php/api/pjbt/listop/getTerutang';
  static const String getKeringanan = baseUrl + 'index.php/api/pjbt/listop/getKeringanan';
  static const String getSptpdById = baseUrl + 'index.php/api/pjbt/listop/getSptpdById';
  static const String getStpdById = baseUrl + 'index.php/api/pjbt/listop/getStpdById';
  static const String getSkpdById = baseUrl + 'index.php/api/pjbt/listop/getSkpdById';
  static const String getFileRequired = baseUrl + 'index.php/api/pjbt/listop/getFileRequired';
  static const String getMetodePembayaran = baseUrl + 'index.php/api/pjbt/listop/getMethodePembayaran';
  static const String getCetakSPTPD = baseUrl + 'index.php/api/pjbt/listop/cetakSptpd';
  static const String getCetakSTPD = baseUrl + 'index.php/api/pjbt/listop/cetakStpd';
  static const String getCetakSSPD = baseUrl + 'index.php/api/pjbt/listop/cetakSspd';
  static const String getCetakSKPDKB = baseUrl + 'index.php/api/pjbt/listop/cetakSkpd';
  static const String getCetakBilling = baseUrl + 'index.php/api/pjbt/listop/cetakBilling';
  static const String postBillingProcess = baseUrl + 'index.php/api/pjbt/listop/billingProcess';
  static const String getDayaGenset = baseUrl + 'index.php/api/pjbt/listop/getJenisDayaGenset';
  static const String getTerutangPju = baseUrl + 'index.php/api/pjbt/listop/getTerutangPju';
  static const String getTarifPju = baseUrl + 'index.php/api/pjbt/listop/getTarifPju';

  //post pbjt
  static const String postUploadFile = baseUrl + 'index.php/api/pjbt/listop/uploadFiles';
  static const String postSptpdProcess = baseUrl + 'index.php/api/pjbt/listop/sptpdProcess';
  static const String postSptpdFilesById = baseUrl + 'index.php/api/pjbt/listop/getSptpdFilesById';
  static const String postStpdBilling = baseUrl + 'index.php/api/pjbt/listop/billingStpd';
  static const String postSkpdBilling = baseUrl + 'index.php/api/pjbt/listop/billingSkpd';
  static const String postBatalBilling = baseUrl + 'index.php/api/pjbt/listop/cancelBilling';

  //bphtb
  static const String getDataTahunBphtb = baseUrl + 'index.php/api/bphtb/bphtb/getListTahun';
  static const String getListBphtb = baseUrl + 'index.php/api/bphtb/bphtb';
  static const String getDropdownBphtb = baseUrl + 'index.php/api/bphtb/bphtb/jenisWp';
  static const String getDataObjekPajak = baseUrl + 'index.php/api/bphtb/bphtb/addDataPajak';
  static const String getDropdownJenisSertifikat = baseUrl + 'index.php/api/bphtb/bphtb/jenisSertifikat';
  static const String getDropdownJenisPermohonan = baseUrl + 'index.php/api/bphtb/bphtb/jenisPermohonan';
  static const String getDropdownWpJenisBphtb = baseUrl + 'index.php/api/bphtb/bphtb/jenisBphtb';
  static const String getDropdownNotaris = baseUrl + 'index.php/api/bphtb/bphtb/listNotaris';

  //penerima hak page
  static const String getDropdownProvinsi = baseUrl + 'index.php/api/master/listProvinsi';
  static const String getDropdownKabupatenKota = baseUrl + 'index.php/api/master/listKota';
  static const String getDropdownKecamatan = baseUrl + 'index.php/api/master/listKecamatan';
  static const String getDropdownKelurahan = baseUrl + 'index.php/api/master/listKelurahan';
  static const String getPenerimaHak = baseUrl + 'index.php/api/bphtb/bphtb/getPenerimaHak';

  static const String postPenggunaBphtb = baseUrl + 'index.php/api/bphtb/bphtb/jenisWp';
  static const String postDataObjek = baseUrl + 'index.php/api/bphtb/bphtb/postDataPajak';
  static const String postPenerimaHak = baseUrl + 'index.php/api/bphtb/bphtb/postPenerimaHak';
}
