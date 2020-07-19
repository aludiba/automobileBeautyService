#import "hbBMNSThreadWR.h"
@implementation hbBMNSThreadWR
+ (BOOL)TEaddautoreleasepooltocurrentrunloopbm:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
