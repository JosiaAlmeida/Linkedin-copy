class FeedController{
  var count = 0;
  get counter => count;
  
  void indexController(var i){
    count = i;
    print(count);
  }
}