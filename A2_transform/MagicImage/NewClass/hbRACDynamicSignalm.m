#import "hbRACDynamicSignalm.h"
@implementation hbRACDynamicSignalm
+ (BOOL)vCreatesignal:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)JSubscribe:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
