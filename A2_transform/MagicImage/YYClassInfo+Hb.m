#import "YYClassInfo+Hb.h"
@implementation YYClassInfo (Hb)
+ (BOOL)initWithClassHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)_updateHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setNeedUpdateHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)needUpdateHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)classInfoWithClassHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)classInfoWithClassNameHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
