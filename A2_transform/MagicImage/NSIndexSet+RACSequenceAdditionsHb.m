#import "NSIndexSet+RACSequenceAdditionsHb.h"
@implementation NSIndexSet (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
