#import "hbRACDynamicSignalK+Hb.h"
@implementation hbRACDynamicSignalK (Hb)
+ (BOOL)TCreatesignalHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)hSubscribeHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
