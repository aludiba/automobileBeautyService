#import "NSDictionary+RACSequenceAdditionsBmBmBmHb.h"
@implementation NSDictionary (RACSequenceAdditionsBmBmBmHb)
+ (BOOL)rac_sequenceBmBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)rac_keySequenceBmBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)rac_valueSequenceBmBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
