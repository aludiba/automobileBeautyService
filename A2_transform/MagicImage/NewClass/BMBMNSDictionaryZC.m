#import "BMBMNSDictionaryZC.h"
@implementation BMBMNSDictionaryZC
+ (BOOL)QMrac_Sequencebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)CMrac_Keysequencebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)MSrac_Valuesequencebm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
