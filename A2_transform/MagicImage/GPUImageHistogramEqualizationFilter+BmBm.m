#import "GPUImageHistogramEqualizationFilter+BmBm.h"
@implementation GPUImageHistogramEqualizationFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)initWithHistogramTypeBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setDownsamplingFactorBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
