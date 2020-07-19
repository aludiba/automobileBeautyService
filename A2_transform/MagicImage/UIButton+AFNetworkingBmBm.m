#import "UIButton+AFNetworkingBmBm.h"
@implementation UIButton (AFNetworkingBmBm)
+ (BOOL)sharedImageDownloaderBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setSharedImageDownloaderBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setImageForStateWithurlBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setImageForStateWithurlPlaceholderimageBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlPlaceholderimageBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)cancelImageDownloadTaskForStateBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)cancelBackgroundImageDownloadTaskForStateBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)isActiveTaskURLEqualToURLRequestForstateBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)isActiveBackgroundTaskURLEqualToURLRequestForstateBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
