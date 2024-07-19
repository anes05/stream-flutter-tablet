# openapi.api.AuthControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:3020/api/auth-service*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerFinishSignup**](AuthControllerApi.md#authcontrollerfinishsignup) | **POST** /auth/signup-finish | 
[**authControllerLogin**](AuthControllerApi.md#authcontrollerlogin) | **POST** /auth/login | 
[**authControllerLogout**](AuthControllerApi.md#authcontrollerlogout) | **POST** /auth/logout | 
[**authControllerSignup**](AuthControllerApi.md#authcontrollersignup) | **POST** /auth/signup-init | 
[**authControllerWhoAmI**](AuthControllerApi.md#authcontrollerwhoami) | **GET** /auth/me | 


# **authControllerFinishSignup**
> authControllerFinishSignup(authControllerFinishSignupRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthControllerApi();
final AuthControllerFinishSignupRequest authControllerFinishSignupRequest = ; // AuthControllerFinishSignupRequest | Validation user by sms

try {
    api.authControllerFinishSignup(authControllerFinishSignupRequest);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->authControllerFinishSignup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authControllerFinishSignupRequest** | [**AuthControllerFinishSignupRequest**](AuthControllerFinishSignupRequest.md)| Validation user by sms | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogin**
> JsonObject authControllerLogin(authControllerLoginRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthControllerApi();
final AuthControllerLoginRequest authControllerLoginRequest = ; // AuthControllerLoginRequest | The input of login function

try {
    final response = api.authControllerLogin(authControllerLoginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->authControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authControllerLoginRequest** | [**AuthControllerLoginRequest**](AuthControllerLoginRequest.md)| The input of login function | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogout**
> JsonObject authControllerLogout()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthControllerApi();

try {
    final response = api.authControllerLogout();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->authControllerLogout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerSignup**
> JsonObject authControllerSignup(authControllerSignupRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthControllerApi();
final AuthControllerSignupRequest authControllerSignupRequest = ; // AuthControllerSignupRequest | The input of login function

try {
    final response = api.authControllerSignup(authControllerSignupRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->authControllerSignup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authControllerSignupRequest** | [**AuthControllerSignupRequest**](AuthControllerSignupRequest.md)| The input of login function | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerWhoAmI**
> JsonObject authControllerWhoAmI()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthControllerApi();

try {
    final response = api.authControllerWhoAmI();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->authControllerWhoAmI: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

