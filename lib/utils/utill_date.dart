import 'package:intl/intl.dart';

getDate(String tanggal) {
  // return DateFormat('dd MM yyyy')
  //     .format(DateFormat("ddMMyyyy").parse(tanggal));

  if (tanggal == null || tanggal.isEmpty) {
    return "";
  } else {
    if (tanggal.contains("-")) {
      var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
      var inputDate = inputFormat.parse(tanggal);
      var outputFormat = DateFormat('dd MMM yyyy HH:mm:ss');
      return outputFormat.format(inputDate);
    } else {
      String hari = tanggal.substring(0, 2);
      String bulan = tanggal.substring(2, 4);
      String tahun = tanggal.substring(4, 8);

      String a = "$tahun-$bulan-$hari 00:00";

      var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
      var inputDate = inputFormat.parse(a);
      var outputFormat = DateFormat('dd MMM yyyy');
      return outputFormat.format(inputDate);
    }
  }
}