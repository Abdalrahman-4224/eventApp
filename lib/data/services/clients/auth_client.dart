import 'package:liverpod_structure/data/models/authentication_model.dart';
import 'package:liverpod_structure/data/services/clients/callback.dart';

import '_clients.dart';

part "auth_client.g.dart";

@riverpod
AuthClient authClient(AuthClientRef ref) => AuthClient(ref.dio);

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('/login')
  FutureApiResponse<AuthenticationModel> login(@Body() dynamic data);
}