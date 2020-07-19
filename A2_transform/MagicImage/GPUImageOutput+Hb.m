#import "GPUImageOutput+Hb.h"
@implementation GPUImageOutput (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setInputFramebufferForTargetAtindexHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)framebufferForOutputHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)removeOutputFramebufferHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)notifyTargetsAboutNewOutputTextureHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)targetsHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)addTargetHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)removeTargetHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)removeAllTargetsHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)useNextFrameForImageCaptureHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)newCGImageFromCurrentlyProcessedOutputHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)newCGImageByFilteringCGImageHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)providesMonochromeOutputHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)imageFromCurrentFramebufferHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)imageFromCurrentFramebufferWithOrientationHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)imageByFilteringImageHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)newCGImageByFilteringImageHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)imageFromCurrentFramebufferHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)imageFromCurrentFramebufferWithOrientationHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)imageByFilteringImageHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)newCGImageByFilteringImageHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setAudioEncodingTargetHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setOutputTextureOptionsHb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
