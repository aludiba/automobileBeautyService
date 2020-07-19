#import "BMNSDictionaryL.h"
@implementation BMNSDictionaryL
+ (BOOL)krac_sequence:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)Drac_keySequence:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)Erac_valueSequence:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
