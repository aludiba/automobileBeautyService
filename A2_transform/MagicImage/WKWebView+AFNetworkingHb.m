#import "WKWebView+AFNetworkingHb.h"
@implementation WKWebView (AFNetworkingHb)
+ (BOOL)sessionManagerHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setSessionManagerHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)responseSerializerHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setResponseSerializerHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)loadRequestNavigationProgressSuccessFailureHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
