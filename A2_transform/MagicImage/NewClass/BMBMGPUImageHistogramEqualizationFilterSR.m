#import "BMBMGPUImageHistogramEqualizationFilterSR.h"
@implementation BMBMGPUImageHistogramEqualizationFilterSR
+ (BOOL)YIinitbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)wQinitwithhistogramtypebm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)OAsetdownsamplingfactorbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
