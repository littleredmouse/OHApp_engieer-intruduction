import router from '@ohos.router';
import url from '@ohos.url';

@Component
@Entry

struct about_us{
  build(){
    Column(){
      Row() {
        Image($r('app.media.back')).width(15).height(15).margin({ left: 15 })
        Text('返回').fontColor('#3d3d3d').fontSize(18)
      }.width('100%').height(50).backgroundColor('#ffffff').borderRadius({ bottomLeft: 10, bottomRight: 10 })
      .onClick(() => {
        router.back()
      })

      Text('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx').fontWeight(25).fontColor(Color.White).fontSize(25).margin({top:20})

      Column(){
        Image($r('app.media.web')).width('100%').borderRadius(10)
      }.width('95%').height(195).backgroundColor(Color.White).borderRadius(10).borderWidth(1).margin(20)
      Text('访问我们的官网，查看更多信息:').fontWeight(25).fontColor(Color.White)
      Row(){
            Text('http://xxxxxxxxxxxx').fontColor(Color.Blue).fontWeight(25)
      }.width('75%').height(25).backgroundColor(Color.White).justifyContent(FlexAlign.Center)
    }.width('100%').height('100%').backgroundColor('#345474')

  }
}