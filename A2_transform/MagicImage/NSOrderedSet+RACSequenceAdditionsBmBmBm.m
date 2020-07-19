#import "NSOrderedSet+RACSequenceAdditionsBmBmBm.h"
@implementation NSOrderedSet (RACSequenceAdditionsBmBmBm)
+ (BOOL)rac_sequenceBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
