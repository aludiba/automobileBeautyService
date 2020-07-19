#import "GPUImageFramebufferCache+BmBmBmHb.h"
@implementation GPUImageFramebufferCache (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)hashForSizeTextureoptionsOnlytextureBmBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureBmBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)fetchFramebufferForSizeOnlytextureBmBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)returnFramebufferToCacheBmBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)purgeAllUnassignedFramebuffersBmBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)addFramebufferToActiveImageCaptureListBmBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)removeFramebufferFromActiveImageCaptureListBmBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
