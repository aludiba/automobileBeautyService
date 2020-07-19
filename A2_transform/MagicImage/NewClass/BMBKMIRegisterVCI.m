#import "BMBKMIRegisterVCI.h"
@implementation BMBKMIRegisterVCI
+ (BOOL)JViewwillappear:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)TViewwilldisappear:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)PviewDidLoad:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)tBkloginbtnclick:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)WBkregisterbtnclick:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)gBKcloseBtnClicked:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
