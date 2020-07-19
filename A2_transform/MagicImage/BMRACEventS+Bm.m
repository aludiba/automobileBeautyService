#import "BMRACEventS+Bm.h"
@implementation BMRACEventS (Bm)
+ (BOOL)fisFinishedBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)YerrorBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)EvalueBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)gcompletedEventBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)HEventwitherrorBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)OEventwithvalueBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)WInitwitheventtypeCObjectBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)oCopywithzoneBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)edescriptionBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)mhashBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)oIsequalBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
