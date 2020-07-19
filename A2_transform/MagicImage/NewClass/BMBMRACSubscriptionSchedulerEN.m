#import "BMBMRACSubscriptionSchedulerEN.h"
@implementation BMBMRACSubscriptionSchedulerEN
+ (BOOL)sDinit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)pIschedule:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)iSafterrschedule:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)XAafterdrepeatingeveryswithleewayfschedule:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
