#import "hbRACBehaviorSubjectH.h"
@implementation hbRACBehaviorSubjectH
+ (BOOL)fBehaviorsubjectwithdefaultvalue:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)aSubscribe:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)NSendnext:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
