#import "BMBMRACEmptySignalPs.h"
@implementation BMBMRACEmptySignalPs
+ (BOOL)GAsetnamebm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)NCnamebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)CAemptybm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)TSsubscribebm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
