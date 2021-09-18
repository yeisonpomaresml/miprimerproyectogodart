// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map<String, dynamic> json) {
  return Usuario(
    id: json['id'] as int?,
    nombre: json['nombre'] as String?,
    apellido: json['apellido'] as String?,
    edad: json['edad'] as String?,
    estado: json['estado'] as bool?,
  );
}

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'edad': instance.edad,
      'estado': instance.estado,
    };
