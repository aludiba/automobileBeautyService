#import "GPUImageTwoPassFilter+BmBm.h"
@implementation GPUImageTwoPassFilter (BmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)initializeSecondaryAttributesBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)framebufferForOutputBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)removeOutputFramebufferBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
