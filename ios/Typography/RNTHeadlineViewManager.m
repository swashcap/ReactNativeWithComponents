#import "RNTHeadlineViewManager.h"

@implementation RNTHeadlineViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [RNTHeadlineView new];
}

RCT_CUSTOM_VIEW_PROPERTY(text, NSString, RNTHeadlineView)
{
    NSString *newText = json ? [RCTConvert NSString:json] : view.text;
    view.text = newText;
}

@end
