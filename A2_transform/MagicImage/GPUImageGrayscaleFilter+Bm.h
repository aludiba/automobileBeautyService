#import "GPUImageFilter.h"
#import "GPUImageGrayscaleFilter.h"

@interface GPUImageGrayscaleFilter (Bm)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;

@end
