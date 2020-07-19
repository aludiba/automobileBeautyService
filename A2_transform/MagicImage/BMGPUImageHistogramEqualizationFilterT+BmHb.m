#import "BMGPUImageHistogramEqualizationFilterT+BmHb.h"
@implementation BMGPUImageHistogramEqualizationFilterT (BmHb)
+ (BOOL)yInitbmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)xInitwithhistogramtypebmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)zSetdownsamplingfactorbmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
