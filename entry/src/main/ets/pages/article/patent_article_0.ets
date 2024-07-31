import router from '@ohos.router'
import article_photo from '../../component/article_photo'
import article_text from '../../component/article_text'

@Entry
@Component

struct patent_article_0{
  scroller:Scroller=new Scroller()
  build(){
    Column() {
      //顶部返回栏
      Row() {
        Image($r('app.media.back')).width(15).height(15).margin({ left: 15 })
        Text('返回').fontColor('#3d3d3d').fontSize(18)
      }
      .width('100%')
      .height(50)
      .backgroundColor('#ffffff')
      .borderRadius({ bottomLeft: 10, bottomRight: 10 })
      .onClick(() => {
        router.back()
      })

        Column() {
          Column() {
            Text('一种')
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Center)
              .fontColor(Color.White)
          }.width('90%').justifyContent(FlexAlign.Center).padding({ bottom: 15 })

          Scroll(this.scroller) {
            Column({ space: 20 }) {
              article_text()
              article_photo()
            }
          }.width('100%').height('82%')
        }
    }.width('100%').height('100%')
    .backgroundColor('#345474')
    //.backgroundColor('#ffdd01')
  }
}