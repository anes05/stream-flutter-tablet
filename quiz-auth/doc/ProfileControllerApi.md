# openapi.api.ProfileControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:3020/api/auth-service*

Method | HTTP request | Description
------------- | ------------- | -------------
[**profileControllerProfile**](ProfileControllerApi.md#profilecontrollerprofile) | **GET** /profile | 
[**profileControllerUpdateById**](ProfileControllerApi.md#profilecontrollerupdatebyid) | **PATCH** /profile | 


# **profileControllerProfile**
> JsonObject profileControllerProfile()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getProfileControllerApi();

try {
    final response = api.profileControllerProfile();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileControllerApi->profileControllerProfile: $e\n');
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

# **profileControllerUpdateById**
> JsonObject profileControllerUpdateById(userPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getProfileControllerApi();
final UserPartial userPartial = ; // UserPartial | 

try {
    final response = api.profileControllerUpdateById(userPartial);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileControllerApi->profileControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPartial** | [**UserPartial**](UserPartial.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

