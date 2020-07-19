#import "BMGPUImageHistogramEqualizationFilterT.h"
@implementation BMGPUImageHistogramEqualizationFilterT
+ (BOOL)yInitbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)xInitwithhistogramtypebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)zSetdownsamplingfactorbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
