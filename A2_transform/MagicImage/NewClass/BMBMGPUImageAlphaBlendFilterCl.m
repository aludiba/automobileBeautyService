#import "BMBMGPUImageAlphaBlendFilterCl.h"
@implementation BMBMGPUImageAlphaBlendFilterCl
+ (BOOL)ALinitbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)AYsetmixbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
