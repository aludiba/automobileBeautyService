#import "GPUImageFilterGroup.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageHistogramEqualizationFilter.h"
#import "GPUImageHistogramEqualizationFilter+Bm.h"

@interface GPUImageHistogramEqualizationFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithHistogramTypeBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setDownsamplingFactorBm-Deletecomments:(NSInteger)-deleteComments;

@end
