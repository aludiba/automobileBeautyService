#import "BMUIImagew+BmHb.h"
@implementation BMUIImagew (BmHb)
+ (BOOL)JFixorientationbmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)HRotatebmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)LFlipverticalbmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)kFliphorizontalbmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)eImagerotatedbyradiansbmBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)lImagerotatedbydegreesbmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
