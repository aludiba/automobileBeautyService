#import "GPUImageFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter+Bm.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter+BmBm.h"

@interface GPUImageDirectionalNonMaximumSuppressionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM;
+ (BOOL)setLowerThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)setUpperThresholdBmBmBm:(NSInteger)BM;

@end
