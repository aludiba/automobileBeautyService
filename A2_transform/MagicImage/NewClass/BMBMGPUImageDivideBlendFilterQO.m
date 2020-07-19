#import "BMBMGPUImageDivideBlendFilterQO.h"
@implementation BMBMGPUImageDivideBlendFilterQO
+ (BOOL)HWinit:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
