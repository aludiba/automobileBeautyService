#import "hbRACChannelTerminale.h"
@implementation hbRACChannelTerminale
+ (BOOL)YInitwithvaluesotherterminalhb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)cSubscribehb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)VSendnexthb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)GSenderrorhb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)KSendcompletedhb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)aDidsubscribewithdisposablehb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
