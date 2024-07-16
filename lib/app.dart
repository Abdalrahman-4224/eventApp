import 'package:liverpod_structure/main.dart';
import 'package:liverpod_structure/router/app_router.dart';
import 'package:liverpod_structure/data/providers/settings_provider.dart';
import 'package:liverpod_structure/theme/app_theme.dart';
import 'package:liverpod_structure/utils/extensions.dart';
import 'package:liverpod_structure/utils/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {

  // @override
  // void initState() {
  //   super.initState();
    
  //   initializeFirebaseMessaging();
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
  //     debugPrint("remote message received: ${message.messageId}");
  //     debugPrint("notification received: ${message.notification?.body}");
  //     if (message.notification != null) {
  //       LocalNotificationsServices.showNotification(message);
  //     }
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.scheduleFrameCallback((timeStamp) async {
  //     await ref
  //         .read(getIsarInstanceProvider(const [PostSchemeSchema]).future)
  //         .then((isar) {
  //       debugPrint("this is isar instance: ${isar.path}");
  //       CacheManager().clearCacheAndDatabase(isar);
  //     }); // Open the Isar instance
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final theme=AppTheme();

    return ScreenUtilInit(
      designSize:const Size(430,932),
      builder:(context,child)=> MaterialApp.router(
        title: appName,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        scaffoldMessengerKey: Utils.messengerKey,
        themeMode:settings.themeMode,
        theme: theme.buildDarkTheme(),
        // Locale
        locale: const Locale('en'),
        onGenerateTitle: (context) => context.l10n.appName,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,  
        
      ),
    );
  }
}
