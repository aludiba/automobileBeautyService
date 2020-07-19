#import "GPUImageFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageGrayscaleFilter+Bm.h"
#import "GPUImageGrayscaleFilter+BmBm.h"

@interface GPUImageGrayscaleFilter (BmBmBm)
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBmBmBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
