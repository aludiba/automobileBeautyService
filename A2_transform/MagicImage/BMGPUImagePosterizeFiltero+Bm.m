#import "BMGPUImagePosterizeFiltero+Bm.h"
@implementation BMGPUImagePosterizeFiltero (Bm)
+ (BOOL)ninitBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)qSetcolorlevelsBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
