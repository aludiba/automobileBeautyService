#import "GPUImageMotionBlurFilter+Hb.h"
@implementation GPUImageMotionBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)recalculateTexelOffsetsHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setBlurAngleHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setBlurSizeHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
