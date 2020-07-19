#import "BMBMGPUImageHistogramEqualizationFilternw.h"
@implementation BMBMGPUImageHistogramEqualizationFilternw
+ (BOOL)eCinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)ILinitwithhistogramtype:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)uIsetdownsamplingfactor:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
