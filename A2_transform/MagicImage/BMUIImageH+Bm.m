#import "BMUIImageH+Bm.h"
@implementation BMUIImageH (Bm)
+ (BOOL)RkeyboardLeftImageBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)qkeyboardRightImageBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)skeyboardUpImageBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)TkeyboardDownImageBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)KkeyboardPreviousImageBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)UkeyboardNextImageBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
