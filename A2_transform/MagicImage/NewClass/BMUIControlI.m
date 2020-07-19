#import "BMUIControlI.h"
@implementation BMUIControlI
+ (BOOL)bRemovealltargetsbmbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)cSettargetactionforcontroleventsbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)cAddblockforcontroleventsblockbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)QSetblockforcontroleventsblockbmbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)BRemoveallblocksforcontroleventsbmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)d_Yy_Alluicontrolblocktargetsbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
