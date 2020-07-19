#import "GPUImageFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"

@interface GPUImageDirectionalNonMaximumSuppressionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHb:(NSInteger)hb;
+ (BOOL)setLowerThresholdHb:(NSInteger)hb;
+ (BOOL)setUpperThresholdHb:(NSInteger)hb;

@end
