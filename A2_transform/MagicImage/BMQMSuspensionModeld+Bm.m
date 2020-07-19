#import "BMQMSuspensionModeld+Bm.h"
@implementation BMQMSuspensionModeld (Bm)
+ (BOOL)RBuildsuspensionmodelswithjsonBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)oBuildsuspensionmodelswithconfigBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
