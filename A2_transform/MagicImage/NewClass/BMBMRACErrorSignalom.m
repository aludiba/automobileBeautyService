#import "BMBMRACErrorSignalom.h"
@implementation BMBMRACErrorSignalom
+ (BOOL)MYerrorbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)iEsubscribebmbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
