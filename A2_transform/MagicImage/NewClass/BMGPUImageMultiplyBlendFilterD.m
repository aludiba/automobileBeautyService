#import "BMGPUImageMultiplyBlendFilterD.h"
@implementation BMGPUImageMultiplyBlendFilterD
+ (BOOL)qInitbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
