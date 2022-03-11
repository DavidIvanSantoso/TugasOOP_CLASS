import 'pegawaiclass.dart';

class dosentetap extends pegawai{
  int gajitunjangan=0;
  int gajitambahan=40000;
  int jumlahsksmengajar=0;


  dosentetap(String? nama, int id, int totalgaji, int gajidasar,int gajitunjangan, int gajitambahan, int jumlahsksmengajar) : super(nama, id, totalgaji, gajidasar){gajitambahan=gajitambahan;
    this.gajitunjangan=gajitunjangan
  ;}

  //set totalsks
  set setjumlahsksmengajar(int a){
    this.jumlahsksmengajar=a;
  }
  
  //get total sks
  int get getjumlahsksmengajar=> this.jumlahsksmengajar;
  
  //void calculate bonus
  int? calculatebonus(int gajitunjangan, int jumlahsks){
    return (gajitunjangan+(jumlahsks*this.gajitambahan));
  }
  
}
class dosentamu extends pegawai{
  int gajitunjangan=0;

  dosentamu(String? nama, int id, int totalgaji, int gajidasar, int gajitunjangan) : super(nama, id, totalgaji, gajidasar){
    this.gajitunjangan=gajitunjangan;  
  ;}
  
  //calculatebonus
  int? calculatebonus(int gajitunjangan){
    return (gajitunjangan);
  }
}
class dosenLB extends pegawai{
  int jumlahsksmengajar=0;

  dosenLB(String? nama, int id, int totalgaji, int gajidasar,int jumlahsksmengajar) : super(nama, id, totalgaji, gajidasar);
  
  //set totalsks
  set setjumlahsksmengajar(int a){
    this.jumlahsksmengajar=a;
  }
  //get total sks
  int get getjumlahsksmengajar=> this.jumlahsksmengajar;
  //calculatebonus
  int? calculatebonus(int gajidasar){
    return gajidasar;
  }
}
