#import "GPUImageFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageGrayscaleFilter+Bm.h"
#import "GPUImageGrayscaleFilter+BmBm.h"
#import "GPUImageGrayscaleFilter+BmBmHb.h"

@interface GPUImageGrayscaleFilter (BmBmHbHb)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmHbHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputBmBmHbHb:(NSInteger)hb;
+ (BOOL)providesMonochromeOutputBmBmHbHb:(NSInteger)hb;
+ (BOOL)initBmBmHbHb:(NSInteger)hb;

@end
