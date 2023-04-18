// Autogenerated from Pigeon (v7.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

/// Тема карты
enum DataMapTheme {
  /// Тема, заданная на устройстве пользователя
  auto,
  /// Темная тема карты
  dark,
  /// Светлая тема карты
  light,
}

/// Состояние камеры
/// https://docs.2gis.com/ru/android/sdk/reference/5.1/ru.dgis.sdk.map.CameraState
enum DataCameraState {
  /// Камера управляется пользователем.
  busy,
  /// Eсть активный перелёт.
  fly,
  /// Камера в режиме слежения за позицией.
  followPosition,
  /// Камера не управляется пользователем и нет активных перелётов.
  free,
}

/// Тип анимации при перемещении камеры
/// https://docs.2gis.com/ru/android/sdk/reference/5.1/ru.dgis.sdk.map.CameraAnimationType
enum DataCameraAnimationType {
  /// Тип перелёта выбирается в зависимости от расстояния между начальной и конечной позициями
  def,
  /// Линейное изменение параметров позиции камеры
  linear,
  /// Zoom изменяется таким образом, чтобы постараться в какой-то момент перелёта отобразить начальную и конечную позиции.
  /// Позиции могут быть не отображены, если текущие ограничения (см. ICamera::zoom_restrictions()) не позволяют установить столь малый zoom.
  showBothPositions,
}

class DataCreationParams {
  DataCreationParams({
    required this.position,
    required this.zoom,
    required this.mapTheme,
  });

  DataLatLng position;

  double zoom;

  DataMapTheme mapTheme;

  Object encode() {
    return <Object?>[
      position.encode(),
      zoom,
      mapTheme.index,
    ];
  }

  static DataCreationParams decode(Object result) {
    result as List<Object?>;
    return DataCreationParams(
      position: DataLatLng.decode(result[0]! as List<Object?>),
      zoom: result[1]! as double,
      mapTheme: DataMapTheme.values[result[2]! as int],
    );
  }
}

class DataLatLng {
  DataLatLng({
    required this.latitude,
    required this.longitude,
  });

  double latitude;

  double longitude;

  Object encode() {
    return <Object?>[
      latitude,
      longitude,
    ];
  }

  static DataLatLng decode(Object result) {
    result as List<Object?>;
    return DataLatLng(
      latitude: result[0]! as double,
      longitude: result[1]! as double,
    );
  }
}

class DataMarkerBitmap {
  DataMarkerBitmap({
    required this.bytes,
    this.width,
    this.height,
  });

  /// Байты изображения
  Uint8List bytes;

  /// Ширина изображения,
  /// если null, используется значение по умолчанию,
  /// которое зависит от нативной реализации
  double? width;

  /// Высота изображения,
  /// если null, используется значение по умолчанию,
  /// которое зависит от нативной реализации
  double? height;

  Object encode() {
    return <Object?>[
      bytes,
      width,
      height,
    ];
  }

  static DataMarkerBitmap decode(Object result) {
    result as List<Object?>;
    return DataMarkerBitmap(
      bytes: result[0]! as Uint8List,
      width: result[1] as double?,
      height: result[2] as double?,
    );
  }
}

class DataMarker {
  DataMarker({
    required this.markerId,
    this.bitmap,
    required this.position,
    this.infoText,
  });

  /// Уникальный идентификатор маркера
  DataMapObjectId markerId;

  /// Изображение маркера
  /// Используется нативная реализация дефолтного маркера,
  /// если null
  DataMarkerBitmap? bitmap;

  /// Позиция маркера
  DataLatLng position;

  /// Текст под маркером
  String? infoText;

  Object encode() {
    return <Object?>[
      markerId.encode(),
      bitmap?.encode(),
      position.encode(),
      infoText,
    ];
  }

  static DataMarker decode(Object result) {
    result as List<Object?>;
    return DataMarker(
      markerId: DataMapObjectId.decode(result[0]! as List<Object?>),
      bitmap: result[1] != null
          ? DataMarkerBitmap.decode(result[1]! as List<Object?>)
          : null,
      position: DataLatLng.decode(result[2]! as List<Object?>),
      infoText: result[3] as String?,
    );
  }
}

class GeoPoint {
  GeoPoint({
    required this.latitude,
    required this.longitude,
  });

  /// Координата долготы
  double latitude;

  /// Координата широты
  double longitude;

  Object encode() {
    return <Object?>[
      latitude,
      longitude,
    ];
  }

  static GeoPoint decode(Object result) {
    result as List<Object?>;
    return GeoPoint(
      latitude: result[0]! as double,
      longitude: result[1]! as double,
    );
  }
}

class DataCameraStateValue {
  DataCameraStateValue({
    required this.value,
  });

  DataCameraState value;

  Object encode() {
    return <Object?>[
      value.index,
    ];
  }

