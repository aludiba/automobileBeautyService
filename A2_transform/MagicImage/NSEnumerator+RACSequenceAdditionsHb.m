#import "NSEnumerator+RACSequenceAdditionsHb.h"
@implementation NSEnumerator (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
