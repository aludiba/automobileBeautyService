#import "GPUImageRGBOpeningFilter+Bm.h"
@implementation GPUImageRGBOpeningFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
