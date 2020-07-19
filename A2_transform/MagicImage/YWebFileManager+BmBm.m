#import "YWebFileManager+BmBm.h"
@implementation YWebFileManager (BmBm)
+ (BOOL)shareInstanceBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)folderIsExistBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)fileIsExistBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)imageWithURLBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)deleteAllCAchesWithFolderProgressCompleteBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)createDownFileWithFolderBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)fileManagerBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)fileSizeAtPathBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)folderSizeAtPathBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
