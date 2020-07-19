#import "BMBMGPUImagePosterizeFilteroQ.h"
@implementation BMBMGPUImagePosterizeFilteroQ
+ (BOOL)aNinit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)nQsetcolorlevels:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
