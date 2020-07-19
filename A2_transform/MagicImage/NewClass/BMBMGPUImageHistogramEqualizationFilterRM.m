#import "BMBMGPUImageHistogramEqualizationFilterRM.h"
@implementation BMBMGPUImageHistogramEqualizationFilterRM
+ (BOOL)MGinitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)oJinitwithhistogramtypebm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)XKsetdownsamplingfactorbm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
