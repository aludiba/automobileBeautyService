#import "BMBMGPUImageBrightnessFilterwm.h"
@implementation BMBMGPUImageBrightnessFilterwm
+ (BOOL)HGinit:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)eYsetbrightness:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
