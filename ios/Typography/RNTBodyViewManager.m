#import "RNTBodyViewManager.h"

@implementation RNTBodyViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [RNTBodyView new];
}

RCT_CUSTOM_VIEW_PROPERTY(text, NSString, RNTBodyView)
{
  NSString *newText = json ? [RCTConvert NSString:json] : view.textView.text;
  view.textView.text = newText;
}

@end
