#import "RNTBodyView.h"

@implementation RNTBodyView

- (id)initWithFrame:(CGRect)aRect
{
  self = [super initWithFrame:aRect];
  
  if (self) {
    self.textView = [[UITextView alloc] init];
    [self.textView setBackgroundColor:UIColor.clearColor];
    [self.textView setTextColor:UIColor.darkGrayColor];
    [self.textView setFont:[UIFont systemFontOfSize:16]];
    self.textView.editable = NO;
    self.textView.scrollEnabled = NO;
    self.textView.layoutManager.delegate = self;
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addSubview:self.textView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [[self.textView topAnchor] constraintEqualToAnchor:[self topAnchor]],
                                              [[self.textView bottomAnchor] constraintEqualToAnchor:[self bottomAnchor]],
                                              [[self.textView leadingAnchor] constraintEqualToAnchor:[self leadingAnchor]],
                                              [[self.textView trailingAnchor] constraintEqualToAnchor:[self trailingAnchor]]
                                              ]];
  }
  
  return self;
}

- (CGFloat)layoutManager:(NSLayoutManager *)layoutManager lineSpacingAfterGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(CGRect)rect
{
  return 4;
}

/**
 * @link https://github.com/facebook/react-native/issues/15097#issuecomment-317098474
 * @link https://stackoverflow.com/a/42333832
 */
- (void)layoutSubviews
{
  [super layoutSubviews];
  
  [self.textView setTextContainerInset:UIEdgeInsetsZero];
  [self.textView.textContainer setLineFragmentPadding:0];
}

@end
