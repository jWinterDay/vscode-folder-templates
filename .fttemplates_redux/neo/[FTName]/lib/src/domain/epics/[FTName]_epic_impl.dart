

// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:built_redux/built_redux.dart';
import 'package:dioc/dioc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utilities/utilities.dart';

import 'package:<FTName>/src/domain/epics/<FTName>_epic.dart';
import 'package:<FTName>/src/services/<FTName>_service.dart';
import 'package:<FTName>/src/domain/action/<FTName>_actions.dart';
import 'package:<FTName>/src/domain/state/<FTName>_state.dart';
// import 'package:<FTName>/src/utils/exceptions.dart';

class <FTName | pascalcase>EpicImpl extends <FTName | pascalcase>Epic {
  <FTName | pascalcase>EpicImpl(
    this.<FTName | camelcase>Service,
  );

  @Inject()
  final <FTName | pascalcase>Service <FTName | camelcase>Service;

  @override
  Stream<void> test(
    Stream<Action<dynamic>> stream,
    MiddlewareApi<<FTName | pascalcase>State, <FTName | pascalcase>StateBuilder, <FTName | pascalcase>Actions> api,
  ) {
    return stream
        .where((Action<dynamic> action) {
          return false; // example: RegistrationActionsNames.requestToken.name == action.name;
        })
        .debounceTime(const Duration(milliseconds: 100))
        .doOnData((Action<dynamic> action) {
          // example: api.actions.setAwaitingPinCodeResponse(true);
        })
        // .asyncMap((Action<dynamic> action) async {
          // assert(action.payload != null);

          // final dynamic verificationCode = action.payload;

        //   return await <FTName | camelcase>Service.test();
        // })
        // .doOnData((RegistrationTokenResponse result) {
          // api.actions
          //   ..setTokenResponse(result)
          //   ..setAwaitingPinCodeResponse(false);
        // })
        .handleError((Object exc, StackTrace stackTrace) {
          // if (exc is AppError) {
          //   final NetworkErrorModel? data = exc.data;
          //   final int time = DateTime.now().millisecondsSinceEpoch;

          //   api.actions
          //     ..setAwaitingPinCodeResponse(false)
          //     ..setTokenResponse(null)
          //     ..setErrorResponse(Pair<int, NetworkErrorModel>(time, data));

          //   return;
          // }

          logger.e(exc, exc.toString(), stackTrace);
        });
  }
}
