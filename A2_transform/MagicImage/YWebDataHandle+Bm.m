#import "YWebDataHandle+Bm.h"
@implementation YWebDataHandle (Bm)
+ (BOOL)imageNameForBase64HandleBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)stringForBase64HandleBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)documentPathBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)documentAppendPathBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)documentAppendPathsBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)documentYWebImageFileWithFolderBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)documentYWebImageFileAppendWithFolderWithfileBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)documentYWebImageFileAppendBase64WithFolderWithfileBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
