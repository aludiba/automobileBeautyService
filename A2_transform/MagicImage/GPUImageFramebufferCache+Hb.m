#import "GPUImageFramebufferCache+Hb.h"
@implementation GPUImageFramebufferCache (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)hashForSizeTextureoptionsOnlytextureHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)fetchFramebufferForSizeOnlytextureHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)returnFramebufferToCacheHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)purgeAllUnassignedFramebuffersHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)addFramebufferToActiveImageCaptureListHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)removeFramebufferFromActiveImageCaptureListHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
