library <FTName>;

// ignore_for_file: directives_ordering

// localization
export 'src/generated/l10n.dart';

// domain
export 'src/domain/action/<FTName>_actions.dart';
export 'src/domain/reducer/<FTName>_reducer.dart';
export 'src/domain/middleware/<FTName>_middleware.dart';
export 'src/domain/epics/<FTName>_epic.dart';
export 'src/domain/epics/<FTName>_epic_impl.dart';

// services
export 'src/services/<FTName>_service.dart';
export 'src/services/<FTName>_service_impl.dart';