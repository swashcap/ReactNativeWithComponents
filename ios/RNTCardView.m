#import "RNTCardView.h"

@implementation RNTCardView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];
  
  if (self) {
    self.root = [[UIView alloc] init];
    [self setBackgroundColor:[UIColor purpleColor]];
    self.layer.cornerRadius = 2;

    self.root.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addSubview:self.root];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.root.topAnchor constraintEqualToAnchor:self.topAnchor constant:20.0],
                                              [self.root.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
                                              [self.root.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
                                              [self.root.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
      ]];

    UILabel *label = [[UILabel alloc] init];
    [label setText:@"Sample label"];
    
    label.translatesAutoresizingMaskIntoConstraints = NO;

    [self addSubview:label];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [label.topAnchor constraintEqualToAnchor:self.topAnchor],
                                              [label.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
                                              [label.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
                                              ]];
  }
  
  return self;
}

- (void)insertReactSubview:(UIView *)subview atIndex:(NSInteger)atIndex
{
  [self.root insertReactSubview:subview atIndex:atIndex];
}

- (void)removeReactSubview:(UIView *)subview
{
  [self.root removeReactSubview:subview];
}

- (NSArray<id<RCTComponent>> *)reactSubviews
{
  return [self.root reactSubviews];
}

- (id<RCTComponent>)reactSuperview
{
  return [self.root reactSuperview];
}

- (NSNumber *)reactTagAtPoint:(CGPoint)point
{
  return [self.root reactTagAtPoint:point];
}


- (void)didUpdateReactSubviews
{
  [self.root didUpdateReactSubviews];
}

- (BOOL)isReactRootView
{
  return RCTIsReactRootView(self.root.reactTag);
}

@end
