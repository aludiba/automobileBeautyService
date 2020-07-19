#import "BMGPUImageHistogramEqualizationFilterx.h"
@implementation BMGPUImageHistogramEqualizationFilterx
+ (BOOL)mInitbmbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)iInitwithhistogramtypebmbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)qSetdownsamplingfactorbmbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
