import item_example from '../entryability/model/item_example'

@Component

export default struct item_shop{
  @ObjectLink item:item_example

  build(){
    Row(){
      Image($r('app.media.goods_preview')).width(40).height(40).margin({left:15})
      //商品卡片
      Column(){
        Row({space:10}){
          Text('名称').fontColor('#3D3D3D')
          Text(this.item.name).fontWeight(FontWeight.Bold).fontColor('#3d3d3d').width('100%')
        }.height(45).width(200).padding({left:50})
        Row({space:10}){
          Text('价格').fontColor('#3D3D3D')
          Text(this.item.price).fontColor(Color.Red).width('100%')
        }.height(30).width(200).padding({left:50})
      }.width(100).height(70).justifyContent(FlexAlign.Start).padding({left:40})
    }.width(328).height(73).backgroundColor(Color.White).borderWidth(0.5).borderColor('rgba(0,0,0,0.2)').shadow({radius:4,color:'rgba(0, 0, 0, 0.3)',offsetX:5,offsetY:5}).margin(15).padding(10).borderRadius(10)

  }
}

@Component
@Preview

struct item_read{
  @State items:item_example=new item_example(1,'d','d')
  build(){
    item_shop({item:this.items})
  }
}