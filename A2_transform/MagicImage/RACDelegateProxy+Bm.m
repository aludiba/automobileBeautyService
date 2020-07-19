#import "RACDelegateProxy+Bm.h"
@implementation RACDelegateProxy (Bm)
+ (BOOL)initWithProtocolBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)signalForSelectorBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)isProxyBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)forwardInvocationBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)methodSignatureForSelectorBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)respondsToSelectorBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
