#import "BMBMGPUImageBrightnessFiltermk.h"
@implementation BMBMGPUImageBrightnessFiltermk
+ (BOOL)OCinitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)lXsetbrightnessbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
