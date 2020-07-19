#import "GPUImageHistogramEqualizationFilter+BmBmBm.h"
@implementation GPUImageHistogramEqualizationFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)initWithHistogramTypeBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setDownsamplingFactorBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
