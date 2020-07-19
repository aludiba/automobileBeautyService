#import "BMGPUImageAlphaBlendFilterl.h"
@implementation BMGPUImageAlphaBlendFilterl
+ (BOOL)cinit:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)nSetmix:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
