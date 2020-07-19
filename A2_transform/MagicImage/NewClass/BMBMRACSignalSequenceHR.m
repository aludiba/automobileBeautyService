#import "BMBMRACSignalSequenceHR.h"
@implementation BMBMRACSignalSequenceHR
+ (BOOL)IOsequencewithsignalbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)WOheadbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)dEtailbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)wXarraybm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)xTdescriptionbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
