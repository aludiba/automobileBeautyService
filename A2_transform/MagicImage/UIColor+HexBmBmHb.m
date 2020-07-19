#import "UIColor+HexBmBmHb.h"
@implementation UIColor (HexBmBmHb)
+ (BOOL)integerValueFromHexStringBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)colorWithHexStringBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)colorWithHexStringAlphaBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)colorWithGrayScaleBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
