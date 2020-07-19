#import "GPUImageFilterGroup.h"
#import "GPUImageFASTCornerDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageNonMaximumSuppressionFilter.h"
#import "GPUImageFASTCornerDetectionFilter+Bm.h"
#import "GPUImageFASTCornerDetectionFilter+BmBm.h"

@interface GPUImageFASTCornerDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithFASTDetectorVariantBmBmBm:(NSInteger)BM;

@end
