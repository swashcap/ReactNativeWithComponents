#import <UIKit/UIKit.h>
#import "RCTUtils.h"
#import "UIView+React.h"

@interface RNTPrimaryButtonView : UIView

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, copy) RCTBubblingEventBlock onPress;

@end
