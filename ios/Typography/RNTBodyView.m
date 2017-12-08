#import "RNTBodyView.h"

@implementation RNTBodyView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];
  
  if (self) {
    [self setTextColor:UIColor.darkGrayColor];
    [self setFont:[UIFont systemFontOfSize:16]];
    self.editable = NO;
    self.scrollEnabled = NO;
  }
  
  return self;
}
@end
