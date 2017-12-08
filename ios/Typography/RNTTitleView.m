#import "RNTTitleView.h"

@implementation RNTTitleView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];

  if (self) {
    [self setTextColor:UIColor.magentaColor];
    [self setFont:[UIFont systemFontOfSize:20]];
    [self setBackgroundColor:UIColor.clearColor];
  }

  return self;
}

@end
