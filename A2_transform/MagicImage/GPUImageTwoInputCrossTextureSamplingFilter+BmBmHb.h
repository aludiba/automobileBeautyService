#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+Bm.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+BmBm.h"

@interface GPUImageTwoInputCrossTextureSamplingFilter (BmBmHb)
+ (BOOL)initWithFragmentShaderFromStringBmBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmBmHb:(NSInteger)hb;
+ (BOOL)setTexelWidthBmBmHb:(NSInteger)hb;
+ (BOOL)setTexelHeightBmBmHb:(NSInteger)hb;

@end
