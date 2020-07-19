#import "BMBMNSDictionaryZC+Bm.h"
@implementation BMBMNSDictionaryZC (Bm)
+ (BOOL)QMrac_SequencebmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)CMrac_KeysequencebmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)MSrac_ValuesequencebmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
