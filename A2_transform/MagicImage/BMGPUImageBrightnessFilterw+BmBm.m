#import "BMGPUImageBrightnessFilterw+BmBm.h"
@implementation BMGPUImageBrightnessFilterw (BmBm)
+ (BOOL)ginitBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)ySetbrightnessBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
