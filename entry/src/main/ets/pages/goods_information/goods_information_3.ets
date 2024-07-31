import router from '@ohos.router'

@Component
@Entry

struct good_information_1{
  private swiperController: SwiperController = new SwiperController()
  @State success_if:boolean=false;

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
        Image($r('app.media.goods_1'))
        Image($r('app.media.goods_2'))
      }.loop(true).width('90%').height(175).borderRadius(10).autoPlay(true).interval(5000).margin({top:20})

      Column(){
        Text('xxxxxxxxx').fontSize(30).fontWeight(FontWeight.Bold).width('90%').fontColor(Color.White)
        Text('￥100').fontSize(20).fontColor(Color.Red).fontWeight(FontWeight.Bold).width('90%').padding({left:5})
      }.width('100%').padding({top:15})

      Row(){
        Image($r('app.media.cut')).width(5).height(25).borderColor(Color.White).borderWidth(0.2)
        Text('详情').fontWeight(FontWeight.Normal).fontSize(20).padding({left:5}).fontColor(Color.White)
      }.width('90%').padding({top:15,bottom:15})

      Column(){
        Column({space:10}){
          Text('对应保护材料编号:xxx').fontSize(15).width('90%')
          Text('xxx*1').fontSize(15).width('90%')
          Text('xxx*1').fontSize(15).width('90%')
          Text('xxx*1').fontSize(15).width('90%')
          Text('xxx*1').fontSize(15).width('90%')
          Text('xxx*1').fontSize(15).width('90%')
          Row(){
            Text('上门安装服务').fontSize(15).width(100).margin({left:12})
            Text('￥50/套').fontSize(20).fontColor(Color.Red).fontWeight(FontWeight.Bold).width(100).padding({left:15})
          }.width(300)
        }.padding(10)
      }.backgroundColor('#ffffff').borderRadius(10).width('90%').borderStyle(BorderStyle.Solid).borderColor(Color.Gray).borderWidth(1).justifyContent(FlexAlign.Start)
      Row(){
        if(this.success_if){
          Image($r('app.media.shop_cart')).width(30).height(30)
          Text('加入购物车').fontSize(25).onClick(()=>{
            this.success_if=false
          })
        }else {
          Image($r('app.media.success')).width(30).height(30)
          Text('添购成功').fontSize(25).onClick(()=>{
            this.success_if=true
          })
        }
      }.width('60%').height(45).backgroundColor(Color.White).borderRadius(15).margin({top:25}).justifyContent(FlexAlign.Center)
    }.width('100%').height('100%')
    .backgroundColor('#345474')
    //.backgroundColor('#ffdd01')
  }
}