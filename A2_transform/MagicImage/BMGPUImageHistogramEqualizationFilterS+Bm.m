#import "BMGPUImageHistogramEqualizationFilterS+Bm.h"
@implementation BMGPUImageHistogramEqualizationFilterS (Bm)
+ (BOOL)iinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)qInitwithhistogramtypeBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)aSetdownsamplingfactorBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
