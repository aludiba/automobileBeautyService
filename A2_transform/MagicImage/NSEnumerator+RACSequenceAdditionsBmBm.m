#import "NSEnumerator+RACSequenceAdditionsBmBm.h"
@implementation NSEnumerator (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
