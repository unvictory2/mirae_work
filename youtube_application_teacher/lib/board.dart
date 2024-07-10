class Board {
  final int id;
  final String title;
  final String text;
  final int like;
  final int unlike;
  final int userId;
  final String userEmail;
  final String userNickname;
  final List<String> imageUrls;

  const Board({
    required this.id,
    required this.title,
    required this.text,
    required this.like,
    required this.unlike,
    required this.userId,
    required this.userEmail,
    required this.userNickname,
    required this.imageUrls,
  });

  // 데이터를 받아옴
  factory Board.fromJson(Map<String, dynamic> json) {
    return Board(
      id: json['id'],
      title: json['title'],
      text: json['text'],
      like: json['text'],
      unlike: json['text'],
      userId: json['userId'],
      userEmail: json['userEmail'],
      userNickname: json['userNickname'],
      imageUrls: List<String>.from(json['imageUrls']));
  }
}