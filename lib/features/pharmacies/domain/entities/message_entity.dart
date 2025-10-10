class MessageEntity {
  final String text;
  final DateTime timestamp;
  final bool isSender;

  const MessageEntity({
    required this.text,
    required this.timestamp,
    required this.isSender,
  });

}