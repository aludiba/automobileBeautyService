#import "GPUImageFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageGrayscaleFilter+Bm.h"

@interface GPUImageGrayscaleFilter (BmHb)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputBmHb:(NSInteger)hb;
+ (BOOL)providesMonochromeOutputBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;

@end
