#import "BMRACBehaviorSubjectz.h"
@implementation BMRACBehaviorSubjectz
+ (BOOL)TBehaviorsubjectwithdefaultvaluebm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)FSubscribebm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)ySendnextbm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
