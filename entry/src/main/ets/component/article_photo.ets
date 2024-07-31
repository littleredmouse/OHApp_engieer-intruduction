@Component

export default struct article_photo{
  build(){
    Column() {
      Image($r('app.media.preview_1')).width('90%')
    }.backgroundColor('#ffffff').width('90%').borderRadius(10)
  }
}