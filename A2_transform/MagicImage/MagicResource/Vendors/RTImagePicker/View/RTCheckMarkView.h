#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface RTCheckMarkView : UIView
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, assign) IBInspectable CGFloat checkmarkLineWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, strong) IBInspectable UIColor *bodyColor;
@property (nonatomic, strong) IBInspectable UIColor *checkmarkColor;
@end
