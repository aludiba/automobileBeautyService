#import "WKWebView+AFNetworkingBm.h"
@implementation WKWebView (AFNetworkingBm)
+ (BOOL)sessionManagerBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setSessionManagerBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)responseSerializerBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setResponseSerializerBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)loadRequestNavigationProgressSuccessFailureBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
