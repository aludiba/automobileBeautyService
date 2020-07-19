#import "YWebDownManager+Bm.h"
@implementation YWebDownManager (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)downManagerFinishBlockHandleBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)downManagerProgressBlockHandleBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)startDownImagePathBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)startDownImageURLBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)pauseDownBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)resumeDownBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)URLSessionDownloadtaskDidfinishdownloadingtourlBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)URLSessionDownloadtaskDidwritedataTotalbyteswrittenTotalbytesexpectedtowriteBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)documentPathBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)imageNameBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
