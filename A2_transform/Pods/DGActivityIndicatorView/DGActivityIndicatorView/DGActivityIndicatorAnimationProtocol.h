#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol DGActivityIndicatorAnimationProtocol <NSObject>
- (void)setupAnimationInLayer:(CALayer *)layer withSize:(CGSize)size tintColor:(UIColor *)tintColor;
@end