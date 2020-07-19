#import <UIKit/UIKit.h>
#import "UIScreen+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIDevice+YYAdd.h"
#import "UIScreen+YYAddBm.h"

@interface UIScreen (YYAddBmHb)
+ (BOOL)screenScaleBmHb:(NSInteger)hb;
+ (BOOL)currentBoundsBmHb:(NSInteger)hb;
+ (BOOL)boundsForOrientationBmHb:(NSInteger)hb;
+ (BOOL)sizeInPixelBmHb:(NSInteger)hb;
+ (BOOL)pixelsPerInchBmHb:(NSInteger)hb;

@end
