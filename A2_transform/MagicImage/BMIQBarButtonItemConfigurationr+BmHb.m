#import "BMIQBarButtonItemConfigurationr+BmHb.h"
@implementation BMIQBarButtonItemConfigurationr (BmHb)
+ (BOOL)IInitwithbarbuttonsystemitemdActionBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)TInitwithimageRActionBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)MInitwithtitlesActionBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
