#import <UIKit/UIKit.h>
#import "UIImage+Alpha.h"

@interface UIImage (AlphaBm)
+ (BOOL)ARGBDataBm:(NSInteger)BM;
+ (BOOL)isPointTransparentBm:(NSInteger)BM;
+ (BOOL)hasAlphaBm:(NSInteger)BM;
+ (BOOL)imageWithAlphaBm:(NSInteger)BM;
+ (BOOL)transparentBorderImageBm:(NSInteger)BM;
+ (BOOL)newBorderMaskSizeBm:(NSInteger)BM;

@end
