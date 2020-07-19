#import "WKWebView+_AFNetworkingBm.h"
@implementation WKWebView (_AFNetworkingBm)
+ (BOOL)af_URLSessionTaskBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)af_setURLSessionTaskBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
