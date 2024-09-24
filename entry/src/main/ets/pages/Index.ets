import CommonConstants from './CommonConstants'


@Extend(TextInput)
function inputStyle() {
  .placeholderColor($r('app.color.placeholder_color'))
  .height($r('app.float.login_input_height'))
  .fontSize($r('app.float.big_text_size'))
  .backgroundColor($r('app.color.background'))
  .width(CommonConstants.FULL_PARENT)
  .padding({ left: CommonConstants.INPUT_PADDING_LEFT })
  .margin({ top: $r('app.float.input_margin_top') })
}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State
  account: string = '' // 登录的账号
  @State
  password: string = '' // 登录的密码

  build() {
    Column() {
      Image($r('app.media.logo'))
        .width($r('app.float.logo_image_size'))
        .height($r('app.float.logo_image_size'))
        .margin({
          top: $r('app.float.logo_margin_top'),
          bottom: $r('app.float.logo_margin_bottom')
        })

      //登录标题
      Text($r('app.string.login_page'))
        .fontSize($r('app.float.page_title_text_size'))
        .fontWeight(FontWeight.Medium)
        .fontColor($r('app.color.title_text_color'))

      // 登录了解更多的text
      Text($r('app.string.login_more'))
        .fontSize($r('app.float.normal_text_size'))
        .fontColor($r('app.color.login_more_text_color'))
        .margin({ bottom: $r('app.float.login_more_margin_bottom'), top: $r('app.float.login_more_margin_top') })
      // 账号输入框
      TextInput({ placeholder: $r('app.string.account') })
        .inputStyle()
        .maxLength(CommonConstants.INPUT_ACCOUNT_LENGTH)
        .type(InputType.Number)
        .onChange((value: string) => {
          this.account = value
        })

      Line()
        .width('100%')
        .height(2)
        .backgroundColor(Color.Gray)
      // 账号输入框下面的一条线

      // 密码输入框
      TextInput({ placeholder: $r('app.string.password') })
        .inputStyle()
        .maxLength(CommonConstants.INPUT_PASSWORD_LENGTH)
        .type(InputType.Password)
        .onChange((value: string) => {
          this.password = value
        })

      Line()
        .width('100%')
        .height(2)
        .backgroundColor(Color.Gray)
    }
  }
}