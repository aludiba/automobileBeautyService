#import "hbUIColorA.h"
@implementation hbUIColorA
+ (BOOL)YIntegervaluefromhexstringbmbmhb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)NColorwithhexstringbmbmhb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)hColorwithhexstringalphabmbmhb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)gColorwithgrayscalebmbmhb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
