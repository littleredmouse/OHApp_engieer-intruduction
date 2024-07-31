import router from '@ohos.router'
import item_example from '../entryability/model/item_example'
import item_article from './item_article'

@Entry
@Component

export default struct spread {
  @State video_src: Resource = $rawfile('preview.mp4')
  @State preview_src: Resource = $r('app.media.video_preview')
  @State items: item_example = new item_example(1, 'd', 'd')
  //缓存的原始数组
  @State originItemList: item_example[] = []
  //渲染对象数组
  @State article_itemList: item_example[] = [
    new item_example(1, '一种...', '摘要：本发明公开了一种...'),
    new item_example(2, '考察', '本文对我国常见场馆进行...'),
    new item_example(3, '发展历程', '自远古以来，人类...'),
    new item_example(4, '官网上线啦', '我团队开发的官网于近日...'),
    new item_example(5, '团队现场实验小记', '近日，我团队在实验室进...'),
  ]
  //滚动器声明
  scroll: Scroller = new Scroller()

  build() {
    Column() {
      //展示视频播放
      // Video({
      //   src: this.video_src,
      //   previewUri: this.preview_src
      // }).width('90%').height('25%').borderRadius(10).margin({ top: 30 })

      Image($r('app.media.video_view')).width('90%').height('25%').borderRadius(10).margin({ top: 30 })

      //两个小组件
      Row({ space: 40 }) {
        Row() {
          Image($r('app.media.Patent_Information')).width(20).height(20)
          Text('专利资料')
            .fontWeight(FontWeight.Bold)
        }.width('38%').height('8%').backgroundColor('#FFFFFF').borderRadius(10).margin({ top: 30 }).justifyContent(FlexAlign.Center).borderWidth(1).shadow({ radius: 4, color: 'rgba(0, 0, 0, 0.3)', offsetX: 5, offsetY: 5 })
        .onClick(()=>{
          router.pushUrl({url:'pages/article/patent_information'})
        })

        Row() {
          Image($r('app.media.expert')).width(20).height(20)
          Text('联系专家').fontWeight(FontWeight.Bold)
        }.width('38%').height('8%').backgroundColor('#FFFFFF').borderRadius(10).margin({ top: 30 }).justifyContent(FlexAlign.Center).borderStyle(BorderStyle.Solid).borderWidth(1).shadow({ radius: 4, color: 'rgba(0, 0, 0, 0.3)', offsetX: 5, offsetY: 5 })
      }

      Scroll(this.scroll) {
        //资讯
        Column() {
          ForEach(this.article_itemList, (item: item_example, index: number) => {
            item_article({ item: this.article_itemList[index] }).onClick(()=>{router.pushUrl({url:'pages/article/patent_article_'+index})})
          },
            (item: item_example) => {
              return item.name
            }
          )
        }.align(Alignment.Start).margin({ bottom: 10 })
      }.height('60%').scrollable(ScrollDirection.Vertical).edgeEffect(EdgeEffect.Spring).margin({top:5})
    }.width('100%').height('100%')
    .backgroundColor('#345474')
    //.backgroundColor('#ffdd01')//#ddff01颜色也很好看哦
  }
}

@Component
@Preview
struct spread_read{
  build(){
    spread()
  }
}