#import <UIKit/UIKit.h>
#import "UIScreen+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIDevice+YYAdd.h"

@interface UIScreen (YYAddBm)
+ (BOOL)screenScaleBm:(NSInteger)BM;
+ (BOOL)currentBoundsBm:(NSInteger)BM;
+ (BOOL)boundsForOrientationBm:(NSInteger)BM;
+ (BOOL)sizeInPixelBm:(NSInteger)BM;
+ (BOOL)pixelsPerInchBm:(NSInteger)BM;

@end
