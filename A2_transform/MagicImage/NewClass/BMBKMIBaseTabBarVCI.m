#import "BMBKMIBaseTabBarVCI.h"
@implementation BMBKMIBaseTabBarVCI
+ (BOOL)RViewdidloadbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)gBkinitwithchildcontrollerbm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
