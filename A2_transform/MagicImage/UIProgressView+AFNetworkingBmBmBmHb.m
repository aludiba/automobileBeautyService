#import "UIProgressView+AFNetworkingBmBmBmHb.h"
@implementation UIProgressView (AFNetworkingBmBmBmHb)
+ (BOOL)af_uploadProgressAnimatedBmBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)af_setUploadProgressAnimatedBmBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)af_downloadProgressAnimatedBmBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)af_setDownloadProgressAnimatedBmBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedBmBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedBmBmBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBmBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
