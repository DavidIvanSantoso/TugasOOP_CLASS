import 'personclass.dart';


class pegawai extends person{
  int totalgaji=0;
  int gajidasar=0;
  pegawai(String? nama, int id,int totalgaji,int gajidasar) : super(nama, id){
    this.gajidasar=gajidasar;
  }

  set TotalGaji (int totalgaji){
    this.totalgaji=totalgaji;
  }
  int get TotalGaji=>this.totalgaji;

  set GajiDasar(int gajidasar){
    this.gajidasar=gajidasar;
  }
  int get GajiDasar=>this.gajidasar;
  
  
}