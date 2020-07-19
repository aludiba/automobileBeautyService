#import "GPUImageFilterGroup+Hb.h"
@implementation GPUImageFilterGroup (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)addFilterHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)filterAtIndexHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)filterCountHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)useNextFrameForImageCaptureHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)newCGImageFromCurrentlyProcessedOutputHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setTargetToIgnoreForUpdatesHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)removeTargetHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)removeAllTargetsHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)targetsHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setFrameProcessingCompletionBlockHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)(GPUImageOutput *, CMTime))frameProcessingCompletionBlockHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)maximumOutputSizeHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)endProcessingHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
