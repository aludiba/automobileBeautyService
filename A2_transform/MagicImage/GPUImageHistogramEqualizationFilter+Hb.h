#import "GPUImageFilterGroup.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageHistogramEqualizationFilter.h"

@interface GPUImageHistogramEqualizationFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithHistogramTypeHb:(NSInteger)hb;
+ (BOOL)setDownsamplingFactorHb:(NSInteger)hb;

@end
