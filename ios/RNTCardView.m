#import "RNTCardView.h"

@implementation RNTCardView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];
  
  if (self) {
    self.root = [[UIView alloc] initWithFrame:aRect];
    [self.root setBackgroundColor:[UIColor purpleColor]];
    
    self.root.backgroundColor = UIColor.purpleColor;
    self.root.layer.cornerRadius = 2;
    
    [self.root.topAnchor constraintEqualToAnchor:self.topAnchor];
    [self.root.bottomAnchor constraintEqualToAnchor:self.bottomAnchor];
    [self.root.leadingAnchor constraintEqualToAnchor:self.leadingAnchor];
    [self.root.trailingAnchor constraintEqualToAnchor:self.trailingAnchor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:aRect];
    [label setText:@"Sample label"];
    
    [self.root addSubview:label];
    
    [self addSubview:self.root];
  }
  
  return self;
}

- (void)insertReactSubview:(UIView *)subview atIndex:(NSInteger)atIndex
{
  [super insertReactSubview:subview atIndex:atIndex];
  
  [self.root addSubview:subview];
}

- (void)removeReactSubview:(UIView *)subview
{
  [super removeReactSubview:subview];
}

//- (NSArray<id<RCTComponent>> *)reactSubviews
//{
//  return [super reactSubviews];
//}
//
//- (id<RCTComponent>)reactSuperview
//{
//  return [super reactSuperview];
//}

- (NSNumber *)reactTagAtPoint:(CGPoint)point
{
  return [super reactTagAtPoint:point];
}

- (BOOL)isReactRootView
{
  return RCTIsReactRootView(self.reactTag);
}

@end
