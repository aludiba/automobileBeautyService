#import "GPUImageClosingFilter+BmBm.h"
@implementation GPUImageClosingFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setVerticalTexelSpacingBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
