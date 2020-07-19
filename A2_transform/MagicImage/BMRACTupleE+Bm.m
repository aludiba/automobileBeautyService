#import "BMRACTupleE+Bm.h"
@implementation BMRACTupleE (Bm)
+ (BOOL)rrac_sequenceBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
