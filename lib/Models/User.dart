class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imgUrl;
  late DateTime lastActive;

  ChatUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.imgUrl,
    required this.lastActive,
  });
  factory ChatUser.fromJson(Map<String, dynamic> _json) {
    return ChatUser(
        uid: _json["uid"],
        name: _json["name"],
        email: _json["email"],
        imgUrl: _json["imgUrl"],
        lastActive: _json["lastActive"]);
  }
  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": name,
      "email": email,
      "imgUrl": imgUrl,
      "lastActive": lastActive.toIso8601String(),
    };
  }

  String lastInactive() {
    return "${lastActive.month}/${lastActive.day}/${lastActive.year}";
  }
}
