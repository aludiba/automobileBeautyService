#import "NSSet+RACSequenceAdditionsHb.h"
@implementation NSSet (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
