#import "GPUImageOutput.h"
#import "GPUImageTextureInput.h"

@interface GPUImageTextureInput (Hb)
+ (BOOL)initWithTextureSizeHb:(NSInteger)hb;
+ (BOOL)processTextureWithFrameTimeHb:(NSInteger)hb;

@end
