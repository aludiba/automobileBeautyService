#import "BMGPUImagePosterizeFilterA.h"
@implementation BMGPUImagePosterizeFilterA
+ (BOOL)HInitbmbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)PSetcolorlevelsbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
