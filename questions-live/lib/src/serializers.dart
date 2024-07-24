//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:questions_live/src/date_serializer.dart';
import 'package:questions_live/src/model/date.dart';

import 'package:questions_live/src/model/loopback_count.dart';
import 'package:questions_live/src/model/questions.dart';
import 'package:questions_live/src/model/questions_controller_create_request.dart';
import 'package:questions_live/src/model/questions_controller_create_request_options_inner.dart';
import 'package:questions_live/src/model/questions_controller_find200_response.dart';
import 'package:questions_live/src/model/questions_fields.dart';
import 'package:questions_live/src/model/questions_fields_one_of.dart';
import 'package:questions_live/src/model/questions_filter.dart';
import 'package:questions_live/src/model/questions_filter1.dart';
import 'package:questions_live/src/model/questions_filter_order.dart';
import 'package:questions_live/src/model/questions_partial.dart';
import 'package:questions_live/src/model/questions_with_relations.dart';

part 'serializers.g.dart';

@SerializersFor([
  LoopbackCount,

  Questions,
  QuestionsControllerCreateRequest,
  QuestionsControllerCreateRequestOptionsInner,
  QuestionsControllerFind200Response,
  QuestionsFields,
  QuestionsFieldsOneOf,
  QuestionsFilter,
  QuestionsFilter1,
  QuestionsFilterOrder,
  QuestionsPartial,
  QuestionsWithRelations,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
