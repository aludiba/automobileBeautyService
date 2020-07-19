#import "BMNSOrderedSetq.h"
@implementation BMNSOrderedSetq
+ (BOOL)xrac_sequence:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
