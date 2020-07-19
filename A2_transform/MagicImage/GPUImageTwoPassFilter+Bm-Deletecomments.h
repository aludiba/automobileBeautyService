#import "GPUImageFilter.h"
#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassFilter+Bm.h"

@interface GPUImageTwoPassFilter (Bm-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initializeSecondaryAttributesBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)framebufferForOutputBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeOutputFramebufferBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblockBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUniformsForProgramAtIndexBm-Deletecomments:(NSInteger)-deleteComments;

@end
