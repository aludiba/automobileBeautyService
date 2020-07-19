#import "hbBMNSDictionaryZW.h"
@implementation hbBMNSDictionaryZW
+ (BOOL)gMrac_Sequencebm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)uMrac_Keysequencebm:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)LSrac_Valuesequencebm:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
