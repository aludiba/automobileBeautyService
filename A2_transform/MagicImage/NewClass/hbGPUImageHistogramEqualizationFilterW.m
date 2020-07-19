#import "hbGPUImageHistogramEqualizationFilterW.h"
@implementation hbGPUImageHistogramEqualizationFilterW
+ (BOOL)Vinit:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)lInitwithhistogramtype:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)ESetdownsamplingfactor:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
