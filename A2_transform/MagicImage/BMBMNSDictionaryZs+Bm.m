#import "BMBMNSDictionaryZs+Bm.h"
@implementation BMBMNSDictionaryZs (Bm)
+ (BOOL)bMrac_SequenceBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)fMrac_KeysequenceBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)BSrac_ValuesequenceBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
