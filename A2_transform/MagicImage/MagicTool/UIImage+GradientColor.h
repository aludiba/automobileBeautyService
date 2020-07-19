#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, GradientType) {
GradientTypeTopToBottom = 0,
GradientTypeLeftToRight = 1,
GradientTypeUpleftToLowright = 2,
GradientTypeUprightToLowleft = 3,
};
@interface UIImage (GradientColor)
+ (UIImage *)gradientColorImageFromColors:(NSArray*)colors gradientType:(GradientType)gradientType imgSize:(CGSize)imgSize;
@end
NS_ASSUME_NONNULL_END
