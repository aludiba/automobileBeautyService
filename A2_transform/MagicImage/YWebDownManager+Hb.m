#import "YWebDownManager+Hb.h"
@implementation YWebDownManager (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)downManagerFinishBlockHandleHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)downManagerProgressBlockHandleHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)startDownImagePathHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)startDownImageURLHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)pauseDownHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)resumeDownHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)URLSessionDownloadtaskDidfinishdownloadingtourlHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)URLSessionDownloadtaskDidwritedataTotalbyteswrittenTotalbytesexpectedtowriteHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)documentPathHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)imageNameHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
