#import "hbIQBarButtonItemConfigurationL.h"
@implementation hbIQBarButtonItemConfigurationL
+ (BOOL)PInitwithbarbuttonsystemitemZAction:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)DInitwithimageDAction:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)rInitwithtitleNAction:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
