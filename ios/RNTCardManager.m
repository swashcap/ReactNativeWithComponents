#import "RNTCardManager.h"

@implementation RNTCardManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RNTCardView *view = [RNTCardView new];
  return view;
}

RCT_CUSTOM_VIEW_PROPERTY(type, NSString, RNTCardView)
{
  NSString *type = json ? [RCTConvert NSString:json] : view.type;
}

@end
