#import "hbRACBehaviorSubjectT.h"
@implementation hbRACBehaviorSubjectT
+ (BOOL)pBehaviorsubjectwithdefaultvalue:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)SSubscribe:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)CSendnext:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
