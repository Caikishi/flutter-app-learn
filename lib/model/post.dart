class Post{
  const Post({
    this.title,
    this.author,
    this.imgUrl
  });

  final String title;
  final String author;
  final String imgUrl;

}


final List<Post> posts =[
  Post(
    title: "test1",
    author: "testAuthor1",
    imgUrl: "https://p.ssl.qhimg.com/dmfd/400_300_/t010774c3ffd8c986a2.jpg" 
  ),
  Post(
    title: "test2",
    author: "testAuthor2",
    imgUrl: "https://p.ssl.qhimg.com/dmfd/400_300_/t0120b2f23b554b8402.jpg" 
  ),
  Post(
    title: "test3",
    author: "testAuthor3",
    imgUrl: "http://pic.sc.chinaz.com/files/pic/pic9/201508/apic14052.jpg"
  ),
  Post(
    title: "test4",
    author: "testAuthor4",
    imgUrl: "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=180962438,4273140865&fm=26&gp=0.jpg"
  ),
  Post(
    title: "test5",
    author: "testAuthor5",
    imgUrl: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1360037093,3112119608&fm=26&gp=0.jpg"
  )
];