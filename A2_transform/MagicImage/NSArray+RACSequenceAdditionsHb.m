#import "NSArray+RACSequenceAdditionsHb.h"
@implementation NSArray (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
