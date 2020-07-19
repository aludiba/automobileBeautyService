#import "BMBMGPUImageAlphaBlendFilterCl+Bm.h"
@implementation BMBMGPUImageAlphaBlendFilterCl (Bm)
+ (BOOL)ALinitbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)AYsetmixbmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
