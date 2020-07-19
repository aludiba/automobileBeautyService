#import "GPUImageTwoPassFilter+BmHb.h"
@implementation GPUImageTwoPassFilter (BmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)initializeSecondaryAttributesBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)framebufferForOutputBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)removeOutputFramebufferBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
