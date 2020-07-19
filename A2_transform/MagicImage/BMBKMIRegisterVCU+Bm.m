#import "BMBKMIRegisterVCU+Bm.h"
@implementation BMBKMIRegisterVCU (Bm)
+ (BOOL)FViewwillappearBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)vViewwilldisappearBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)bviewDidLoadBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)yBkloginbtnclickBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mBkregisterbtnclickBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)cBKcloseBtnClickedBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
