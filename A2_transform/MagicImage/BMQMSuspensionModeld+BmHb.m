#import "BMQMSuspensionModeld+BmHb.h"
@implementation BMQMSuspensionModeld (BmHb)
+ (BOOL)RBuildsuspensionmodelswithjsonBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)oBuildsuspensionmodelswithconfigBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
