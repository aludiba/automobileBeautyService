#import "BMBMGPUImageBrightnessFilterTr.h"
@implementation BMBMGPUImageBrightnessFilterTr
+ (BOOL)ASinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)qGsetbrightness:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
