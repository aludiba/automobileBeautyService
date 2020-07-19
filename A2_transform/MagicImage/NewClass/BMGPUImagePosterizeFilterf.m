#import "BMGPUImagePosterizeFilterF.h"
@implementation BMGPUImagePosterizeFilterF
+ (BOOL)VInitbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)eSetcolorlevelsbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
