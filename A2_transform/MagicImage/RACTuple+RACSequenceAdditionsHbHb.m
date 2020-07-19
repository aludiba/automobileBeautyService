#import "RACTuple+RACSequenceAdditionsHbHb.h"
@implementation RACTuple (RACSequenceAdditionsHbHb)
+ (BOOL)rac_sequenceHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
