#import "BMIQBarButtonItemConfigurationr+BmBm.h"
@implementation BMIQBarButtonItemConfigurationr (BmBm)
+ (BOOL)IInitwithbarbuttonsystemitemdActionBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)TInitwithimageRActionBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)MInitwithtitlesActionBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
