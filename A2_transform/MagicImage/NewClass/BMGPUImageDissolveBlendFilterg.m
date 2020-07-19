#import "BMGPUImageDissolveBlendFilterg.h"
@implementation BMGPUImageDissolveBlendFilterg
+ (BOOL)binit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)ySetmix:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
