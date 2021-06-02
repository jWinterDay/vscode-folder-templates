// ignore_for_file: always_use_package_imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

// app domain
// import 'package:app_domain/domain/store_provider.dart'; // uncomment it for using redux store provider
import 'package:utilities/context_extention.dart'; // uncomment it for using context tools
// import 'package:package_name/package_name.dart'; // uncomment it for using package specific

import '../bloc/<FTName>_bloc.dart';
import '../bloc/<FTName>_event.dart';
import '../bloc/<FTName>_state.dart';

class <FTName | pascalcase>View extends StatelessWidget {
  const <FTName | pascalcase>View({
    Key? key,
    this.testMode = false,
  }) : super(key: key);

  final bool testMode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<<FTName | pascalcase>Bloc, <FTName | pascalcase>State>(
      buildWhen: (<FTName | pascalcase>State prev, <FTName | pascalcase>State cur) {
        return prev.loading != cur.loading; // an example
      },
      builder: (_, <FTName | pascalcase>State <FTName | camelcase>State) {
        return  _Example(loading: <FTName | camelcase>State.loading);
      },
    );
  }
}

class _Example extends StatelessWidget {
  const _Example({
    required this.loading,
  });

  final bool loading;

  @override
  Widget build(BuildContext context) {
    final <FTName | pascalcase>Bloc bloc = context.read<<FTName | pascalcase>Bloc>();

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            bloc.add(<FTName | pascalcase>Event.changeLoading(value: !loading));
          },
          child: Text(
            'Example widget loading: $loading',
            style: const TextStyle(
              color: context.colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
