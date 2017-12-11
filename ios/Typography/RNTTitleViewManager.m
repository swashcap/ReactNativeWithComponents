#import "RNTTitleViewManager.h"

@implementation RNTTitleViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [RNTTitleView new];
}

RCT_CUSTOM_VIEW_PROPERTY(text, NSString, RNTTitleView)
{
    NSString *newText = json ? [RCTConvert NSString:json] : view.label.text;
    view.label.text = newText;
}

@end
