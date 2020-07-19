#import "BMGPUImageHistogramEqualizationFilterS+BmBmHb.h"
@implementation BMGPUImageHistogramEqualizationFilterS (BmBmHb)
+ (BOOL)iinitBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)qInitwithhistogramtypeBmBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)aSetdownsamplingfactorBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
