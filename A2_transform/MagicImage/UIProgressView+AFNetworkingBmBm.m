#import "UIProgressView+AFNetworkingBmBm.h"
@implementation UIProgressView (AFNetworkingBmBm)
+ (BOOL)af_uploadProgressAnimatedBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)af_setUploadProgressAnimatedBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)af_downloadProgressAnimatedBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)af_setDownloadProgressAnimatedBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
