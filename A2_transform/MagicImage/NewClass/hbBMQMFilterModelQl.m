#import "hbBMQMFilterModelQl.h"
@implementation hbBMQMFilterModelQl
+ (BOOL)QSbuildfiltermodelwithfilterpathbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)LNbuildfiltermodelswithpathbm:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
