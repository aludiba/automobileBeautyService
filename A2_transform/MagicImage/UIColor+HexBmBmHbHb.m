#import "UIColor+HexBmBmHbHb.h"
@implementation UIColor (HexBmBmHbHb)
+ (BOOL)integerValueFromHexStringBmBmHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)colorWithHexStringBmBmHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)colorWithHexStringAlphaBmBmHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)colorWithGrayScaleBmBmHbHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
