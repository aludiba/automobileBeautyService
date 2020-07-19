#import "BMBMGPUImageAlphaBlendFilterlv.h"
@implementation BMBMGPUImageAlphaBlendFilterlv
+ (BOOL)JCinit:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)SNsetmix:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
