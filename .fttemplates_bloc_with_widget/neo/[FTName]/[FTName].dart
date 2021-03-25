

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:app_domain/domain/store_provider.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '<FTName>_bloc.dart';
import 'package:provider/provider.dart';
import 'package:dioc/dioc.dart' as dioc;

class <FTName | pascalcase> extends StatefulWidget {
  const <FTName | pascalcase>();

  @override
  _<FTName | pascalcase>State createState() => _<FTName | pascalcase>State();
}

class _<FTName | pascalcase>State extends State<<FTName | pascalcase>> {
  late <FTName | pascalcase>Bloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = <FTName | pascalcase>Bloc();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // final StoreProvider storeProvider = context.read<dioc.Container>().singleton<StoreProvider>();
    final dioc.Container di = context.read<dioc.Container>();

    _bloc
      ..setDi(di)
      ..restoreFields();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
