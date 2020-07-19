#import "GPUImageFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter+Bm.h"

@interface GPUImageDirectionalNonMaximumSuppressionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM;
+ (BOOL)setLowerThresholdBmBm:(NSInteger)BM;
+ (BOOL)setUpperThresholdBmBm:(NSInteger)BM;

@end
