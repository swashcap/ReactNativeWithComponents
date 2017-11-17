#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>
#import "RNTPrimaryButtonView.h"

@interface RNTPrimaryButtonManager : RCTViewManager

@property (nonatomic, copy) RCTBubblingEventBlock onPress;

@end
