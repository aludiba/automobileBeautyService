#import "BMBMNSThreadWO.h"
@implementation BMBMNSThreadWO
+ (BOOL)WEaddautoreleasepooltocurrentrunloop:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
