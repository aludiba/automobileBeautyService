#import "BMBMNSDictionaryLs.h"
@implementation BMBMNSDictionaryLs
+ (BOOL)AKrac_Sequence:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)HDrac_Keysequence:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)NErac_Valuesequence:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
