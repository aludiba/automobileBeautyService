#import "GPUImageFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageGrayscaleFilter+Bm.h"

@interface GPUImageGrayscaleFilter (BmBm)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;

@end
