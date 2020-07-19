#import "BMGPUImageBrightnessFilterw+Bm.h"
@implementation BMGPUImageBrightnessFilterw (Bm)
+ (BOOL)ginitBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)ySetbrightnessBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
