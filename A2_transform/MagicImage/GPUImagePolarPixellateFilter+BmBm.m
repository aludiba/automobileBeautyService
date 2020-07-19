#import "GPUImagePolarPixellateFilter+BmBm.h"
@implementation GPUImagePolarPixellateFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setPixelSizeBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setCenterBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
