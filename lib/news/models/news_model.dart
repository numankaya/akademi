class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  static List<NewsData> breakingNewsData = [
    NewsData(
        "Numan KAYA harikalar yaratıyor!",
        "Ardahan Gökhan",
        "Yazılım sektöründe öne çıkan yeteneklerden biri olan Numan KAYA, son dönemde yaptığı projelerle adından sıkça söz ettiriyor. Hem özel kurumların hem de kamu kuruluşlarının projelerinde yer alan Numan KAYA, başarılı yazılım çözümleri sunarak müşteri memnuniyetini en üst seviyede tutmayı başarıyor.",
        "2023-04-08",
        "https://1.bp.blogspot.com/-cgYhvtBfxRQ/YUtX6Q9vDuI/AAAAAAAAK_g/pslITOOH-PI307R4EnBlfPMykM-0mLPqACLcBGAsYHQ/s2048/lll.jpg"),
    NewsData(
        "App Jam kazananı belli oldu!",
        "M.Oğuz Topaloğlu",
        "Kazanan takım Coursemate oldu!",
        "2023-04-08",
        "https://avatars.mds.yandex.net/i?id=f3084baf8258f06b126dac4ef06c07dd0058fadc-9097932-images-thumbs&n=13&exp=1"),
    NewsData(
        "Mürüvvet gmail hesaplarından çıktı!!",
        "Z.Şevval Bozdağ",
        "Buraya ne yazacağımı bilemedim fena bir olaydı!?",
        "2023-04-08",
        "https://pbs.twimg.com/media/DNx0gXXU8AEjh_I?format=jpg&name=900x900"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "Ideathon Kazananları İşte Bu Takımlar!",
        "Oyun ve Uygulama Akademisi",
        "Coursemate - ...",
        "2023-04-08",
        "https://i.pinimg.com/originals/0b/b5/1b/0bb51bab0aae1232661a15b7bd41df64.jpg"),
    NewsData(
        "",
        "",
        "",
        "2023-04-08",
        ""),
    NewsData(
        "",
        "",
        "",
        "2023-04-08",
        ""),
    NewsData(
        "",
        "",
        "",
        "2023-04-08",
        ""),
  ];
}
