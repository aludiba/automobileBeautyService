#import "GPUImageTwoInputFilter+Hb.h"
@implementation GPUImageTwoInputFilter (Hb)
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)initializeAttributesHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)disableFirstFrameCheckHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)disableSecondFrameCheckHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)rotatedSizeForindexHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
