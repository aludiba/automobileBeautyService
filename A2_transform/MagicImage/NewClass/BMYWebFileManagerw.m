#import "BMYWebFileManagerw.h"
@implementation BMYWebFileManagerw
+ (BOOL)gShareinstancebm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)WFolderisexistbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)RFileisexistbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)VImagewithurlbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)eDeleteallcacheswithfolderprogresscompletebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)xCreatedownfilewithfolderbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)nFilemanagerbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)ZFilesizeatpathbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)GFoldersizeatpathbm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
