#import "GPUImageFilter.h"
#import "GPUImageGrayscaleFilter.h"

@interface GPUImageGrayscaleFilter (Hb)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb;
+ (BOOL)providesMonochromeOutputHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;

@end
