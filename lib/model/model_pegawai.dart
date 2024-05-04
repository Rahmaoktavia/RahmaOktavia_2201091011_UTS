// To parse this JSON data, do
//
//     final modelPegawaiLatihan = modelPegawaiLatihanFromJson(jsonString);

import 'dart:convert';

ModelPegawaiLatihan modelPegawaiLatihanFromJson(String str) => ModelPegawaiLatihan.fromJson(json.decode(str));

String modelPegawaiLatihanToJson(ModelPegawaiLatihan data) => json.encode(data.toJson());

class ModelPegawaiLatihan {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelPegawaiLatihan({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelPegawaiLatihan.fromJson(Map<String, dynamic> json) => ModelPegawaiLatihan(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String nama;
  String nobp;
  String nohp;
  String email;
  DateTime tanggalInput;

  Datum({
    required this.id,
    required this.nama,
    required this.nobp,
    required this.nohp,
    required this.email,
    required this.tanggalInput,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    nama: json["nama"],
    nobp: json["nobp"],
    nohp: json["nohp"],
    email: json["email"],
    tanggalInput: DateTime.parse(json["tanggal_input"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama": nama,
    "nobp": nobp,
    "nohp": nohp,
    "email": email,
    "tanggal_input": tanggalInput.toIso8601String(),
  };
}