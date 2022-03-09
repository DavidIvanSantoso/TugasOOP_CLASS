import 'pegawaiclass.dart';

class dosentetap extends pegawai{
  int gajitunjangan=0;
  int gajitambahan=0;
  int jumlahsksmengajar=0;

  dosentetap(String? nama, int id, int totalgaji, int gajidasar,int gajitunjangan, int gajitambahan, int jumlahsksmengajar) : super(nama, id, totalgaji, gajidasar);

  
}
class dosentamu extends pegawai{
  int jumlahsksmengajar=0;
  int gajitunjangan=0;
  int gajitambahan=0;

  dosentamu(String? nama, int id, int totalgaji, int gajidasar,int jumlahsksmengajar,int gajitunjangan,int gajitambahan) : super(nama, id, totalgaji, gajidasar);
  
}
class dosenLB extends pegawai{
  int jumlahsksmengajar=0;

  dosenLB(String? nama, int id, int totalgaji, int gajidasar,int jumlahsksmengajar) : super(nama, id, totalgaji, gajidasar);
  

}
