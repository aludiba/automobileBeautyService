#import "BMGPUImageBrightnessFilterT.h"
@implementation BMGPUImageBrightnessFilterT
+ (BOOL)sinit:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)gSetbrightness:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
