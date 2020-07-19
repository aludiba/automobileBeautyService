#import "BMBMBKMIBaseTabBarVCCF.h"
@implementation BMBMBKMIBaseTabBarVCCF
+ (BOOL)NBviewdidload:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)HAbkinitwithchildcontroller:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
