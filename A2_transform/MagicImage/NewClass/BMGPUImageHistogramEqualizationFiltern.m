#import "BMGPUImageHistogramEqualizationFiltern.h"
@implementation BMGPUImageHistogramEqualizationFiltern
+ (BOOL)Cinit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)lInitwithhistogramtype:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ISetdownsamplingfactor:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
