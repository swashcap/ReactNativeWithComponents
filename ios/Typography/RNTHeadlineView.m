#import "RNTHeadlineView.h"

@implementation RNTHeadlineView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];
  
  if (self) {
    [self setTextColor:UIColor.darkGrayColor];
    [self setFont:[UIFont systemFontOfSize:32]];
  }
  
  return self;
}

@end
