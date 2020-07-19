#import "GPUImageFramebufferCache+BmBmBm.h"
@implementation GPUImageFramebufferCache (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)hashForSizeTextureoptionsOnlytextureBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)fetchFramebufferForSizeOnlytextureBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)returnFramebufferToCacheBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)purgeAllUnassignedFramebuffersBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)addFramebufferToActiveImageCaptureListBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)removeFramebufferFromActiveImageCaptureListBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
