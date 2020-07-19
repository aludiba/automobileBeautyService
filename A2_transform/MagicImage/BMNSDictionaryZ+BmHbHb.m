#import "BMNSDictionaryZ+BmHbHb.h"
@implementation BMNSDictionaryZ (BmHbHb)
+ (BOOL)mrac_sequenceBmHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)mrac_keySequenceBmHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)Srac_valueSequenceBmHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
