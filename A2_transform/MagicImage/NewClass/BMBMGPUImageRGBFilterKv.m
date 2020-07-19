#import "BMBMGPUImageRGBFilterKv.h"
@implementation BMBMGPUImageRGBFilterKv
+ (BOOL)aRinit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)qLsetred:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)kPsetgreen:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)hWsetblue:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
