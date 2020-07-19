#import "GPUImageSwirlFilter+BmBmBm.h"
@implementation GPUImageSwirlFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setRadiusBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setAngleBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setCenterBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
