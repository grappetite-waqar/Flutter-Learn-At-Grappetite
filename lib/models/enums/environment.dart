import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'environment.g.dart';

class Environment extends EnumClass {
  static const Environment staging = _$staging;
  static const Environment production = _$production;

  const Environment._(super.name);

  static BuiltSet<Environment> get values => _$values;
  static Environment valueOf(final String name) => _$valueOf(name);
  static Serializer<Environment> get serializer => _$environmentSerializer;
}
