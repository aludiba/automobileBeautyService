#import "GPUImageOpeningFilter+BmBmBm.h"
@implementation GPUImageOpeningFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setVerticalTexelSpacingBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
