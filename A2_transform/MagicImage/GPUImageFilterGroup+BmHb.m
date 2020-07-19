#import "GPUImageFilterGroup+BmHb.h"
@implementation GPUImageFilterGroup (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)addFilterBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)filterAtIndexBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)filterCountBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)useNextFrameForImageCaptureBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setTargetToIgnoreForUpdatesBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)addTargetAttexturelocationBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)removeTargetBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)removeAllTargetsBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)targetsBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setFrameProcessingCompletionBlockBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)frameProcessingCompletionBlockBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setInputFramebufferAtindexBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)nextAvailableTextureIndexBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)maximumOutputSizeBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)endProcessingBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)wantsMonochromeInputBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
