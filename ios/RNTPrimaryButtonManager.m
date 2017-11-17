#import "RNTPrimaryButtonManager.h"

@implementation RNTPrimaryButtonManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RNTPrimaryButtonView *view = [RNTPrimaryButtonView new];
  [view.button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
  return view;
}

- (void)buttonTapped:(id)sender
{
  NSLog(@"buttonTapped fired!");
}

RCT_CUSTOM_VIEW_PROPERTY(title, NSString, RNTPrimaryButtonView)
{
  NSString *newTitle = json ? [RCTConvert NSString:json] : [view.button titleForState:UIControlStateNormal];
  [view.button setTitle:newTitle forState:UIControlStateNormal];
}

@end
