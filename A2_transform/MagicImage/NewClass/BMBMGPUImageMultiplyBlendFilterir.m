#import "BMBMGPUImageMultiplyBlendFilterir.h"
@implementation BMBMGPUImageMultiplyBlendFilterir
+ (BOOL)RTinit:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
