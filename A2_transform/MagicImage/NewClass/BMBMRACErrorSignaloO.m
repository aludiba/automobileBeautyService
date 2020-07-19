#import "BMBMRACErrorSignaloO.h"
@implementation BMBMRACErrorSignaloO
+ (BOOL)nYerrorbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)nEsubscribebm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
