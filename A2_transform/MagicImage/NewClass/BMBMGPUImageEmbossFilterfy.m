#import "BMBMGPUImageEmbossFilterfy.h"
@implementation BMBMGPUImageEmbossFilterfy
+ (BOOL)iYinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)CNsetintensity:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
