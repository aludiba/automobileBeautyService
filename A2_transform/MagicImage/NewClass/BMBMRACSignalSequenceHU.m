#import "BMBMRACSignalSequenceHU.h"
@implementation BMBMRACSignalSequenceHU
+ (BOOL)EOsequencewithsignalbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)jOheadbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)CEtailbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)pXarraybm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)qTdescriptionbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
