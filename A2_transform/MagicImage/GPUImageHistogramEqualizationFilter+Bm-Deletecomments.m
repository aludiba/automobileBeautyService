#import "GPUImageHistogramEqualizationFilter+Bm-Deletecomments.h"
@implementation GPUImageHistogramEqualizationFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)initWithHistogramTypeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)setDownsamplingFactorBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
