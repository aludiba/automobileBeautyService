#import "UIButton+AFNetworkingHb.h"
@implementation UIButton (AFNetworkingHb)
+ (BOOL)sharedImageDownloaderHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setSharedImageDownloaderHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setImageForStateWithurlHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setImageForStateWithurlPlaceholderimageHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setImageForStateWithurlrequestPlaceholderimageSuccessFailureHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlPlaceholderimageHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)cancelImageDownloadTaskForStateHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)cancelBackgroundImageDownloadTaskForStateHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)isActiveTaskURLEqualToURLRequestForstateHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)isActiveBackgroundTaskURLEqualToURLRequestForstateHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
