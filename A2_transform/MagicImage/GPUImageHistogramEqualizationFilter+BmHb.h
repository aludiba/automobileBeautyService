#import "GPUImageFilterGroup.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageHistogramEqualizationFilter.h"
#import "GPUImageHistogramEqualizationFilter+Bm.h"

@interface GPUImageHistogramEqualizationFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithHistogramTypeBmHb:(NSInteger)hb;
+ (BOOL)setDownsamplingFactorBmHb:(NSInteger)hb;

@end
