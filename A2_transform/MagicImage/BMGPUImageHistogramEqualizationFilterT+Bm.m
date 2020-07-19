#import "BMGPUImageHistogramEqualizationFilterT+Bm.h"
@implementation BMGPUImageHistogramEqualizationFilterT (Bm)
+ (BOOL)yInitbmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)xInitwithhistogramtypebmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)zSetdownsamplingfactorbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
