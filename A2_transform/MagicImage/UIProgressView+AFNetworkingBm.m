#import "UIProgressView+AFNetworkingBm.h"
@implementation UIProgressView (AFNetworkingBm)
+ (BOOL)af_uploadProgressAnimatedBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)af_setUploadProgressAnimatedBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)af_downloadProgressAnimatedBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)af_setDownloadProgressAnimatedBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
