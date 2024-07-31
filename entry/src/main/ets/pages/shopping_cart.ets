import router from '@ohos.router'
import item_example from '../entryability/model/item_example'
import item_shop from '../component/item_shop'

@Entry
@Component



struct Shopping_cart {

  @State items:item_example=new item_example(1,'d','d')
  //缓存的原始数组
  @State originItemList: item_example[] = []
  //渲染对象数组
  @State shop_itemList:item_example[]=[
    new item_example(1,'xxxxxxxxxx','xxx￥'),
    new item_example(1,'xxxxxxxxxx','xxx￥'),
    new item_example(1,'xxxxxxxxxx','xxx￥'),
    new item_example(1,'xxxxxxxxxx','xxx￥'),
    new item_example(1,'xxxxxxxxxx','xxx￥'),
    new item_example(1,'xxxxxxxxxx','xxx￥')
  ]

  build() {
    Column() {
      //顶部返回栏
      Row() {
        Image($r('app.media.back')).width(15).height(15).margin({ left: 15 })
        Text('返回').fontColor('#3d3d3d').fontSize(18)
        Text('我的订单').fontColor('#3d3d3d').fontSize(20).margin({left:70})
      }
      .width('100%')
      .height(50)
      .backgroundColor('#ffffff')
      .borderRadius({ bottomLeft: 10, bottomRight: 10 })
      .onClick(() => {
        router.back()
      })

      Column(){
        ForEach(this.shop_itemList,(item:item_example,index:number)=>{
          item_shop({item:this.shop_itemList[index]})
            .onClick(()=>{
              router.pushUrl({
                url:'pages/goods_information/goods_information_'+index
              })
            })
        },
          (item:item_example)=>{
            return item.name
          }
        )
      }.align(Alignment.Start).margin({bottom:10})

    }.width('100%').height('100%').backgroundColor('#345474')
  }
}