#import "GPUImageOpeningFilter+Bm.h"
@implementation GPUImageOpeningFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setVerticalTexelSpacingBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
