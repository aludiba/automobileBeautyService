#import "WKWebView+_AFNetworkingBmBmBm.h"
@implementation WKWebView (_AFNetworkingBmBmBm)
+ (BOOL)af_URLSessionTaskBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)af_setURLSessionTaskBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
