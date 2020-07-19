#import "BMBMUIImagebL.h"
@implementation BMBMUIImagebL
+ (BOOL)oSkeyboardleftimage:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)iAkeyboardrightimage:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)AVkeyboardupimage:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)TVkeyboarddownimage:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)CCkeyboardpreviousimage:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sJkeyboardnextimage:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
