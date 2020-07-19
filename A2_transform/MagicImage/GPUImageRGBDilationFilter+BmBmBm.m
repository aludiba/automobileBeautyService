#import "GPUImageRGBDilationFilter+BmBmBm.h"
@implementation GPUImageRGBDilationFilter (BmBmBm)
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
