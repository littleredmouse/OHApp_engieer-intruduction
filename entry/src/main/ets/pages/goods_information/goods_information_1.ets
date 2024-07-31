import router from '@ohos.router'

@Component
@Entry

struct good_information_1{
  private swiperController: SwiperController = new SwiperController()

  build(){
    Column(){
      Row(){
        Image($r('app.media.back')).width(15).height(15).margin({left:15})
        Text('返回').fontColor('#3d3d3d').fontSize(18)//todo 返回功能的补充
      }.width('100%').height(50).backgroundColor('#ffffff').borderRadius({bottomLeft:10,bottomRight:10}).onClick(()=>{
        router.back()
      })

      //图片组件
      Swiper(this.swiperController){
        Image($r('app.media.video_preview'))
        Image($r('app.media.video_preview'))
        Image($r('app.media.video_preview'))
      }.loop(true).width('90%').height(175).borderRadius(10).autoPlay(true).interval(5000).margin({top:20})

      Column(){
        Text('xxxxxxx').fontSize(30).fontWeight(FontWeight.Bold).width('90%')
        Text('￥20000').fontSize(20).fontColor(Color.Red).fontWeight(FontWeight.Bold).width('90%').padding({left:5})
      }.width('100%').padding({top:15})

      Row(){
        Image($r('app.media.cut')).width(5).height(25)
        Text('详情').fontWeight(FontWeight.Normal).fontSize(20).padding({left:5})
      }.width('90%').padding({top:15,bottom:15})

      Column(){
        Column({space:10}){
          Text('xxx').fontSize(15).width('90%')
          Text('xxx').fontSize(15).width('90%')
          Text('xxx').fontSize(15).width('90%')
          Text('xxx').fontSize(15).width('90%')
          Text('xxx').fontSize(15).width('90%')
          Text('xxx').fontSize(15).width('90%')
          Text('xxx').fontSize(15).width('90%')
        }.padding(10)
      }.backgroundColor('#ffffff').borderRadius(10).width('90%').borderStyle(BorderStyle.Solid).borderColor(Color.Gray).borderWidth(1).justifyContent(FlexAlign.Start)
    }.width('100%').height('100%').backgroundColor('#345474')
  }
}