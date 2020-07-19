#import "hbRACSubscriberF.h"
@implementation hbRACSubscriberF
+ (BOOL)oSubscriberwithnextSErrorGCompleted:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)Zinit:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)Xdealloc:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)sSendnext:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)xSenderror:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)esendCompleted:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)PDidsubscribewithdisposable:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
