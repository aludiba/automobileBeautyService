#import "BMBMBMUIImagebLX.h"
@implementation BMBMBMUIImagebLX
+ (BOOL)qOskeyboardleftimage:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)bIakeyboardrightimage:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)RAvkeyboardupimage:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)BTvkeyboarddownimage:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)tCckeyboardpreviousimage:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)SSjkeyboardnextimage:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
