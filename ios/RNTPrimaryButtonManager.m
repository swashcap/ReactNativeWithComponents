#import "RNTPrimaryButtonManager.h"

@implementation RNTPrimaryButtonManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

- (UIView *)view
{
  RNTPrimaryButtonView *view = [RNTPrimaryButtonView new];
  return view;
}

RCT_CUSTOM_VIEW_PROPERTY(title, NSString, RNTPrimaryButtonView)
{
  NSString *newTitle = json ? [RCTConvert NSString:json] : [view.button titleForState:UIControlStateNormal];
  [view.button setTitle:newTitle forState:UIControlStateNormal];
}

@end
