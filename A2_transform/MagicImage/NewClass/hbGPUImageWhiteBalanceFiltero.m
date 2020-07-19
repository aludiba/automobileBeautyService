#import "hbGPUImageWhiteBalanceFiltero.h"
@implementation hbGPUImageWhiteBalanceFiltero
+ (BOOL)Ainit:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)hSettemperature:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)HSettint:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
