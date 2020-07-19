#import "BMBMRACIndexSetSequencerw+Bm.h"
@implementation BMBMRACIndexSetSequencerw (Bm)
+ (BOOL)BFsequencewithindexsetBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)ECsequencewithindexsetsequenceuoffsetBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)kVheadBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)PHtailBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)fJcountbyenumeratingwithstateoobjectsccountBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)pOdescriptionBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
