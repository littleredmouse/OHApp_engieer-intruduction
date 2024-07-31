import type { Permissions } from '@ohos.abilityAccessCtrl';
import router from '@ohos.router';
import me from '../component/me';
import shop from '../component/shop';
import spread from '../component/spread';

@Entry
@Component

struct Index {
  @State currentIndex:number=0
  private tabsController: TabsController = new TabsController()

  @Builder TabBuilder(title: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Column() {
        Image(selectedImg).width(20).height(20).objectFit(ImageFit.Contain) //.padding({top:10})
        Text(title)
          .fontSize(10)
          .padding({ top: 5 })
          .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#000000')
      }
      .padding({ top: 5 })
      .height('80%')
    }
    .backgroundColor('#FFFFFF')
    .height(70)
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabsController.changeIndex(this.currentIndex);
    })
  } //自定义导航栏

  @State message:string = 'World'
  build() {
    Column(){
      Tabs({
        barPosition: BarPosition.End /*设置TabBar的位置在底部*/
        ,controller: this.tabsController
      }){
        TabContent(){
          Column(){
            Image($r('app.media.camera'))
              .width(170)
              .height(156)
            Row(){
              Image($r('app.media.photo'))
                .height(30)
                .width(30)
              Text('上传图片')
            }.width(100).backgroundColor('#FFFFFF').height(55).borderRadius(10).justifyContent(FlexAlign.Center).shadow({radius:4,color:'rgba(0, 0, 0, 0.3)',offsetX:5,offsetY:5})
          }
        }.tabBar(this.TabBuilder('检测', 0, $r('app.media.test_before'), $r('app.media.test')))

        TabContent(){
          spread()
        }.tabBar(this.TabBuilder('普及',1,$r('app.media.spread'),$r('app.media.spread_selected')))

        TabContent(){
          shop()
        }.tabBar(this.TabBuilder('商城',2,$r('app.media.shop'),$r('app.media.shop_selected')))

        TabContent(){
          me()
        }.tabBar(this.TabBuilder('我的',3,$r('app.media.me'),$r('app.media.me_selected')))
      }
    }
    //.backgroundColor('#FFDD01')
    .backgroundColor('#345474')
    //.backgroundColor('#ddff01')
    .height('100%')
    .width('100%')
  }
}