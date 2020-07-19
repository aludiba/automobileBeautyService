#import "IQBarButtonItem+Hb.h"
@implementation IQBarButtonItem (Hb)
+ (BOOL)initializeHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setTintColorHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)initWithBarButtonSystemItemTargetActionHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setTargetActionHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
