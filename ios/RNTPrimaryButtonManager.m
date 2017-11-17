#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>
#import "RNTPrimaryButtonView.h"

@interface RNTPrimaryButtonManager : RCTViewManager <ViewDelegate>
@end

@implementation RNTPrimaryButtonManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RNTPrimaryButtonView *view = [RNTPrimaryButtonView new];
  view.delegate = self;
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

#pragma mark ViewDelegate

- (void)buttonView:(RNTPrimaryButtonView *)buttonView onPress

@end
