#import "BMRACSubscriptingAssignmentTrampolineI.h"
@implementation BMRACSubscriptingAssignmentTrampolineI
+ (BOOL)oInitwithtargetnilvaluebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)mSetobjectforkeyedsubscriptbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
