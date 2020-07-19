#import "NSIndexSet+RACSequenceAdditionsBmBm.h"
@implementation NSIndexSet (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
