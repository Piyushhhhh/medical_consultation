class Conversation {
  String? fullName;
  String? lastMessage;
  int? unreadCount;
  int? id;
  String? lastMessageTime;
  bool? isOnline;
  String? imageUrl;

  Conversation(
      {this.fullName,
      this.lastMessage,
      this.unreadCount,
      this.id,
      this.lastMessageTime,
      this.isOnline,
      this.imageUrl});

  Conversation.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    lastMessage = json['last_message'];
    unreadCount = json['unread_count'];
    id = json['id'];
    lastMessageTime = json['last_message_time'];
    isOnline = json['is_online'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['full_name'] = fullName;
    data['last_message'] = lastMessage;
    data['unread_count'] = unreadCount;
    data['id'] = id;
    data['last_message_time'] = lastMessageTime;
    data['is_online'] = isOnline;
    data['image_url'] = imageUrl;
    return data;
  }
}
