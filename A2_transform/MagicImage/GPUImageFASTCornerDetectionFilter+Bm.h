#import "GPUImageFilterGroup.h"
#import "GPUImageFASTCornerDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageNonMaximumSuppressionFilter.h"

@interface GPUImageFASTCornerDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithFASTDetectorVariantBm:(NSInteger)BM;

@end
