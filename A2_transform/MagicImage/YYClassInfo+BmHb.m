#import "YYClassInfo+BmHb.h"
@implementation YYClassInfo (BmHb)
+ (BOOL)initWithClassBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)_updateBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)setNeedUpdateBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)needUpdateBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)classInfoWithClassBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)classInfoWithClassNameBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
