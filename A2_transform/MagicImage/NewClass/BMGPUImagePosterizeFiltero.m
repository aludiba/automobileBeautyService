#import "BMGPUImagePosterizeFiltero.h"
@implementation BMGPUImagePosterizeFiltero
+ (BOOL)ninit:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)qSetcolorlevels:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
