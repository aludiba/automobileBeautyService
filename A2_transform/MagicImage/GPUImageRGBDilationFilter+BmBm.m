#import "GPUImageRGBDilationFilter+BmBm.h"
@implementation GPUImageRGBDilationFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
