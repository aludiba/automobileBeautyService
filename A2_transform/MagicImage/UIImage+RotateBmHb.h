#import <UIKit/UIKit.h>
#import "UIImage+Rotate.h"
#import "UIImage+RotateBm.h"

@interface UIImage (RotateBmHb)
+ (BOOL)fixOrientationBmHb:(NSInteger)hb;
+ (BOOL)rotateBmHb:(NSInteger)hb;
+ (BOOL)flipVerticalBmHb:(NSInteger)hb;
+ (BOOL)flipHorizontalBmHb:(NSInteger)hb;
+ (BOOL)imageRotatedByRadiansBmHb:(NSInteger)hb;
+ (BOOL)imageRotatedByDegreesBmHb:(NSInteger)hb;

@end
