import 'personclass.dart';

class mahasiswa extends person{
  int sks=0;
  String? statkuliah="";
  int IPS=0;
  int IPK=0;

  mahasiswa(String? nama, int id,int sks,String? statkuliah, int IPS, int IPK) : super(nama,id){
    this.sks=sks;
    this.statkuliah="";
    this.IPS=IPS;
    this.IPK=IPK;
  }

  //set get sks
  set isisks(int sks){
    this.sks=sks;
  }
  int get getSKS=>this.sks;

  //set get sks
  set isistat(int stat){
    this.statkuliah=statkuliah;
  }
  String? get getStat=>this.statkuliah;

  //set get IPS
  set isiIPS(int IPS){
    this.IPS=IPS;
  }

  //set get sks
  set isiIPK(int IPK){
    this.IPK=IPK;
  }
  int get getIPK=>this.IPK;

}