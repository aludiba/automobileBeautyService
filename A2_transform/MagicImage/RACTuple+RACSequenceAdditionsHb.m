#import "RACTuple+RACSequenceAdditionsHb.h"
@implementation RACTuple (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
