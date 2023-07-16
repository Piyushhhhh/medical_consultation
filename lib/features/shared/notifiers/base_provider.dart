import 'package:flutter/material.dart';
import 'package:medical_consultation/features/shared/notifiers/base_notifier.dart';
import 'package:provider/provider.dart';

class BaseProvider<T extends BaseNotifier?> extends ChangeNotifierProvider<T> {
  final Function(BaseNotifier notifier)? onSuccess;
  final Function(BaseNotifier notifier, String? message)? onError;

  BaseProvider({
    Key? key,
    required Create<T> create,
    bool? lazy,
    TransitionBuilder? builder,
    Widget? child,
    this.onSuccess,
    this.onError,
  }) : super(
          key: key,
          create: create,
          lazy: lazy,
          builder: builder,
          child: child,
        );

  BaseProvider.value({
    Key? key,
    required T value,
    this.onSuccess,
    this.onError,
    TransitionBuilder? builder,
    Widget? child,
  }) : super.value(
          key: key,
          builder: builder,
          value: value,
          child: child,
        ) {
    value?.onSuccess = onSuccess;
    value?.onError = onError;
  }

  BaseProvider.consumer({
    Key? key,
    required T value,
    this.onSuccess,
    this.onError,
    TransitionBuilder? transitionBuilder,
    required Widget Function(
      BuildContext context,
      T value,
      Widget? child,
    )
        builder,
  }) : super.value(
          key: key,
          builder: transitionBuilder,
          value: value,
          child: Consumer<T>(builder: builder),
        ) {
    value?.onSuccess = onSuccess;
    value?.onError = onError;
  }
}
