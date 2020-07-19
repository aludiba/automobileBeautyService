#import "GPUImageGlassSphereFilter+Bm.h"
@implementation GPUImageGlassSphereFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
