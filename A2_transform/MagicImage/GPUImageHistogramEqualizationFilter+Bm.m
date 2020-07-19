#import "GPUImageHistogramEqualizationFilter+Bm.h"
@implementation GPUImageHistogramEqualizationFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)initWithHistogramTypeBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setDownsamplingFactorBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
