import router from '@ohos.router';
@Component
@Entry

struct helper{
  build(){
    Column(){
      Row() {
        Image($r('app.media.back')).width(15).height(15).margin({ left: 15 })
        Text('返回').fontColor('#3d3d3d').fontSize(18)
        Text('在线客服').fontColor('#3d3d3d').fontSize(20).margin({left:70})
      }.width('100%').height(50).backgroundColor('#ffffff').borderRadius({ bottomLeft: 10, bottomRight: 10 })
      .onClick(() => {
        router.back()
      })

      Column(){
        Text('坐席繁忙，请等待！').fontWeight(FontWeight.Bold)
        Text('16:03:28').margin({top:15})
      }.width('92%').backgroundColor(Color.White).height('82%').borderRadius(15).margin({top:20})

      Row(){
        Image($r('app.media.microphone')).width(30).height(30).margin({left:15,bottom:15})
        Row(){
          TextInput().height('100%')
          Image($r('app.media.send')).width(17).height(17).margin(10)
        }.width('70%').borderColor(Color.Black).borderWidth(1).height(30).borderRadius(10).margin({bottom:15,left:15})
      }.width('100%').backgroundColor(Color.White).height('10%').borderRadius(15).margin({top:5})
    }.width('100%').height('100%').backgroundColor('#345474')
  }
}