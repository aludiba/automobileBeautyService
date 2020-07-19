#import "hbUIColorn.h"
@implementation hbUIColorn
+ (BOOL)FIntegervaluefromhexstring:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)RColorwithhexstring:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)xColorwithhexstringoAlpha:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)sColorwithgrayscale:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
