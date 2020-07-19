#import "BMRACEventp+Bm.h"
@implementation BMRACEventp (Bm)
+ (BOOL)jisFinishedBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)XerrorBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)pvalueBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)LcompletedEventBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)HEventwitherrorBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)AEventwithvalueBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)FInitwitheventtypeIObjectBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)eCopywithzoneBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)adescriptionBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)vhashBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)iIsequalBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
