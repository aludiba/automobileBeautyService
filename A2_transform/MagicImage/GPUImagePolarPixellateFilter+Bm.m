#import "GPUImagePolarPixellateFilter+Bm.h"
@implementation GPUImagePolarPixellateFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setPixelSizeBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setCenterBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
