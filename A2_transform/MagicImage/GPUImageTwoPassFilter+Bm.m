#import "GPUImageTwoPassFilter+Bm.h"
@implementation GPUImageTwoPassFilter (Bm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)initializeSecondaryAttributesBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)framebufferForOutputBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)removeOutputFramebufferBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
