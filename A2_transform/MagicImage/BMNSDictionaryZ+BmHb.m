#import "BMNSDictionaryZ+BmHb.h"
@implementation BMNSDictionaryZ (BmHb)
+ (BOOL)mrac_sequenceBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)mrac_keySequenceBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)Srac_valueSequenceBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
