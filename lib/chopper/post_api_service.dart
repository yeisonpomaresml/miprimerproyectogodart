import 'package:chopper/chopper.dart';

part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class PostApiService extends ChopperService{

  @Get(path: '')
  Future<Response> usuariosGet();

  @Post(path: '')
  Future<Response> usuariosPost(@Body() Map<String, dynamic> body);

  @Put(path: '{id}')
  Future<Response> usuariosPut(@Path('id') String id,@Body() Map<String, dynamic> body);

  @Get(path: '{id}')
  Future<Response> usuariosGetOne(@Path('id') String id);

  static PostApiService create(){
    final client = ChopperClient(
        baseUrl: 'http://10.0.2.2:8080',
        converter: JsonConverter(),
      services: [_$PostApiService()]
    );

    return _$PostApiService(client);
  }
}

