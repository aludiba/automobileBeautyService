#import "BMBMGPUImageDissolveBlendFilterIO.h"
@implementation BMBMGPUImageDissolveBlendFilterIO
+ (BOOL)hSinit:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)yDsetmix:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
