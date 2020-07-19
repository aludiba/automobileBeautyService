#import "hbNSDictionarya.h"
@implementation hbNSDictionarya
+ (BOOL)wrac_sequence:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)Drac_keySequence:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)Lrac_valueSequence:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
