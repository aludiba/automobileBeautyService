#import "BMBMRACStringSequenceQV.h"
@implementation BMBMRACStringSequenceQV
+ (BOOL)jKsequencewithstringoffsetbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)PFheadbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)CHtailbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)uFarraybm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)dRdescriptionbm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
