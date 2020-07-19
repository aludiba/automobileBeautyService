#import "BMNSDictionaryZ.h"
@implementation BMNSDictionaryZ
+ (BOOL)mrac_sequence:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)mrac_keySequence:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)Srac_valueSequence:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
