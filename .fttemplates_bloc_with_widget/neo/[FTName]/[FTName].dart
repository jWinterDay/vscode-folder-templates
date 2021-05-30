// @dart=2.12

// ignore_for_file: import_of_legacy_library_into_null_safe
// ignore_for_file: always_use_package_imports
import 'package:app_domain/domain/store_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/<FTName>_bloc.dart';
import 'events/<FTName>_event.dart';
import 'views/<FTName>_view.dart';

class <FTName | pascalcase> extends StatelessWidget {
  const <FTName | pascalcase>({
    Key? key,
    this.testMode = false,
  }) : super(key: key);

  final bool testMode;

  @override
  Widget build(BuildContext context) {
    final StoreProvider storeProvider = context.read<StoreProvider>();

    return BlocProvider<<FTName | pascalcase>Bloc>(
      create: (_) => <FTName | pascalcase>Bloc(
        storeProvider: storeProvider,
        testMode: testMode,
      )..add(const <FTName | pascalcase>Event.start()),
      child: <FTName | pascalcase>View(
        testMode: testMode,
      ),
    );
  }
}
