import 'dosenclass.dart';
import 'personclass.dart';
import 'mahasiswaclass.dart';
import 'staffclass.dart';
import 'pegawaiclass.dart';

void main(List<String> arguments) {
  //--------------------------------------------------//
  //Test case mahasiswa
  print("--------------------------------");
  print("MAHASISWA");

  var m1 = mahasiswa("BUDI",1, 22, "Aktif", 3.0, 3.1);
  print("Nama: ${m1.nama} - JumlahSKS: ${m1.getSKS} - Status Kuliah: ${m1.getStat} - IPS: ${m1.IPS} - IPK: ${m1.getIPK}");
   
  //set SKS
  m1.isisks = 3;

  //set status
  m1.isistat="Cuti";

  //print sks
  print("Jumlah sks ${m1.getSKS}");

  //set IPS
  m1.isiIPS=3.5;
  print("IPS: ${m1.IPS}");

  //lihat IPK
  print("IPK ${m1.getIPK}");

  //------------------------------------------------//
  //Test case Pegawai//

  //Dosen LB//
  print("--------------------------------");
  print("DOSEN LB");

  var dosenlb= dosenLB("Bambang", 2, 0, 5000000, 0);
  print("Nama: ${dosenlb.nama} - Total Gaji: ${dosenlb.TotalGaji} - Gaji Dasar: ${dosenlb.gajidasar} - Jumlah SKS Mengajar: ${dosenlb.getjumlahsksmengajar}");

  //Total SKS yang diampu
  dosenlb.setjumlahsksmengajar=20;
  print("SKS yg diampu: ${dosenlb.getjumlahsksmengajar}");

  //Total gaji
  dosenlb.TotalGaji=dosenlb.calculatebonus(dosenlb.gajidasar)!;
  print("Total Gaji : ${dosenlb.totalgaji}");

  //Dosen Tetap//
  print("--------------------------------");
  print("DOSEN TETAP");

  var dosentetap1= dosentetap("Lisa", 3, 0, 5000000, 150000, 40000, 0);
  print("Nama: ${dosentetap1.nama} - Total Gaji: ${dosentetap1.TotalGaji} - Gaji Dasar: ${dosentetap1.gajidasar} - Jumlah SKS Mengajar: ${dosentetap1.getjumlahsksmengajar}");

  //Total SKS yang diampu
  dosentetap1.setjumlahsksmengajar=25;
  print("SKS yg diampu: ${dosentetap1.getjumlahsksmengajar}");

  //Total gaji
  dosentetap1.TotalGaji=dosentetap1.gajidasar+dosentetap1.calculatebonus(dosentetap1.gajitunjangan,dosentetap1.getjumlahsksmengajar)!;
  print("Total Gaji : ${dosentetap1.totalgaji}");

  //Dosen Tamu//
  print("--------------------------------");
  print("DOSEN TAMU");

  var dosentamu1= dosentamu("Jenny", 4, 0, 0, 150000);
  print("Nama: ${dosentamu1.nama} - Total Gaji: ${dosentamu1.TotalGaji} - Tunjangan : ${dosentamu1.gajitunjangan} ");

  //Total gaji
  dosentamu1.TotalGaji=dosentamu1.calculatebonus(dosentamu1.gajitunjangan)!;
  print("Total Gaji : ${dosentamu1.totalgaji}");


  //Staff//
   print("--------------------------------");
  print("STAFF");
  var staff1=staff("Laura", 5, 0, 1500000, 50000 , 8);
  print("Nama: ${staff1.nama} - Gaji Dasar: ${staff1.gajidasar} - Tunjangan: ${staff1.tunjangankehadiran} - Jumlah datang: ${staff1.jumlahkehadiran}");

  //Total Gaji
  staff1.totalgaji=staff1.gajidasar+staff1.calculatebonus(staff1.tunjangankehadiran, staff1.getjumlahkehadiran)!;
  print("Total Gaji : ${staff1.totalgaji}");

  //Absensi
  staff1.absensi();
  print(staff1.jumlahkehadiran);

  //Cuti
  staff1.mengajukancuti(10);
  print(staff1.getJatahCuti);

}
