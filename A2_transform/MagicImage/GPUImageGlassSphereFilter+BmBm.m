#import "GPUImageGlassSphereFilter+BmBm.h"
@implementation GPUImageGlassSphereFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
