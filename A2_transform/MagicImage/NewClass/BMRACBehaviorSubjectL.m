#import "BMRACBehaviorSubjectL.h"
@implementation BMRACBehaviorSubjectL
+ (BOOL)iBehaviorsubjectwithdefaultvalue:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)YSubscribe:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)gSendnext:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
