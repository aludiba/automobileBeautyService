#import "GPUImageFramebuffer+Bm.h"
@implementation GPUImageFramebuffer (Bm)
+ (BOOL)initWithSizeTextureoptionsOnlytextureBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)initWithSizeOverriddentextureBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)initWithSizeBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)generateTextureBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)generateFramebufferBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)destroyFramebufferBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)activateFramebufferBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)lockBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)unlockBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)clearAllLocksBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)disableReferenceCountingBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)enableReferenceCountingBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)newCGImageFromFramebufferContentsBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)restoreRenderTargetBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)lockForReadingBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)unlockAfterReadingBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)bytesPerRowBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)byteBufferBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)textureBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
