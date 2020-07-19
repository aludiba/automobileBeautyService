#import "BMRACErrorSignalS+Bm.h"
@implementation BMRACErrorSignalS (Bm)
+ (BOOL)ZErrorBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)hSubscribeBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
