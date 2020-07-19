#import "WKWebView+AFNetworkingBmHb.h"
@implementation WKWebView (AFNetworkingBmHb)
+ (BOOL)sessionManagerBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setSessionManagerBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)responseSerializerBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setResponseSerializerBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)loadRequestNavigationProgressSuccessFailureBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
