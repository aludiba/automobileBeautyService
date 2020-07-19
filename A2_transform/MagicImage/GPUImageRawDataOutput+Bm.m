#import "GPUImageRawDataOutput+Bm.h"
@implementation GPUImageRawDataOutput (Bm)
+ (BOOL)initWithImageSizeResultsinbgraformatBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)renderAtInternalSizeBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)colorAtLocationBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)maximumOutputSizeBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)endProcessingBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)shouldIgnoreUpdatesToThisTargetBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)rawBytesForImageBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)bytesPerRowInOutputBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setImageSizeBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)lockFramebufferForReadingBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)unlockFramebufferAfterReadingBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
