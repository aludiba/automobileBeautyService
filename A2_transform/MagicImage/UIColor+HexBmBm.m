#import "UIColor+HexBmBm.h"
@implementation UIColor (HexBmBm)
+ (BOOL)integerValueFromHexStringBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)colorWithHexStringBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)colorWithHexStringAlphaBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)colorWithGrayScaleBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
