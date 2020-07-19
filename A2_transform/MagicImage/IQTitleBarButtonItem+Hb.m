#import "IQTitleBarButtonItem+Hb.h"
@implementation IQTitleBarButtonItem (Hb)
+ (BOOL)initWithTitleHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setTitleFontHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setTitleHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setTitleColorHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setSelectableTitleColorHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)setInvocationHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
