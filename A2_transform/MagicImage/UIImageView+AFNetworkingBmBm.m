#import "UIImageView+AFNetworkingBmBm.h"
@implementation UIImageView (AFNetworkingBmBm)
+ (BOOL)sharedImageDownloaderBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setSharedImageDownloaderBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setImageWithURLBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setImageWithURLPlaceholderimageBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setImageWithURLRequestPlaceholderimageSuccessFailureBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)cancelImageDownloadTaskBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)clearActiveDownloadInformationBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)isActiveTaskURLEqualToURLRequestBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
