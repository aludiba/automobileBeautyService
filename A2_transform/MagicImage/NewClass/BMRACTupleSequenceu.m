#import "BMRACTupleSequenceu.h"
@implementation BMRACTupleSequenceu
+ (BOOL)TSequencewithtuplebackingarrayoffsetbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)bHeadbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)iTailbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)eArraybm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)LDescriptionbm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
