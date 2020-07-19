#import "BMGPUImageBrightnessFilterX.h"
@implementation BMGPUImageBrightnessFilterX
+ (BOOL)UInitbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)SSetbrightnessbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
