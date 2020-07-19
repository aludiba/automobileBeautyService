#import "GPUImageFilterGroup.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageHistogramEqualizationFilter.h"

@interface GPUImageHistogramEqualizationFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithHistogramTypeBm:(NSInteger)BM;
+ (BOOL)setDownsamplingFactorBm:(NSInteger)BM;

@end
