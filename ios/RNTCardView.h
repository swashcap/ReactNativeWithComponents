#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>
#import <React/UIView+React.h>

@interface RNTCardView : UIView // <RCTComponent>

@property (nonatomic, copy) NSNumber *reactTag;
@property (atomic, strong) NSString *type;
@property UIView *root;

//@property NSArray<id<RCTComponent>> *reactSubviews;
//@property UIView<RCTComponent> *reactSuperview;

@end
//
//@interface RNTWrapper : UIView <RCTComponent>
//
//@end
