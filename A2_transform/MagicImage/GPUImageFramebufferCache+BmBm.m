#import "GPUImageFramebufferCache+BmBm.h"
@implementation GPUImageFramebufferCache (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)hashForSizeTextureoptionsOnlytextureBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)fetchFramebufferForSizeOnlytextureBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)returnFramebufferToCacheBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)purgeAllUnassignedFramebuffersBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)addFramebufferToActiveImageCaptureListBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)removeFramebufferFromActiveImageCaptureListBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
