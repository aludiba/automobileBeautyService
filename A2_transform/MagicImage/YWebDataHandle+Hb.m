#import "YWebDataHandle+Hb.h"
@implementation YWebDataHandle (Hb)
+ (BOOL)imageNameForBase64HandleHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)stringForBase64HandleHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)documentPathHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)documentAppendPathHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)documentAppendPathsHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)documentYWebImageFileWithFolderHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)documentYWebImageFileAppendWithFolderWithfileHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)documentYWebImageFileAppendBase64WithFolderWithfileHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
