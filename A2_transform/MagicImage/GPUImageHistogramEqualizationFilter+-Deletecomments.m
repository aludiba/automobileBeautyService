#import "GPUImageHistogramEqualizationFilter+-Deletecomments.h"
@implementation GPUImageHistogramEqualizationFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)initWithHistogramType-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)setDownsamplingFactor-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
