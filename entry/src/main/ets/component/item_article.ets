import item_example from '../entryability/model/item_example'

@Component

export default struct item_article{
  @ObjectLink item:item_example
  build(){
    Row(){
      Image($r('app.media.news')).width(40).height(40).margin({left:15})
      Column(){
        Row({space:10}){
          Text('标题').fontColor('#3D3D3D').fontWeight(FontWeight.Bold)
          Text(this.item.name).fontWeight(FontWeight.Bold).fontColor('#3d3d3d')
        }.height(30).width(200)
        Row({space:10}){
          Text('正文').fontColor('#3D3D3D')
          Text(this.item.price)
        }.height(30).width(200)
      }.width(100).height(55).justifyContent(FlexAlign.Start).padding({left:120})
    }.width(328).height(73).backgroundColor(Color.White).borderWidth(0.5).borderColor('rgba(0,0,0,0.2)').shadow({radius:4,color:'rgba(0, 0, 0, 0.3)',offsetX:5,offsetY:5}).margin(15).padding(10).borderRadius(10)
  }
}

@Component
@Preview

struct item_read{
  @State items:item_example=new item_example(1,'d','d')
  build(){
    item_article({item:this.items})
  }
}