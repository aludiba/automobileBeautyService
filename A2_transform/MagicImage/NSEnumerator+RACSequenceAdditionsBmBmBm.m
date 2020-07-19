#import "NSEnumerator+RACSequenceAdditionsBmBmBm.h"
@implementation NSEnumerator (RACSequenceAdditionsBmBmBm)
+ (BOOL)rac_sequenceBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
