#import "GPUImageFilter.h"
#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassFilter+Bm.h"

@interface GPUImageTwoPassFilter (BmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)initializeSecondaryAttributesBmBm:(NSInteger)BM;
+ (BOOL)framebufferForOutputBmBm:(NSInteger)BM;
+ (BOOL)removeOutputFramebufferBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockBmBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBmBm:(NSInteger)BM;

@end
