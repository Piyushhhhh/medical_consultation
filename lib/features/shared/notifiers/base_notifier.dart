import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/features/shared/enums/base_notifier_status.dart';

class BaseNotifier extends ChangeNotifier {
  bool disposed = false;
  Function(BaseNotifier notifier)? onSuccess;
  Function(BaseNotifier notifier, String? message)? onError;
  BaseNotifierStatus _status = BaseNotifierStatus.init;

  BaseNotifierStatus get status => _status;

  bool get isSuccess => _status == BaseNotifierStatus.success;

  bool get isFailed => _status == BaseNotifierStatus.error;

  bool get isLoading => _status == BaseNotifierStatus.loading;

  bool get isInit => _status == BaseNotifierStatus.init;

  @protected
  void resetState({bool notify = false}) {
    if (disposed) {
      return;
    }

    _status = BaseNotifierStatus.init;

    if (notify) {
      notifyListeners();
    }
  }

  @protected
  void sendSuccess({bool notify = true}) {
    if (disposed) {
      return;
    }

    _status = BaseNotifierStatus.success;

    onSuccess?.call(this);

    if (notify) {
      notifyListeners();
    }
  }

  @protected
  void sendError({bool notify = true, String? message}) {
    if (disposed) {
      return;
    }

    _status = BaseNotifierStatus.error;

    onError?.call(this, message);

    if (notify) {
      notifyListeners();
    }
  }

  @protected
  void sendLoading({bool notify = true}) {
    if (disposed) {
      return;
    }

    _status = BaseNotifierStatus.loading;

    if (notify) {
      notifyListeners();
    }
  }

  @protected
  void sendEvent({required BaseNotifierStatus status, bool notify = true}) {
    if (disposed) {
      return;
    }

    _status = status;

    if (notify) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    disposed = true;
    super.dispose();
  }

  Future<void> callApiMethod<T>(Future<T> future,
      {Function(T)? onSuccess, Function(String?)? onError}) async {
    try {
      var response = await future;
      log('On response.');
      onSuccess?.call(response);
      sendSuccess();
    } on HttpException catch (error) {
      log('On error.');
      onError?.call(error.message);
      sendError(message: error.message);
    } catch (_) {
      log('On error 2.');
      onError?.call(Strings.defaultErrorMessage);
      rethrow;
    }
  }
}
