#import "UIProgressView+AFNetworkingHbHb.h"
@implementation UIProgressView (AFNetworkingHbHb)
+ (BOOL)af_uploadProgressAnimatedHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)af_setUploadProgressAnimatedHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)af_downloadProgressAnimatedHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)af_setDownloadProgressAnimatedHbHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedHbHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)observeValueForKeyPathOfobjectChangeContextHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
