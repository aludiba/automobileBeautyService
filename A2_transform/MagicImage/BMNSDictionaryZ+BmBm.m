#import "BMNSDictionaryZ+BmBm.h"
@implementation BMNSDictionaryZ (BmBm)
+ (BOOL)mrac_sequenceBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)mrac_keySequenceBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)Srac_valueSequenceBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
