#import "BMBMRACTupleSequenceJo.h"
@implementation BMBMRACTupleSequenceJo
+ (BOOL)hVsequencewithtuplebackingarrayoffsetbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)AAheadbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)UAtailbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)wOarraybm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)UIdescriptionbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
