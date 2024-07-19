// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final bool? deleted;
  @override
  final DateTime? deletedOn;
  @override
  final String? deletedBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? photo;
  @override
  final String? role;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.deleted,
      this.deletedOn,
      this.deletedBy,
      this.createdAt,
      this.updatedAt,
      this.id,
      required this.firstName,
      required this.lastName,
      this.fullName,
      this.email,
      this.photo,
      this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(firstName, r'User', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, r'User', 'lastName');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        deleted == other.deleted &&
        deletedOn == other.deletedOn &&
        deletedBy == other.deletedBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        email == other.email &&
        photo == other.photo &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jc(_$hash, deletedOn.hashCode);
    _$hash = $jc(_$hash, deletedBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('deleted', deleted)
          ..add('deletedOn', deletedOn)
          ..add('deletedBy', deletedBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('email', email)
          ..add('photo', photo)
          ..add('role', role))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  DateTime? _deletedOn;
  DateTime? get deletedOn => _$this._deletedOn;
  set deletedOn(DateTime? deletedOn) => _$this._deletedOn = deletedOn;

  String? _deletedBy;
  String? get deletedBy => _$this._deletedBy;
  set deletedBy(String? deletedBy) => _$this._deletedBy = deletedBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleted = $v.deleted;
      _deletedOn = $v.deletedOn;
      _deletedBy = $v.deletedBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _email = $v.email;
      _photo = $v.photo;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    final _$result = _$v ??
        new _$User._(
            deleted: deleted,
            deletedOn: deletedOn,
            deletedBy: deletedBy,
            createdAt: createdAt,
            updatedAt: updatedAt,
            id: id,
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'User', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'User', 'lastName'),
            fullName: fullName,
            email: email,
            photo: photo,
            role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
