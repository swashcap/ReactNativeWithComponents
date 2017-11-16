#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>

@interface RNPrimaryButtonManager : RCTViewManager
@end

@implementation RNPrimaryButtonManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[UIButton alloc] init];
}

@end
