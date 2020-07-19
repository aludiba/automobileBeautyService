#import "BMRACIndexSetSequencer+Bm.h"
@implementation BMRACIndexSetSequencer (Bm)
+ (BOOL)fSequencewithindexsetBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)cSequencewithindexsetsequenceuOffsetBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)vheadBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)HtailBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)JCountbyenumeratingwithstateOObjectsCCountBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)odescriptionBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
