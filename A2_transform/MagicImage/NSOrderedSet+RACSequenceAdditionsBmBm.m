#import "NSOrderedSet+RACSequenceAdditionsBmBm.h"
@implementation NSOrderedSet (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
