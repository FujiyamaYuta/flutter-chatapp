class UserModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  UserModel({this.name, this.message, this.time, this.avatarUrl});
}

List<UserModel> dummyData = [
  new UserModel(
      name: "YutaFujiwara",
      message: "Hey Flutter, You are so amazing !",
      // time: "15:30",
      avatarUrl:
          "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  new UserModel(
      name: "YutaFujiwara",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      avatarUrl:
          "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  new UserModel(
      name: "YutaFujiwara",
      message: "Wassup !",
      // time: "5:00",
      avatarUrl:
          "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  new UserModel(
      name: "YutaFujiwara",
      message: "I'm good!",
      time: "10:30",
      avatarUrl:
          "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  // new UserModel(
  //     name: "YutaFujiwara",
  //     message: "I'm the fastest man alive!",
  //     // time: "12:30",
  //     avatarUrl:
  //         "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  // new UserModel(
  //     name: "YutaFujiwara",
  //     message: "Hey Flutter, You are so cool !",
  //     // time: "15:30",
  //     avatarUrl:
  //         "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  //   new UserModel(
  //     name: "YutaFujiwara",
  //     message: "I'm the fastest man alive!",
  //     // time: "12:30",
  //     avatarUrl:
  //         "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  // new UserModel(
  //     name: "YutaFujiwara",
  //     message: "I'm the fastest man alive!",
  //     // time: "12:30",
  //     avatarUrl:
  //         "https://ohmygod.jp/assets/img/fujiwara.jpg"),
  // new UserModel(
  //     name: "YutaFujiwara",
  //     message: "I'm the fastest man alive!",
  //     // time: "12:30",
  //     avatarUrl:
  //         "https://ohmygod.jp/assets/img/fujiwara.jpg"),
];
