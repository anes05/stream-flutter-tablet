# questions_live.api.PingControllerApi

## Load the API package
```dart
import 'package:questions_live/api.dart';
```

All URIs are relative to *http://127.0.0.1:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pingControllerPing**](PingControllerApi.md#pingcontrollerping) | **GET** /ping | 


# **pingControllerPing**
> PingResponse pingControllerPing()



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getPingControllerApi();

try {
    final response = api.pingControllerPing();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PingControllerApi->pingControllerPing: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PingResponse**](PingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

