#import "GPUImageRGBOpeningFilter+BmBm.h"
@implementation GPUImageRGBOpeningFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
