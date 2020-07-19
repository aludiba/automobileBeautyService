#import "NSIndexSet+RACSequenceAdditionsBmBmBm.h"
@implementation NSIndexSet (RACSequenceAdditionsBmBmBm)
+ (BOOL)rac_sequenceBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
