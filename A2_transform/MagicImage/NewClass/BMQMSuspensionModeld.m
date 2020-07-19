#import "BMQMSuspensionModeld.h"
@implementation BMQMSuspensionModeld
+ (BOOL)cBuildsuspensionmodelswithjson:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)EBuildsuspensionmodelswithconfig:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
