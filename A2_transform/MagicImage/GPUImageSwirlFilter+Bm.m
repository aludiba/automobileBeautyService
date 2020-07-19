#import "GPUImageSwirlFilter+Bm.h"
@implementation GPUImageSwirlFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setRadiusBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setAngleBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setCenterBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
