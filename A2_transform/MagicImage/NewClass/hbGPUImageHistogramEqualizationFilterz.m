#import "hbGPUImageHistogramEqualizationFilterz.h"
@implementation hbGPUImageHistogramEqualizationFilterz
+ (BOOL)hinit:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)nInitwithhistogramtype:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)lSetdownsamplingfactor:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
