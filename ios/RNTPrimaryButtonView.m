#import "RNTPrimaryButtonView.h"
#import "RCTUtils.h"
#import "UIView+React.h"

@interface RNTPrimaryButtonView ()

@property (nonatomic, copy) RCTBubblingEventBlock onPress;

@end

@implementation RNTPrimaryButtonView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];
  
  if (self) {
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.backgroundColor = [UIColor colorWithRed:250.0f/255.0f
                                             green:100.0f/255.0f
                                             blue:0.0f/255.0f
                                             alpha:1.0f];
    [self.button.titleLabel setFont:[UIFont boldSystemFontOfSize:17]];
    [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.button setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:0.5f] forState:UIControlStateHighlighted];
    self.button.layer.cornerRadius = 2;
    self.button.clipsToBounds = YES;
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addSubview:self.button];
    
    [NSLayoutConstraint activateConstraints:@[
      [[self.button topAnchor] constraintEqualToAnchor:[self topAnchor]],
      [[self.button heightAnchor] constraintEqualToConstant:44],
      [[self.button leftAnchor] constraintEqualToAnchor:[self leftAnchor]],
      [[self.button rightAnchor] constraintEqualToAnchor:[self rightAnchor]]
    ]];
    [self.button addTarget:self action:@selector(didTap) forControlEvents:UIControlEventTouchUpInside];
  }

  return self;
}

- (void)didTap {
  if (_onPress) {
    _onPress(@{ @"foo": @"bar" });
  }
}

@end
