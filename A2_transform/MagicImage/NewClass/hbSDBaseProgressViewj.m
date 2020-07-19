#import "hbSDBaseProgressViewj.h"
@implementation hbSDBaseProgressViewj
+ (BOOL)XInitwithframe:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)BSetprogress:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)cSetcenterprogresstextRWithattributes:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)Sdismiss:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)cprogressView:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
