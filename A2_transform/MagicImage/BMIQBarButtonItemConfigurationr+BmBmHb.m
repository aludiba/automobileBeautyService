#import "BMIQBarButtonItemConfigurationr+BmBmHb.h"
@implementation BMIQBarButtonItemConfigurationr (BmBmHb)
+ (BOOL)IInitwithbarbuttonsystemitemdActionBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)TInitwithimageRActionBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)MInitwithtitlesActionBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
