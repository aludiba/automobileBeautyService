#import "NSOrderedSet+RACSequenceAdditionsHb.h"
@implementation NSOrderedSet (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
