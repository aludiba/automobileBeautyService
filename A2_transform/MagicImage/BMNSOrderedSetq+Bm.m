#import "BMNSOrderedSetq+Bm.h"
@implementation BMNSOrderedSetq (Bm)
+ (BOOL)xrac_sequenceBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
