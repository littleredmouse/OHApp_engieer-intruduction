import { Router } from '@ohos.arkui.UIContext'
import router from '@ohos.router'

@Component

export default struct me{
  build(){
    Column(){
      Column(){
        Row(){
          Text('我的').fontColor('black').fontSize(50).fontWeight(900).fontColor(Color.White)
        }.padding({top:18 ,left:30}).width('100%')

        Row(){
          Text('—').fontColor('white').fontSize(50).fontWeight(900)
        }.padding({top:3 ,left:30}).width('100%')

        Column(){
          Text('我的名片').fontColor('black').fontWeight(FontWeight.Medium).height(25)
          Divider().height(10)
          Row(){
            Column({space:10}){
              Text('称谓：王经理')
              Text('任职公司：xxxx建筑集团')
              Text('职务：经理')
              Text('联系方式：1xxxxxxxxxx')
              Text('意向合作方式：采购')
            }.width('90%').height(145).justifyContent(FlexAlign.Start)
          }.width('100%')
          Row(){
            Image($r('app.media.tip')).width(25).height(25).margin({left:1})
            Text('我的订单').margin({left:10})
          }.width('95%').height(40).borderWidth(1).borderRadius(10).justifyContent(FlexAlign.Center).onClick(()=>{
            router.pushUrl({
              url:'pages/shopping_cart'
            })
          })
        }.backgroundColor('#ffffff').borderRadius(10).width('90%').height(230)
      }.height('50%').width('100%').backgroundColor('#345474')//.backgroundColor('#ffdd01')
      Column({space:20}){
        Row(){
          Image($r('app.media.helper')).width(60).height(40).padding({left:20})
          Text('联系客服').fontSize(23).padding({left:20})
        }.width('100%').height(67.5).backgroundColor('white').borderRadius(10).border({color:'white',width:1,radius:10}).shadow({radius:10,offsetY:10}).onClick(()=>{
          router.pushUrl({
            url:'pages/helper'
          })
        })
        Row(){
          Image($r('app.media.about')).width(60).height(40).padding({left:20})
          Text('关于我们').fontSize(23).padding({left:20})
        }.width('100%').height(67.5).backgroundColor('white').borderRadius(10).border({color:'white',width:1,radius:10}).shadow({radius:10,offsetY:10}).onClick(()=>{
          router.pushUrl({
            url:'pages/about_us'
          })
        })
        Row(){
          Image($r('app.media.help')).width(60).height(40).padding({left:20})
          Text('使用帮助').fontSize(23).padding({left:20})
        }.width('100%').height(67.5).backgroundColor("white").borderRadius(10).border({color:'white',width:1,radius:10}).shadow({radius:10,offsetY:10})
        Row(){
          Image($r('app.media.setting')).width(60).height(40).padding({left:20})
          Text('设置').fontSize(23).padding({left:20})
        }.width('100%').height(67.5).backgroundColor('white').borderRadius(10).border({color:'white',width:1,radius:10}).shadow({radius:10,offsetY:10})

      }.width('90%').height(270).padding({top:25})

    }.height('100%')
    .backgroundColor('#345474')
    //.backgroundColor('#ffdd01')
  }
}

@Component
@Preview
struct me_read{
  build(){
    me()
  }
}