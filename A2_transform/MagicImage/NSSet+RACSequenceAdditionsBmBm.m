#import "NSSet+RACSequenceAdditionsBmBm.h"
@implementation NSSet (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
