#import "GPUImageThreeInputFilter+Bm.h"
@implementation GPUImageThreeInputFilter (Bm)
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)initializeAttributesBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)disableThirdFrameCheckBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rotatedSizeForindexBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
