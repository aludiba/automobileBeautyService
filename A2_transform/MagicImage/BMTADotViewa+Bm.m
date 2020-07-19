#import "BMTADotViewa+Bm.h"
@implementation BMTADotViewa (Bm)
+ (BOOL)finitBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)hInitwithframeBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)DInitwithcoderBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)winitializationBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)VChangeactivitystateBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
