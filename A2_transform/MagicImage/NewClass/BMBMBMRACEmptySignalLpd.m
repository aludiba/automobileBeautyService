#import "BMBMBMRACEmptySignalLpd.h"
@implementation BMBMBMRACEmptySignalLpd
+ (BOOL)hIfsetname:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)QTfname:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)jNaempty:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)YCdsubscribe:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
