#import "BMBMIQBarButtonItemConfigurationrh.h"
@implementation BMBMIQBarButtonItemConfigurationrh
+ (BOOL)NIinitwithbarbuttonsystemitemdaction:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)RTinitwithimageraction:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)xMinitwithtitlesaction:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
