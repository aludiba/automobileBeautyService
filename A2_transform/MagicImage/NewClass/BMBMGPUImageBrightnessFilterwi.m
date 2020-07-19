#import "BMBMGPUImageBrightnessFilterwi.h"
@implementation BMBMGPUImageBrightnessFilterwi
+ (BOOL)aGinit:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)oYsetbrightness:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
