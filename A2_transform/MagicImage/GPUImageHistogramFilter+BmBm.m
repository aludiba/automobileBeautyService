#import "GPUImageHistogramFilter+BmBm.h"
@implementation GPUImageHistogramFilter (BmBm)
+ (BOOL)initWithHistogramTypeBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)initializeSecondaryAttributesBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sizeOfFBOBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)outputFrameSizeBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
