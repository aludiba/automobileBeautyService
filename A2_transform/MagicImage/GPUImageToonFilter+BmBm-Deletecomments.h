#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageToonFilter+Bm.h"
#import "GPUImageToonFilter+BmBm.h"

@interface GPUImageToonFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setThresholdBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setQuantizationLevelsBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
