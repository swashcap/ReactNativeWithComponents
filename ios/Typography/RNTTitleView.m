#import "RNTTitleView.h"

@implementation RNTTitleView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];

  if (self) {
    self.label = [UILabel new];
    [self.label setTextColor:UIColor.darkGrayColor];
    [self.label setFont:[UIFont systemFontOfSize:20]];

    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.label];

    [NSLayoutConstraint activateConstraints:@[
                                              [[self.label centerXAnchor] constraintEqualToAnchor:[self centerXAnchor]],
                                              [[self.label centerYAnchor] constraintEqualToAnchor:[self centerYAnchor]]
                                              ]];
  }

  return self;
}

@end
