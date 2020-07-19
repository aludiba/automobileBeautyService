#import "UIProgressView+AFNetworkingHb.h"
@implementation UIProgressView (AFNetworkingHb)
+ (BOOL)af_uploadProgressAnimatedHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)af_setUploadProgressAnimatedHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)af_downloadProgressAnimatedHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)af_setDownloadProgressAnimatedHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)observeValueForKeyPathOfobjectChangeContextHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
