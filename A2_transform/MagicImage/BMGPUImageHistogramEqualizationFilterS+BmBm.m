#import "BMGPUImageHistogramEqualizationFilterS+BmBm.h"
@implementation BMGPUImageHistogramEqualizationFilterS (BmBm)
+ (BOOL)iinitBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)qInitwithhistogramtypeBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)aSetdownsamplingfactorBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
