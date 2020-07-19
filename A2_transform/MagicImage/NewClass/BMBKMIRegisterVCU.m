#import "BMBKMIRegisterVCU.h"
@implementation BMBKMIRegisterVCU
+ (BOOL)FViewwillappear:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)vViewwilldisappear:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)bviewDidLoad:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)yBkloginbtnclick:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)mBkregisterbtnclick:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)cBKcloseBtnClicked:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
