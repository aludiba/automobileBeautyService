#import "GPUImagePolarPixellateFilter+BmBmBm.h"
@implementation GPUImagePolarPixellateFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setPixelSizeBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setCenterBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
