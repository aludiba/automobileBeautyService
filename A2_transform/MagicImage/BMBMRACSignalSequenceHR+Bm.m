#import "BMBMRACSignalSequenceHR+Bm.h"
@implementation BMBMRACSignalSequenceHR (Bm)
+ (BOOL)IOsequencewithsignalbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)WOheadbmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)dEtailbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wXarraybmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)xTdescriptionbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
