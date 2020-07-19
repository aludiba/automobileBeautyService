#import "GPUImageFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"

@interface GPUImageDirectionalNonMaximumSuppressionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBm:(NSInteger)BM;
+ (BOOL)setLowerThresholdBm:(NSInteger)BM;
+ (BOOL)setUpperThresholdBm:(NSInteger)BM;

@end
