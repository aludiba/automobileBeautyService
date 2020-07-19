#import "RACTuple+RACSequenceAdditionsBmBm.h"
@implementation RACTuple (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
