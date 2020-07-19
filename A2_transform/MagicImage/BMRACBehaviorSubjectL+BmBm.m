#import "BMRACBehaviorSubjectL+BmBm.h"
@implementation BMRACBehaviorSubjectL (BmBm)
+ (BOOL)iBehaviorsubjectwithdefaultvalueBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)YSubscribeBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)gSendnextBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
