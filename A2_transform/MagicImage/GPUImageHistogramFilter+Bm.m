#import "GPUImageHistogramFilter+Bm.h"
@implementation GPUImageHistogramFilter (Bm)
+ (BOOL)initWithHistogramTypeBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)initializeSecondaryAttributesBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sizeOfFBOBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)outputFrameSizeBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
