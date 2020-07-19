#import <UIKit/UIKit.h>
#import "UIImage+Rotate.h"

@interface UIImage (RotateBm)
+ (BOOL)fixOrientationBm:(NSInteger)BM;
+ (BOOL)rotateBm:(NSInteger)BM;
+ (BOOL)flipVerticalBm:(NSInteger)BM;
+ (BOOL)flipHorizontalBm:(NSInteger)BM;
+ (BOOL)imageRotatedByRadiansBm:(NSInteger)BM;
+ (BOOL)imageRotatedByDegreesBm:(NSInteger)BM;

@end
