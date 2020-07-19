#import "GPUImageTwoPassFilter+Hb.h"
@implementation GPUImageTwoPassFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)initializeSecondaryAttributesHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)framebufferForOutputHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)removeOutputFramebufferHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
