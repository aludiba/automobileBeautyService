#import "NSString+RACSequenceAdditionsHbHb.h"
@implementation NSString (RACSequenceAdditionsHbHb)
+ (BOOL)rac_sequenceHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
