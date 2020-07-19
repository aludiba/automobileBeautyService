#import "hbRACDynamicSignalK.h"
@implementation hbRACDynamicSignalK
+ (BOOL)TCreatesignal:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)hSubscribe:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
