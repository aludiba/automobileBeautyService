#import "RACEmptySignal+HbHb.h"
@implementation RACEmptySignal (HbHb)
+ (BOOL)setNameHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)nameHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)emptyHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)subscribeHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
