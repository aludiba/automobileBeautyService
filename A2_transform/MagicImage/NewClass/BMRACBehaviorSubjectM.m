#import "BMRACBehaviorSubjectM.h"
@implementation BMRACBehaviorSubjectM
+ (BOOL)UBehaviorsubjectwithdefaultvaluebmbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)CSubscribebmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)GSendnextbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
