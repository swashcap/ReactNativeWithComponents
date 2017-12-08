#import "RNTHeadlineView.h"

@implementation RNTHeadlineView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];
  
  if (self) {
    [self setTextColor:UIColor.magentaColor];
    [self setFont:[UIFont systemFontOfSize:22]];
    [self setBackgroundColor:UIColor.clearColor];
  }
  
  return self;
}

@end
