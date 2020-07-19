#import "BMBMNSDictionaryZs.h"
@implementation BMBMNSDictionaryZs
+ (BOOL)bMrac_Sequence:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)fMrac_Keysequence:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)BSrac_Valuesequence:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
