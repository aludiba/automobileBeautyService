#import "YWebFileManager+Bm.h"
@implementation YWebFileManager (Bm)
+ (BOOL)shareInstanceBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)folderIsExistBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)fileIsExistBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)imageWithURLBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)deleteAllCAchesWithFolderProgressCompleteBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)createDownFileWithFolderBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fileManagerBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)fileSizeAtPathBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)folderSizeAtPathBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
