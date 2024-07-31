// @ts-nocheck
import router from '@ohos.router'
import item_example from '../entryability/model/item_example'
import item_shop from './item_shop'



@Component
export default struct shop{
  private swiperController: SwiperController = new SwiperController()
  scroll: Scroller = new Scroller()
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

  @State success_if:boolean=true;

  //声明购物数量
  @State goods_num: string='0'

  build(){
    Column(){

      //todo 搜索框

      //轮播图
      Swiper(this.swiperController){
        Image($r('app.media.video_preview'))
        Image($r('app.media.show_1'))
        Image($r('app.media.show_2'))
      }.loop(true).width('90%').height(175).borderRadius(10).autoPlay(true).interval(5000).margin({top:50})
      Row(){
        Text('商品列表').fontColor('#000000').fontWeight(FontWeight.Bold).fontColor(Color.White)
      }.justifyContent(FlexAlign.Start).height(20).width(80).margin({top:10})
      Scroll(this.scroll){
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
      }.height('55%').scrollable(ScrollDirection.Vertical).edgeEffect(EdgeEffect.Spring).margin({top:5})

      Row(){
        Text('总计:￥73.72').width('50%').height('50%').fontWeight(FontWeight.Bold).fontSize(25).margin({left:30})
        Row(){
          if(this.success_if){
            Text('提交').fontSize(20).fontColor(Color.White)
          }else {
            Text('提交成功').fontSize(20).fontColor(Color.White)
          }
        }.width('30%').height('70%').backgroundColor('#345070').borderRadius(20).justifyContent(FlexAlign.Center).margin({left:15}).onClick(()=>{
          this.success_if=false
        })
      }.width('100%').height('8%').backgroundColor(Color.White).borderRadius({topLeft:10,topRight:10}).margin({top:8})
    }.width('100%').height('100%')
    .backgroundColor('#345474')
    //.backgroundColor('#FFDD01')
  }
}

@Component
@Preview
struct shop_read{
  build(){
    shop()
  }
}