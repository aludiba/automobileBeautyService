#import "BMBMNSDictionaryZM.h"
@implementation BMBMNSDictionaryZM
+ (BOOL)tMrac_Sequence:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)bMrac_Keysequence:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)BSrac_Valuesequence:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
