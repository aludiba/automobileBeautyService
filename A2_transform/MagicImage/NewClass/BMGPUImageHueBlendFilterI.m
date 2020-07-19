#import "BMGPUImageHueBlendFilterI.h"
@implementation BMGPUImageHueBlendFilterI
+ (BOOL)fInitbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
