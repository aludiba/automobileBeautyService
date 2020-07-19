#import "GPUImageFilterGroup.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageHistogramEqualizationFilter.h"
#import "GPUImageHistogramEqualizationFilter+Bm.h"
#import "GPUImageHistogramEqualizationFilter+BmBm.h"

@interface GPUImageHistogramEqualizationFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithHistogramTypeBmBmBm:(NSInteger)BM;
+ (BOOL)setDownsamplingFactorBmBmBm:(NSInteger)BM;

@end
