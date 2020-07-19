#import "WKWebView+_AFNetworkingHb.h"
@implementation WKWebView (_AFNetworkingHb)
+ (BOOL)af_URLSessionTaskHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)af_setURLSessionTaskHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
