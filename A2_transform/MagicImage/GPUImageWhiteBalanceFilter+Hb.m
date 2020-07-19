#import "GPUImageWhiteBalanceFilter+Hb.h"
@implementation GPUImageWhiteBalanceFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setTemperatureHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setTintHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
