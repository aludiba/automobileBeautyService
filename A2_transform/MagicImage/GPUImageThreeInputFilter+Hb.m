#import "GPUImageThreeInputFilter+Hb.h"
@implementation GPUImageThreeInputFilter (Hb)
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)initializeAttributesHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)disableThirdFrameCheckHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)rotatedSizeForindexHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
