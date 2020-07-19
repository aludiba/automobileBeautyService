#import "BMBMNSDictionaryrG.h"
@implementation BMBMNSDictionaryrG
+ (BOOL)kHrac_Sequencebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)DMrac_Keysequencebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)QJrac_Valuesequencebm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
