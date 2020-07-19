#import "BMGPUImageHistogramEqualizationFilterR.h"
@implementation BMGPUImageHistogramEqualizationFilterR
+ (BOOL)GInitbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)jInitwithhistogramtypebm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)kSetdownsamplingfactorbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
