#import "hbBMGPUImageRGBFilterKS.h"
@implementation hbBMGPUImageRGBFilterKS
+ (BOOL)QRinitbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)gLsetredbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)TPsetgreenbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)OWsetbluebm:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
