#import "GPUImageDilationFilter+Bm.h"
@implementation GPUImageDilationFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
