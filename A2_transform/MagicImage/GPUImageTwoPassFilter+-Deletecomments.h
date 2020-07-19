#import "GPUImageFilter.h"
#import "GPUImageTwoPassFilter.h"

@interface GPUImageTwoPassFilter (-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstring-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstring-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initializeSecondaryAttributes-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)framebufferForOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeOutputFramebuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)renderToTextureWithVerticesTexturecoordinates-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setAndExecuteUniformStateCallbackAtIndexForprogramToblock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUniformsForProgramAtIndex-Deletecomments:(NSInteger)-deleteComments;

@end
