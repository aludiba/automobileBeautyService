#import "GPUImageStretchDistortionFilter+BmBmBm.h"
@implementation GPUImageStretchDistortionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setCenterBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
