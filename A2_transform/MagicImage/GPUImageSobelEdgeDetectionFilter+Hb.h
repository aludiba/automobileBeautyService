#import "GPUImageTwoPassFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"

@interface GPUImageSobelEdgeDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)setUniformsForProgramAtIndexHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb;
+ (BOOL)providesMonochromeOutputHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHb:(NSInteger)hb;
+ (BOOL)setEdgeStrengthHb:(NSInteger)hb;

@end
