#import "BMRACSignalSequenceq+Bm.h"
@implementation BMRACSignalSequenceq (Bm)
+ (BOOL)nSequencewithsignalBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)oheadBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)YtailBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)darrayBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)kdescriptionBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
