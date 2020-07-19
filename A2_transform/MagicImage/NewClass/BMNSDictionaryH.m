#import "BMNSDictionaryH.h"
@implementation BMNSDictionaryH
+ (BOOL)pRac_Sequencebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)pRac_Keysequencebm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)hRac_Valuesequencebm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
