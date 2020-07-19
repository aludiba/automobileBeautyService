#import "GPUImageFilter.h"
#import "GPUImageTwoPassFilter.h"

@interface GPUImageTwoPassFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb;
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringHb:(NSInteger)hb;
+ (BOOL)initializeSecondaryAttributesHb:(NSInteger)hb;
+ (BOOL)framebufferForOutputHb:(NSInteger)hb;
+ (BOOL)removeOutputFramebufferHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockHb:(NSInteger)hb;
+ (BOOL)setUniformsForProgramAtIndexHb:(NSInteger)hb;

@end
