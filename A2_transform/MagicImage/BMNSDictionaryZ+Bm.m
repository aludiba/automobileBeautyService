#import "BMNSDictionaryZ+Bm.h"
@implementation BMNSDictionaryZ (Bm)
+ (BOOL)mrac_sequenceBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)mrac_keySequenceBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)Srac_valueSequenceBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