  static DataCameraStateValue decode(Object result) {
    result as List<Object?>;
    return DataCameraStateValue(
      value: DataCameraState.values[result[0]! as int],
    );
  }
}

/// Отступ камеры от краев экрана в пикселях
class DataPadding {
  DataPadding({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });

  int left;

  int top;

  int right;

  int bottom;

  Object encode() {
    return <Object?>[
      left,
      top,
      right,
      bottom,
    ];
  }

  static DataPadding decode(Object result) {
    result as List<Object?>;
    return DataPadding(
      left: result[0]! as int,
      top: result[1]! as int,
      right: result[2]! as int,
      bottom: result[3]! as int,
    );
  }
}

class DataLatLngBounds {
  DataLatLngBounds({
    required this.southwest,
    required this.northeast,
  });

  DataLatLng southwest;

  DataLatLng northeast;

  Object encode() {
    return <Object?>[
      southwest.encode(),
      northeast.encode(),
    ];
  }

  static DataLatLngBounds decode(Object result) {
    result as List<Object?>;
    return DataLatLngBounds(
      southwest: DataLatLng.decode(result[0]! as List<Object?>),
      northeast: DataLatLng.decode(result[1]! as List<Object?>),
    );
  }
}

/// Позиция камеры
class DataCameraPosition {
  DataCameraPosition({
    required this.bearing,
    required this.target,
    required this.tilt,
    required this.zoom,
  });

  /// Азимут камеры в градусах
  double bearing;

  /// Центр камеры
  DataLatLng target;

  /// Угол наклона камеры (в градусах)
  double tilt;

  /// Зум камеры
  double zoom;

  Object encode() {
    return <Object?>[
      bearing,
      target.encode(),
      tilt,
      zoom,
    ];
  }

  static DataCameraPosition decode(Object result) {
    result as List<Object?>;
    return DataCameraPosition(
      bearing: result[0]! as double,
      target: DataLatLng.decode(result[1]! as List<Object?>),
      tilt: result[2]! as double,
      zoom: result[3]! as double,
    );
  }
}

class DataMapObjectId {
  DataMapObjectId({
    required this.value,
  });

  String value;

  Object encode() {
    return <Object?>[
      value,
    ];
  }

  static DataMapObjectId decode(Object result) {
    result as List<Object?>;
    return DataMapObjectId(
      value: result[0]! as String,
    );
  }
}

class DataMarkerUpdates {
  DataMarkerUpdates({
    required this.toRemove,
    required this.toAdd,
  });

  List<DataMarker?> toRemove;

  List<DataMarker?> toAdd;

  Object encode() {
    return <Object?>[
      toRemove,
      toAdd,
    ];
  }

  static DataMarkerUpdates decode(Object result) {
    result as List<Object?>;
    return DataMarkerUpdates(
      toRemove: (result[0] as List<Object?>?)!.cast<DataMarker?>(),
      toAdd: (result[1] as List<Object?>?)!.cast<DataMarker?>(),
    );
  }
}

class DataPolylineUpdates {
  DataPolylineUpdates({
    required this.toRemove,
    required this.toAdd,
  });

  List<DataPolyline?> toRemove;

  List<DataPolyline?> toAdd;

  Object encode() {
    return <Object?>[
      toRemove,
      toAdd,
    ];
  }

  static DataPolylineUpdates decode(Object result) {
    result as List<Object?>;
    return DataPolylineUpdates(
      toRemove: (result[0] as List<Object?>?)!.cast<DataPolyline?>(),
      toAdd: (result[1] as List<Object?>?)!.cast<DataPolyline?>(),
    );
  }
}

class DataPolyline {
  DataPolyline({
    required this.polylineId,
    required this.points,
    required this.width,
    required this.color,
    required this.erasedPart,
  });

  /// Уникальный идентификатор маркера
  DataMapObjectId polylineId;

  List<DataLatLng?> points;

  double width;

  int color;

  double erasedPart;

  Object encode() {
    return <Object?>[
      polylineId.encode(),
      points,
      width,
      color,
      erasedPart,
    ];
  }

  static DataPolyline decode(Object result) {
    result as List<Object?>;
    return DataPolyline(
      polylineId: DataMapObjectId.decode(result[0]! as List<Object?>),
      points: (result[1] as List<Object?>?)!.cast<DataLatLng?>(),
      width: result[2]! as double,
      color: result[3]! as int,
      erasedPart: result[4]! as double,
    );
  }
}

