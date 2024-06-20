part of 'notifications_bloc.dart';

abstract class NotificationsEvent {
  const NotificationsEvent();
}

class NotificationStatusChanged extends NotificationsEvent {
  final AuthorizationStatus status;

  const NotificationStatusChanged(this.status);
}

//TODO 2: NotificationReceived # PushMessage

class NotificationReceived extends NotificationsEvent {
  final PushMessage notification;

  NotificationReceived(this.notification);
}
