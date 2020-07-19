#import "BMBMBMNSDictionaryZsk.h"
@implementation BMBMBMNSDictionaryZsk
+ (BOOL)cBmrac_Sequence:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)aFmrac_Keysequence:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)LBsrac_Valuesequence:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
