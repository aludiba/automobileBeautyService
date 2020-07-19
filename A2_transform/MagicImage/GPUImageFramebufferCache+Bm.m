#import "GPUImageFramebufferCache+Bm.h"
@implementation GPUImageFramebufferCache (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)hashForSizeTextureoptionsOnlytextureBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)fetchFramebufferForSizeOnlytextureBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)returnFramebufferToCacheBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)purgeAllUnassignedFramebuffersBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)addFramebufferToActiveImageCaptureListBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)removeFramebufferFromActiveImageCaptureListBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
