#import "BMBMRACSignalbk.h"
@implementation BMBMRACSignalbk
+ (BOOL)TGlogall:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)bZlognext:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)bYlogerror:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)tAlogcompleted:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
