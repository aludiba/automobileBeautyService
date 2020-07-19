#import "BMBMNSThreadoR.h"
@implementation BMBMNSThreadoR
+ (BOOL)HPaddautoreleasepooltocurrentrunloop:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
