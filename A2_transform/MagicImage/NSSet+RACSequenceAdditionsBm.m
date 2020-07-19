#import "NSSet+RACSequenceAdditionsBm.h"
@implementation NSSet (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
