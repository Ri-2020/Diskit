class ChatModel {
  final int id;
  final String title;
  final String? image;
  final int online;
  final int likes;
  final int noOfUsers;
  final int? unReadChat;
  bool isTap = false;

  ChatModel({
    required this.title,
    this.image,
    required this.online,
    required this.likes,
    required this.id,
    required this.noOfUsers,
    this.unReadChat,
  });
}
