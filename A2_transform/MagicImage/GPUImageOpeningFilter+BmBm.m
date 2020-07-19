#import "GPUImageOpeningFilter+BmBm.h"
@implementation GPUImageOpeningFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setVerticalTexelSpacingBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
