#import "BMBMNSDictionaryZs+BmHb.h"
@implementation BMBMNSDictionaryZs (BmHb)
+ (BOOL)bMrac_SequenceBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)fMrac_KeysequenceBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)BSrac_ValuesequenceBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
