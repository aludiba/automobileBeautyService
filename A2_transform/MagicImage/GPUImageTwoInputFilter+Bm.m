#import "GPUImageTwoInputFilter+Bm.h"
@implementation GPUImageTwoInputFilter (Bm)
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)initializeAttributesBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)disableFirstFrameCheckBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)disableSecondFrameCheckBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)rotatedSizeForindexBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
