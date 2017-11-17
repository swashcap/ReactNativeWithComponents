#import "RNTPrimaryButtonManager.h"

@implementation RNTPrimaryButtonManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RNTPrimaryButtonView *view = [RNTPrimaryButtonView new];
  return view;
}

RCT_CUSTOM_VIEW_PROPERTY(title, NSString, UIView)
{
  // TODO: Gotta be a better way to do this...
  for (UIView *i in view.subviews) {
    if ([i isKindOfClass:[UIButton class]]) {
      UIButton *button = (UIButton *)i;
      NSString *newTitle = json ? [RCTConvert NSString:json] : [button titleForState:UIControlStateNormal];
      
      [button setTitle:newTitle forState:UIControlStateNormal];
      break;
    }
  }
}

RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

@end
