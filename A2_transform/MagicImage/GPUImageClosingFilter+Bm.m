#import "GPUImageClosingFilter+Bm.h"
@implementation GPUImageClosingFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setVerticalTexelSpacingBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
