#import "BMRACTupleNilt+Bm.h"
@implementation BMRACTupleNilt (Bm)
+ (BOOL)XtupleNilBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)pCopywithzoneBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)AInitwithcoderBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)BEncodewithcoderBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
