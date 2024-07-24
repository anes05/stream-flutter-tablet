# questions_live.api.QuestionsControllerApi

## Load the API package
```dart
import 'package:questions_live/api.dart';
```

All URIs are relative to *http://127.0.0.1:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**questionsControllerCount**](QuestionsControllerApi.md#questionscontrollercount) | **GET** /questions/count | 
[**questionsControllerCreate**](QuestionsControllerApi.md#questionscontrollercreate) | **POST** /questions | 
[**questionsControllerDeleteById**](QuestionsControllerApi.md#questionscontrollerdeletebyid) | **DELETE** /questions/{id} | 
[**questionsControllerFind**](QuestionsControllerApi.md#questionscontrollerfind) | **GET** /questions | 
[**questionsControllerFindById**](QuestionsControllerApi.md#questionscontrollerfindbyid) | **GET** /questions/{id} | 
[**questionsControllerReplaceById**](QuestionsControllerApi.md#questionscontrollerreplacebyid) | **PUT** /questions/{id} | 
[**questionsControllerUpdateAll**](QuestionsControllerApi.md#questionscontrollerupdateall) | **PATCH** /questions | 
[**questionsControllerUpdateById**](QuestionsControllerApi.md#questionscontrollerupdatebyid) | **PATCH** /questions/{id} | 


# **questionsControllerCount**
> LoopbackCount questionsControllerCount(where)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final BuiltMap<String, JsonObject> where = Object; // BuiltMap<String, JsonObject> | 

try {
    final response = api.questionsControllerCount(where);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)|  | [optional] 

### Return type

[**LoopbackCount**](LoopbackCount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsControllerCreate**
> Questions questionsControllerCreate(questionsControllerCreateRequest)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final QuestionsControllerCreateRequest questionsControllerCreateRequest = ; // QuestionsControllerCreateRequest | The input of announcement function

try {
    final response = api.questionsControllerCreate(questionsControllerCreateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionsControllerCreateRequest** | [**QuestionsControllerCreateRequest**](QuestionsControllerCreateRequest.md)| The input of announcement function | 

### Return type

[**Questions**](Questions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsControllerDeleteById**
> JsonObject questionsControllerDeleteById(id)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final String id = id_example; // String | 

try {
    final response = api.questionsControllerDeleteById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerDeleteById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsControllerFind**
> QuestionsControllerFind200Response questionsControllerFind(filter)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final QuestionsFilter1 filter = ; // QuestionsFilter1 | 

try {
    final response = api.questionsControllerFind(filter);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**QuestionsFilter1**](.md)|  | [optional] 

### Return type

[**QuestionsControllerFind200Response**](QuestionsControllerFind200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsControllerFindById**
> QuestionsWithRelations questionsControllerFindById(id, filter)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final String id = id_example; // String | 
final QuestionsFilter filter = ; // QuestionsFilter | 

try {
    final response = api.questionsControllerFindById(id, filter);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**QuestionsFilter**](.md)|  | [optional] 

### Return type

[**QuestionsWithRelations**](QuestionsWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsControllerReplaceById**
> JsonObject questionsControllerReplaceById(id, questions)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final String id = id_example; // String | 
final Questions questions = ; // Questions | 

try {
    final response = api.questionsControllerReplaceById(id, questions);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **questions** | [**Questions**](Questions.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsControllerUpdateAll**
> LoopbackCount questionsControllerUpdateAll(where, questionsPartial)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final BuiltMap<String, JsonObject> where = Object; // BuiltMap<String, JsonObject> | 
final QuestionsPartial questionsPartial = ; // QuestionsPartial | 

try {
    final response = api.questionsControllerUpdateAll(where, questionsPartial);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)|  | [optional] 
 **questionsPartial** | [**QuestionsPartial**](QuestionsPartial.md)|  | [optional] 

### Return type

[**LoopbackCount**](LoopbackCount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsControllerUpdateById**
> JsonObject questionsControllerUpdateById(id, questionsPartial)



### Example
```dart
import 'package:questions_live/api.dart';

final api = QuestionsLive().getQuestionsControllerApi();
final String id = id_example; // String | 
final QuestionsPartial questionsPartial = ; // QuestionsPartial | 

try {
    final response = api.questionsControllerUpdateById(id, questionsPartial);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->questionsControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **questionsPartial** | [**QuestionsPartial**](QuestionsPartial.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

