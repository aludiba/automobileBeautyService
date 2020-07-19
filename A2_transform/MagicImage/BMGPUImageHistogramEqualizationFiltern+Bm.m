#import "BMGPUImageHistogramEqualizationFiltern+Bm.h"
@implementation BMGPUImageHistogramEqualizationFiltern (Bm)
+ (BOOL)CinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)lInitwithhistogramtypeBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ISetdownsamplingfactorBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
