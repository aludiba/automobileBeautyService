#import "BMBMRACChannelTerminalpd+Bm.h"
@implementation BMBMRACChannelTerminalpd (Bm)
+ (BOOL)cTinitwithvaluesxotherterminalBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)MKsubscribeBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)rFsendnextBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)wFsenderrorBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)UAsendcompletedBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)DLdidsubscribewithdisposableBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
