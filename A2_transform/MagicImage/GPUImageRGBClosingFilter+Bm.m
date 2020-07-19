#import "GPUImageRGBClosingFilter+Bm.h"
@implementation GPUImageRGBClosingFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
