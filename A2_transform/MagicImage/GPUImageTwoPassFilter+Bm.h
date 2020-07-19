#import "GPUImageFilter.h"
#import "GPUImageTwoPassFilter.h"

@interface GPUImageTwoPassFilter (Bm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)initializeSecondaryAttributesBm:(NSInteger)BM;
+ (BOOL)framebufferForOutputBm:(NSInteger)BM;
+ (BOOL)removeOutputFramebufferBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBm:(NSInteger)BM;

@end
