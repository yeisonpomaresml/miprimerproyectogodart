import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'usuario.g.dart';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));
String usuarioFromJsonToJson(Usuario data) => json.encode(data.toJson());
List<Usuario> listaUsuarioFromJson(String str) => List<Usuario>.from(json.decode(str).map((x) => Usuario.fromJson(x)));

@JsonSerializable()
class Usuario {
  int? id;
  String? nombre;
  String? apellido;
  String? edad;
  bool? estado;

  Usuario({
    this.id,
    this.nombre,
    this.apellido,
    this.edad,
    this.estado,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => _$UsuarioFromJson(json);

  Map<String, dynamic> toJson() => _$UsuarioToJson(this);

  @override
  String toString() {
    return 'Usuario{id: $id, nombre: $nombre, apellido: $apellido, edad: $edad, estado: $estado}';
  }
}
