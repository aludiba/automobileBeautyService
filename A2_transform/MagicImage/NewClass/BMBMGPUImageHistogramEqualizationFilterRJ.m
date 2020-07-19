#import "BMBMGPUImageHistogramEqualizationFilterRJ.h"
@implementation BMBMGPUImageHistogramEqualizationFilterRJ
+ (BOOL)iGinitbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)aJinitwithhistogramtypebmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)DKsetdownsamplingfactorbmbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
