#import "GPUImageFilterGroup.h"
#import "GPUImageFASTCornerDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageNonMaximumSuppressionFilter.h"
#import "GPUImageFASTCornerDetectionFilter+Bm.h"

@interface GPUImageFASTCornerDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithFASTDetectorVariantBmBm:(NSInteger)BM;

@end
