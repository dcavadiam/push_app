import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotifications {
  static Future<void> requestPermissionLocalNotifications() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  static Future<void> initializeLocalNotifications() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
    //TODO: iOS configutation

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      //TODO: iOS configutation settings
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      //TODO: 
      // onDidReceivedBackgroundNotificationResponse: onDidReceivedBackgroundNotificationResponse
    );
  }

}
