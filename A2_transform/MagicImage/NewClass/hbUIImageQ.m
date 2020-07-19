#import "hbUIImageq.h"
@implementation hbUIImageq
+ (BOOL)nkeyboardLeftImage:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)mkeyboardRightImage:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)SkeyboardUpImage:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)bkeyboardDownImage:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)ykeyboardPreviousImage:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)dkeyboardNextImage:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
