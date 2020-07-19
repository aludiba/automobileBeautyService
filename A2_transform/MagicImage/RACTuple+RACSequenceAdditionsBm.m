#import "RACTuple+RACSequenceAdditionsBm.h"
@implementation RACTuple (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
