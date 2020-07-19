#import "GPUImageFilterGroup.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageHistogramEqualizationFilter.h"
#import "GPUImageHistogramEqualizationFilter+Bm.h"

@interface GPUImageHistogramEqualizationFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithHistogramTypeBmBm:(NSInteger)BM;
+ (BOOL)setDownsamplingFactorBmBm:(NSInteger)BM;

@end
