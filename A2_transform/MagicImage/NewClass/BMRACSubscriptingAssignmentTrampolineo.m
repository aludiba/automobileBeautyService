#import "BMRACSubscriptingAssignmentTrampolineo.h"
@implementation BMRACSubscriptingAssignmentTrampolineo
+ (BOOL)yInitwithtargetnilvaluebm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)rSetobjectforkeyedsubscriptbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
