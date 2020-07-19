#import "UIColor+HexBm.h"
@implementation UIColor (HexBm)
+ (BOOL)integerValueFromHexStringBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)colorWithHexStringBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)colorWithHexStringAlphaBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)colorWithGrayScaleBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
