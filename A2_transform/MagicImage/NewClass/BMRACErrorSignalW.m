#import "BMRACErrorSignalW.h"
@implementation BMRACErrorSignalW
+ (BOOL)hErrorbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)ESubscribebm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
