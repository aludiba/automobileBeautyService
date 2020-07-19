#import "BMGPUImageHistogramEqualizationFilterS.h"
@implementation BMGPUImageHistogramEqualizationFilterS
+ (BOOL)iinit:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)qInitwithhistogramtype:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)aSetdownsamplingfactor:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
