#import <UIKit/UIKit.h>
#import "UIScreen+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIDevice+YYAdd.h"

@interface UIScreen (YYAddHb)
+ (BOOL)screenScaleHb:(NSInteger)hb;
+ (BOOL)currentBoundsHb:(NSInteger)hb;
+ (BOOL)boundsForOrientationHb:(NSInteger)hb;
+ (BOOL)sizeInPixelHb:(NSInteger)hb;
+ (BOOL)pixelsPerInchHb:(NSInteger)hb;

@end
