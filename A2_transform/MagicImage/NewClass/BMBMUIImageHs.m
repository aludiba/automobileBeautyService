#import "BMBMUIImageHs.h"
@implementation BMBMUIImageHs
+ (BOOL)CRkeyboardleftimage:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)jQkeyboardrightimage:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)oSkeyboardupimage:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)JTkeyboarddownimage:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)EKkeyboardpreviousimage:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)rUkeyboardnextimage:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
