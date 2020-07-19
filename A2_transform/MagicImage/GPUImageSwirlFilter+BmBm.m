#import "GPUImageSwirlFilter+BmBm.h"
@implementation GPUImageSwirlFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setRadiusBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setAngleBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setCenterBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
