import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthControllerApi
void main() {
  final instance = Openapi().getAuthControllerApi();

  group(AuthControllerApi, () {
    //Future authControllerFinishSignup(AuthControllerFinishSignupRequest authControllerFinishSignupRequest) async
    test('test authControllerFinishSignup', () async {
      // TODO
    });

    //Future<JsonObject> authControllerLogin(AuthControllerLoginRequest authControllerLoginRequest) async
    test('test authControllerLogin', () async {
      // TODO
    });

    //Future<JsonObject> authControllerLogout() async
    test('test authControllerLogout', () async {
      // TODO
    });

    //Future<JsonObject> authControllerSignup(AuthControllerSignupRequest authControllerSignupRequest) async
    test('test authControllerSignup', () async {
      // TODO
    });

    //Future<JsonObject> authControllerWhoAmI() async
    test('test authControllerWhoAmI', () async {
      // TODO
    });

  });
}
