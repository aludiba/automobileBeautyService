#import "GPUImageFramebuffer+Hb.h"
@implementation GPUImageFramebuffer (Hb)
+ (BOOL)initWithSizeTextureoptionsOnlytextureHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)initWithSizeOverriddentextureHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)initWithSizeHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)generateTextureHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)generateFramebufferHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)destroyFramebufferHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)activateFramebufferHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)lockHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)unlockHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)clearAllLocksHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)disableReferenceCountingHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)enableReferenceCountingHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)newCGImageFromFramebufferContentsHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)restoreRenderTargetHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)lockForReadingHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)unlockAfterReadingHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)bytesPerRowHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)byteBufferHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)textureHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
