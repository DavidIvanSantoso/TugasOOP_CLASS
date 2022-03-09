import 'pegawaiclass.dart';

class staff extends pegawai{
  int tunjangankehadiran=0;
  int jatahcuti=12;

  staff(String? nama, int id, int totalgaji, int gajidasar) : super(nama, id, totalgaji, gajidasar);
  
  int get getJatahCuti=>this.jatahcuti;
  void absensi(){
    print("absensi");
  }

}