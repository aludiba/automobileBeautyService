#import "BMBMIQBarButtonItemConfigurationrx.h"
@implementation BMBMIQBarButtonItemConfigurationrx
+ (BOOL)DIinitwithbarbuttonsystemitemdaction:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)uTinitwithimageraction:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)WMinitwithtitlesaction:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
