#import "NSArray+RACSequenceAdditionsBm.h"
@implementation NSArray (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
