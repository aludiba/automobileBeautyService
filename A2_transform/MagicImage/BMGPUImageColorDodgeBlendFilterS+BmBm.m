#import "BMGPUImageColorDodgeBlendFilterS+BmBm.h"
@implementation BMGPUImageColorDodgeBlendFilterS (BmBm)
+ (BOOL)yinitBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
