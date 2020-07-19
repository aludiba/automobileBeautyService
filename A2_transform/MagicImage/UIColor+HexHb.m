#import "UIColor+HexHb.h"
@implementation UIColor (HexHb)
+ (BOOL)integerValueFromHexStringHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)colorWithHexStringHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)colorWithHexStringAlphaHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)colorWithGrayScaleHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
