#import "NSArray+RACSequenceAdditionsBmBm.h"
@implementation NSArray (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
