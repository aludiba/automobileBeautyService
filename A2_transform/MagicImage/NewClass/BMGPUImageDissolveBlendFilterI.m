#import "BMGPUImageDissolveBlendFilterI.h"
@implementation BMGPUImageDissolveBlendFilterI
+ (BOOL)sinit:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)dSetmix:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
