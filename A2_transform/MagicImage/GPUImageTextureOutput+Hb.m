#import "GPUImageTextureOutput+Hb.h"
@implementation GPUImageTextureOutput (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)doneWithTextureHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)maximumOutputSizeHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)endProcessingHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)shouldIgnoreUpdatesToThisTargetHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
