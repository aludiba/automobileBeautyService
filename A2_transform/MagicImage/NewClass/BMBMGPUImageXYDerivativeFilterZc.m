#import "BMBMGPUImageXYDerivativeFilterZc.h"
@implementation BMBMGPUImageXYDerivativeFilterZc
+ (BOOL)OXinit:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
