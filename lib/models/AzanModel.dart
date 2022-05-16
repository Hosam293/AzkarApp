class AzanModel
{

  dynamic timingsFajr;


  dynamic timingsDhuhr;

  AzanModel({this.timingsFajr, this.timingsDhuhr});


  AzanModel.fromJson(Map<dynamic, dynamic> map)
{
this.timingsFajr=map["Fajr"];
this.timingsDhuhr=map["Dhuhr"];

}

}