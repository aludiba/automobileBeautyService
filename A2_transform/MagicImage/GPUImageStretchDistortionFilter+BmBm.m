#import "GPUImageStretchDistortionFilter+BmBm.h"
@implementation GPUImageStretchDistortionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setCenterBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
