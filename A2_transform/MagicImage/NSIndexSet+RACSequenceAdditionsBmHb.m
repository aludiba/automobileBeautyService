#import "NSIndexSet+RACSequenceAdditionsBmHb.h"
@implementation NSIndexSet (RACSequenceAdditionsBmHb)
+ (BOOL)rac_sequenceBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
