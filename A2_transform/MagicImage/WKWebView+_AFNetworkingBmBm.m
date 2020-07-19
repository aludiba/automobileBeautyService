#import "WKWebView+_AFNetworkingBmBm.h"
@implementation WKWebView (_AFNetworkingBmBm)
+ (BOOL)af_URLSessionTaskBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)af_setURLSessionTaskBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
