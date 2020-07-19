#import "GPUImageStretchDistortionFilter+Bm.h"
@implementation GPUImageStretchDistortionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setCenterBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
