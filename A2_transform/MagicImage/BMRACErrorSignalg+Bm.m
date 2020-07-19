#import "BMRACErrorSignalg+Bm.h"
@implementation BMRACErrorSignalg (Bm)
+ (BOOL)NErrorBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)zSubscribeBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
