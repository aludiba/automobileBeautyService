#import "BMGPUImageAlphaBlendFilterC.h"
@implementation BMGPUImageAlphaBlendFilterC
+ (BOOL)LInitbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)YSetmixbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
