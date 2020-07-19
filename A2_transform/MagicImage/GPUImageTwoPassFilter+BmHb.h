#import "GPUImageFilter.h"
#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassFilter+Bm.h"

@interface GPUImageTwoPassFilter (BmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmHb:(NSInteger)hb;
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBmHb:(NSInteger)hb;
+ (BOOL)initializeSecondaryAttributesBmHb:(NSInteger)hb;
+ (BOOL)framebufferForOutputBmHb:(NSInteger)hb;
+ (BOOL)removeOutputFramebufferBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb;
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockBmHb:(NSInteger)hb;
+ (BOOL)setUniformsForProgramAtIndexBmHb:(NSInteger)hb;

@end