class _PluginHostApiCodec extends StandardMessageCodec {
  const _PluginHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is DataCameraPosition) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is DataLatLng) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is DataLatLngBounds) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is DataMapObjectId) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is DataMarker) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is DataMarkerBitmap) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is DataMarkerUpdates) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is DataPadding) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is DataPolyline) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else if (value is DataPolylineUpdates) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else if (value is GeoPoint) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return DataCameraPosition.decode(readValue(buffer)!);
      
      case 129:       
        return DataLatLng.decode(readValue(buffer)!);
      
      case 130:       
        return DataLatLngBounds.decode(readValue(buffer)!);
      
      case 131:       
        return DataMapObjectId.decode(readValue(buffer)!);
      
      case 132:       
        return DataMarker.decode(readValue(buffer)!);
      
      case 133:       
        return DataMarkerBitmap.decode(readValue(buffer)!);
      
      case 134:       
        return DataMarkerUpdates.decode(readValue(buffer)!);
      
      case 135:       
        return DataPadding.decode(readValue(buffer)!);
      
      case 136:       
        return DataPolyline.decode(readValue(buffer)!);
      
      case 137:       
        return DataPolylineUpdates.decode(readValue(buffer)!);
      
      case 138:       
        return GeoPoint.decode(readValue(buffer)!);
      
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class PluginHostApi {
  /// Constructor for [PluginHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  PluginHostApi({BinaryMessenger? binaryMessenger, required this.id})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;
  final int id;

  static const MessageCodec<Object?> codec = _PluginHostApiCodec();

  /// Получение текущей позиции камеры
  ///
  /// Возвращает [DataCameraPosition]
  /// Позицию камеры в текущий момент времени
  Future<DataCameraPosition> getCameraPosition() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.getCameraPosition', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as DataCameraPosition?)!;
    }
  }

  /// Перемещение камеры к заданной позиции [CameraPosition]
  /// [duration] - длительность анимации в миллисекундах,
  /// если не указана, используется нативное значение
  /// [cameraAnimationType] - тип анимации
  Future<void> moveCamera(DataCameraPosition arg_cameraPosition, int? arg_duration, DataCameraAnimationType arg_cameraAnimationType) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.moveCamera', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_cameraPosition, arg_duration, arg_cameraAnimationType.index]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Перемещение камеры к области из двух точек
  Future<void> moveCameraToBounds(DataLatLng arg_firstPoint, DataLatLng arg_secondPoint, DataPadding arg_padding, int? arg_duration, DataCameraAnimationType arg_cameraAnimationType) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.moveCameraToBounds', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_firstPoint, arg_secondPoint, arg_padding, arg_duration, arg_cameraAnimationType.index]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Обновление маркеров
  ///
  /// [markerUpdates] - объект с информацией об обновлении маркеров
  Future<void> updateMarkers(DataMarkerUpdates arg_updates) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.updateMarkers', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_updates]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Построение маршрута
  ///
  /// [createRoute] - объект с информацией построение маршрута
  Future<void> createRoute(GeoPoint arg_startPoint, GeoPoint arg_endPoint) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.createRoute', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_startPoint, arg_endPoint]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Обновление полилайнов
  ///
  /// [polylineUpdates] - объект с информацией об обновлении полилайнов
  Future<void> updatePolylines(DataPolylineUpdates arg_updates) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.updatePolylines', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_updates]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Изменение слоя с маркером своего местоположения
  ///
  /// [isVisible] - true, добавляет слой со своей локацией, если его еще нет на карте
  /// false - убирает слой с карты, если он етсь на карте
  Future<void> changeMyLocationLayerState(bool arg_isVisible) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.changeMyLocationLayerState', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_isVisible]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Получение координат текущего экрана
  Future<DataLatLngBounds> getVisibleArea() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'pro.flown.PluginHostApi_$id.getVisibleArea', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as DataLatLngBounds?)!;
    }
  }
}

class _PluginFlutterApiCodec extends StandardMessageCodec {
  const _PluginFlutterApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is DataCameraStateValue) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return DataCameraStateValue.decode(readValue(buffer)!);
      
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class PluginFlutterApi {
  static const MessageCodec<Object?> codec = _PluginFlutterApiCodec();

  /// Коллбэк на изменение состояния камеры
  /// [cameraState] - индекс в перечислении [CameraState]
  void onCameraStateChanged(DataCameraStateValue cameraState);

  /// Коллбэк на завршение сохдания нативной карты
  void onNativeMapReady();

  static void setup(PluginFlutterApi? api, {BinaryMessenger? binaryMessenger, required int id}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'pro.flown.PluginFlutterApi_$id.onCameraStateChanged', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for pro.flown.PluginFlutterApi_$id.onCameraStateChanged was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final DataCameraStateValue? arg_cameraState = (args[0] as DataCameraStateValue?);
          assert(arg_cameraState != null,
              'Argument for pro.flown.PluginFlutterApi_$id.onCameraStateChanged was null, expected non-null DataCameraStateValue.');
          api.onCameraStateChanged(arg_cameraState!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'pro.flown.PluginFlutterApi_$id.onNativeMapReady', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          // ignore message
          api.onNativeMapReady();
          return;
        });
      }
    }
  }
}
