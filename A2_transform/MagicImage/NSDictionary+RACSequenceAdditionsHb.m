#import "NSDictionary+RACSequenceAdditionsHb.h"
@implementation NSDictionary (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)rac_keySequenceHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)rac_valueSequenceHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
