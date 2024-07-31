@Component

export default struct article_text{
  build(){
    Column() {
      Text('摘要：本发明公开了一种...。')
        .textAlign(TextAlign.Start).fontSize(25).padding(12)
    }
    .backgroundColor('#ffffff')
    .width('90%')
    .borderRadius(10)
    .justifyContent(FlexAlign.Center)
  }
}