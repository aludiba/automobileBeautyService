#import "BMRACBehaviorSubjectL+Bm.h"
@implementation BMRACBehaviorSubjectL (Bm)
+ (BOOL)iBehaviorsubjectwithdefaultvalueBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)YSubscribeBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)gSendnextBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
