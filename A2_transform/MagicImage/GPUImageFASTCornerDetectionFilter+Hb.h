#import "GPUImageFilterGroup.h"
#import "GPUImageFASTCornerDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageNonMaximumSuppressionFilter.h"

@interface GPUImageFASTCornerDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithFASTDetectorVariantHb:(NSInteger)hb;

@end
