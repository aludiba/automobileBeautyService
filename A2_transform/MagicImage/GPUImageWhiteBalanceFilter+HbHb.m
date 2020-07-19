#import "GPUImageWhiteBalanceFilter+HbHb.h"
@implementation GPUImageWhiteBalanceFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setTemperatureHbHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setTintHbHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
