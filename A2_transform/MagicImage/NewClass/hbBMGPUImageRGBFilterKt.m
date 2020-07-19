#import "hbBMGPUImageRGBFilterKt.h"
@implementation hbBMGPUImageRGBFilterKt
+ (BOOL)URinitbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)bLsetredbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)CPsetgreenbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)uWsetbluebm:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
