#import "NSOrderedSet+RACSequenceAdditionsBm.h"
@implementation NSOrderedSet (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
