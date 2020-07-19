#import "BMBMGPUImagePosterizeFilterkb.h"
@implementation BMBMGPUImagePosterizeFilterkb
+ (BOOL)nFinit:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)PQsetcolorlevels:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
