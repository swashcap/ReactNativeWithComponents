#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>
#import "RNTPrimaryButtonView.h"

@interface RNTPrimaryButtonManager : RCTViewManager

- (void)buttonTapped:(id)sender;

@property (nonatomic, copy) RCTBubblingEventBlock onPress;

@end
