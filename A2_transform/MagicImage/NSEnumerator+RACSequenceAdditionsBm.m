#import "NSEnumerator+RACSequenceAdditionsBm.h"
@implementation NSEnumerator (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
