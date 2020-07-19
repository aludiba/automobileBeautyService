#import "hbRACSubjectE.h"
@implementation hbRACSubjectE
+ (BOOL)Fsubject:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)Rinit:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)Pdealloc:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)ASubscribe:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)pEnumeratesubscribersusingblock:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)jSendnext:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)WSenderror:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)BsendCompleted:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)uDidsubscribewithdisposable:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
