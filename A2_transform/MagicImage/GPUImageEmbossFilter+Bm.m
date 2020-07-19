#import "GPUImageEmbossFilter+Bm.h"
@implementation GPUImageEmbossFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setIntensityBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
