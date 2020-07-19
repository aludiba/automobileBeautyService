#import "YWebFileManager+Hb.h"
@implementation YWebFileManager (Hb)
+ (BOOL)shareInstanceHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)folderIsExistHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)fileIsExistHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)imageWithURLHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)deleteAllCAchesWithFolderProgressCompleteHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)createDownFileWithFolderHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)fileManagerHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)fileSizeAtPathHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)folderSizeAtPathHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
