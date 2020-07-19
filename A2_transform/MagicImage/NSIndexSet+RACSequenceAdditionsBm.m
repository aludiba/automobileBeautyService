#import "NSIndexSet+RACSequenceAdditionsBm.h"
@implementation NSIndexSet (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
