#import "GPUImageRGBOpeningFilter+BmBmBm.h"
@implementation GPUImageRGBOpeningFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
