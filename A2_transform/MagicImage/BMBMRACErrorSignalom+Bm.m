#import "BMBMRACErrorSignalom+Bm.h"
@implementation BMBMRACErrorSignalom (Bm)
+ (BOOL)MYerrorbmbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)iEsubscribebmbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
