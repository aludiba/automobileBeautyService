#import "UIButton+AFNetworkingBm.h"
@implementation UIButton (AFNetworkingBm)
+ (BOOL)sharedImageDownloaderBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setSharedImageDownloaderBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setImageForStateWithurlBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setImageForStateWithurlPlaceholderimageBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setImageForStateWithurlrequestPlaceholderimageSuccessFailureBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlPlaceholderimageBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)cancelImageDownloadTaskForStateBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)cancelBackgroundImageDownloadTaskForStateBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)isActiveTaskURLEqualToURLRequestForstateBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)isActiveBackgroundTaskURLEqualToURLRequestForstateBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
