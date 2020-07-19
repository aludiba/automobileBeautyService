#import "UIImageView+AFNetworkingBm.h"
@implementation UIImageView (AFNetworkingBm)
+ (BOOL)sharedImageDownloaderBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setSharedImageDownloaderBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setImageWithURLBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setImageWithURLPlaceholderimageBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setImageWithURLRequestPlaceholderimageSuccessFailureBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)cancelImageDownloadTaskBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)clearActiveDownloadInformationBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)isActiveTaskURLEqualToURLRequestBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
