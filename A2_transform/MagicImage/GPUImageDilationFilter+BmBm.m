#import "GPUImageDilationFilter+BmBm.h"
@implementation GPUImageDilationFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
