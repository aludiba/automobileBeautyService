#import "WKWebView+_AFNetworkingHbHb.h"
@implementation WKWebView (_AFNetworkingHbHb)
+ (BOOL)af_URLSessionTaskHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)af_setURLSessionTaskHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
