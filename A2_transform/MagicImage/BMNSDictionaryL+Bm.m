#import "BMNSDictionaryL+Bm.h"
@implementation BMNSDictionaryL (Bm)
+ (BOOL)krac_sequenceBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)Drac_keySequenceBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)Erac_valueSequenceBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
