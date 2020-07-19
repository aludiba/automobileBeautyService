#import "BMGPUImagePosterizeFilterk.h"
@implementation BMGPUImagePosterizeFilterk
+ (BOOL)finit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)qSetcolorlevels:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
