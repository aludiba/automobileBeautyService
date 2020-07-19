#import "NSString+RACSequenceAdditionsHb.h"
@implementation NSString (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
