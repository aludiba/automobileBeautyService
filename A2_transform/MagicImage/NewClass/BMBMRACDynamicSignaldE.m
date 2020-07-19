#import "BMBMRACDynamicSignaldE.h"
@implementation BMBMRACDynamicSignaldE
+ (BOOL)xNcreatesignalbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)lYsubscribebm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
