#import "BMRACSignalSequenceP+Bm.h"
@implementation BMRACSignalSequenceP (Bm)
+ (BOOL)QSequencewithsignalBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)aheadBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)BtailBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)DarrayBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)GdescriptionBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
