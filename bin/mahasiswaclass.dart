import 'personclass.dart';

class mahasiswa extends person{
  int sks=0;
  String? statkuliah=" ";
  double IPS=0;
  double IPK=0;

  mahasiswa(String? nama, int id,int sks,String statkuliah, double IPS, double IPK) : super(nama,id){
    this.sks=sks;
    this.statkuliah=statkuliah;
    this.IPS=IPS;
    this.IPK=IPK;
  }

  //set get sks
  set isisks(int a){
    sks=a;
  }
  int get getSKS=>this.sks;

  //set get status kuliah
  set isistat(String? stat){
    this.statkuliah=stat!;
  }

  String? getStatus(){
    return statkuliah;
  }
  get getStat=>this.statkuliah;

  //set get IPS
  set isiIPS(double IPS){
    this.IPS=IPS;
  }

  //set get sks
  set isiIPK(double IPK){
    this.IPK=IPK;
  }
  double get getIPK=>this.IPK;

  //ambil sks
  set ambilsks(int a){
    if(a<2 && a>24){
      print("Pengambilan sks minimum 2 dan maksimal 24");
    }
    else{
      sks=a;
    }
  }

}