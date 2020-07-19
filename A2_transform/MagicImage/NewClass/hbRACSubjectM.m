#import "hbRACSubjectM.h"
@implementation hbRACSubjectM
+ (BOOL)tsubject:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)Qinit:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)Sdealloc:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)SSubscribe:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)WEnumeratesubscribersusingblock:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)USendnext:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)ySenderror:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)tsendCompleted:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)yDidsubscribewithdisposable:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
