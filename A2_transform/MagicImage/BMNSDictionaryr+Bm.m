#import "BMNSDictionaryr+Bm.h"
@implementation BMNSDictionaryr (Bm)
+ (BOOL)hRac_SequencebmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)MRac_KeysequencebmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)jRac_ValuesequencebmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
