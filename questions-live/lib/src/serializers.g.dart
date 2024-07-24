// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(LoopbackCount.serializer)
      ..add(Questions.serializer)
      ..add(QuestionsControllerCreateRequest.serializer)
      ..add(QuestionsControllerCreateRequestOptionsInner.serializer)
      ..add(QuestionsControllerFind200Response.serializer)
      ..add(QuestionsFields.serializer)
      ..add(QuestionsFieldsOneOf.serializer)
      ..add(QuestionsFilter.serializer)
      ..add(QuestionsFilter1.serializer)
      ..add(QuestionsFilterOrder.serializer)
      ..add(QuestionsPartial.serializer)
      ..add(QuestionsWithRelations.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => new ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => new ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => new ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(QuestionsControllerCreateRequestOptionsInner)
          ]),
          () => new ListBuilder<QuestionsControllerCreateRequestOptionsInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(QuestionsWithRelations)]),
          () => new ListBuilder<QuestionsWithRelations>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
