#import "RACUnit+BmBm.h"
@implementation RACUnit (BmBm)
+ (BOOL)defaultUnitBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
