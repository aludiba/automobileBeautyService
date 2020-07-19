#import "GPUImageClosingFilter+BmBmBm.h"
@implementation GPUImageClosingFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setVerticalTexelSpacingBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBmBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
