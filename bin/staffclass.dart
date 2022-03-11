import 'pegawaiclass.dart';
import 'personclass.dart';

class staff extends pegawai{
  int tunjangankehadiran=0;
  int jatahcuti=12;
  int jumlahkehadiran=0;

  staff(String? nama, int id, int totalgaji, int gajidasar,int tunjangankehadiran, int jumlahkehadiran) : super(nama, id, totalgaji, gajidasar){
    this.tunjangankehadiran=tunjangankehadiran;
    this.jumlahkehadiran=jumlahkehadiran;
    this.jatahcuti=12;
  }
  
  //calculate bonus
  int? calculatebonus(int tunjangankehadiran, int jumlahkehadiran){
    return(tunjangankehadiran*jumlahkehadiran);
  }

  //mengajukan cuti
  void mengajukancuti(int a){
    if(a>this.jatahcuti){
      print("jatah cuti tidak mencukupi");
    }
    else{
      this.jatahcuti-=a;
    }
  }
  //set tunjangan kehadiran
  set settunjangankehadiran(int a){
    if(a<0){
      print("tunjangan tidak boleh negative");
    }
    else{
      this.tunjangankehadiran=a;
    }
  }

  //get tunjangan kehadiran
  int get gettunjangankehadiran=>this.tunjangankehadiran;

  //get jatah cuti
  int get getJatahCuti=>this.jatahcuti;

  //absensi (asumsi absensi tujuannya adalah menghitung kehadiran dari staff)
  void absensi(){
    this.jumlahkehadiran+=1;
    print("absensi");
  }
  //get jumlah kehadiran
  int get getjumlahkehadiran=>this.jumlahkehadiran;

}