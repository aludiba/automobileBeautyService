#import "BMBMBMNSDictionaryZCZ.h"
@implementation BMBMBMNSDictionaryZCZ
+ (BOOL)VQmrac_Sequencebm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)GCmrac_Keysequencebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)qMsrac_Valuesequencebm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
