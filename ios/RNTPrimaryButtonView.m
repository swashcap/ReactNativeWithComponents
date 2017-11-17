#import "RNTPrimaryButtonView.h"

@implementation RNTPrimaryButtonView

- (UIView*)init {
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  //  [button setTitle:@"Sample Title" forState:UIControlStateNormal];
  button.backgroundColor = [UIColor colorWithRed:250.0f/255.0f
                                           green:100.0f/255.0f
                                           blue:0.0f/255.0f
                                           alpha:1.0f];
  [button.titleLabel setFont:[UIFont boldSystemFontOfSize:17]];
  [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
  [button setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:0.5f] forState:UIControlStateHighlighted];
  button.layer.cornerRadius = 2;
  button.clipsToBounds = YES;
  button.translatesAutoresizingMaskIntoConstraints = NO;
  [button addTarget: @selector()forControlEvents:UIControlEventTouchUpInside];
  
  UIView *view = [[UIView alloc] init];
  [view addSubview:button];
  
  [NSLayoutConstraint activateConstraints:@[
    [[button topAnchor] constraintEqualToAnchor:[view topAnchor]],
    [[button heightAnchor] constraintEqualToConstant:44],
    [[button leftAnchor] constraintEqualToAnchor:[view leftAnchor]],
    [[button rightAnchor] constraintEqualToAnchor:[view rightAnchor]]
  ]];

  return view;
}


@end
