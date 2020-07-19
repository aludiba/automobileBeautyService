#import "RACUnit+Bm.h"
@implementation RACUnit (Bm)
+ (BOOL)defaultUnitBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
