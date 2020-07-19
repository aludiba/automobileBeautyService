#import "GPUImageRGBDilationFilter+Bm.h"
@implementation GPUImageRGBDilationFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
