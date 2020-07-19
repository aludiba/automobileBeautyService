#import "BMNSDictionaryr.h"
@implementation BMNSDictionaryr
+ (BOOL)hRac_Sequencebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)MRac_Keysequencebm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)jRac_Valuesequencebm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
