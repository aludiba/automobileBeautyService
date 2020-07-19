#import "BMIQBarButtonItemConfigurationr+Bm.h"
@implementation BMIQBarButtonItemConfigurationr (Bm)
+ (BOOL)IInitwithbarbuttonsystemitemdActionBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)TInitwithimageRActionBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)MInitwithtitlesActionBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
