#import "BMNSSetd+Bm.h"
@implementation BMNSSetd (Bm)
+ (BOOL)trac_sequenceBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
