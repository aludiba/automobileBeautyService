#import "hbGPUImageWhiteBalanceFilterT.h"
@implementation hbGPUImageWhiteBalanceFilterT
+ (BOOL)Linit:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)rSettemperature:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)RSettint:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
