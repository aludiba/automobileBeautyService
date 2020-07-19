#import "BMRACBehaviorSubjectp+Bm.h"
@implementation BMRACBehaviorSubjectp (Bm)
+ (BOOL)ABehaviorsubjectwithdefaultvalueBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)GSubscribeBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)CSendnextBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
