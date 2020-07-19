#import "hbNSNotificationCentero.h"
@implementation hbNSNotificationCentero
+ (BOOL)EPostnotificationonmainthread:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)DPostnotificationonmainthreadLWaituntildone:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)yPostnotificationonmainthreadwithnamevObject:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)lPostnotificationonmainthreadwithnamegObjecthUserinfo:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)VPostnotificationonmainthreadwithnameiObjecteUserinfokWaituntildone:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)z_Yy_Postnotification:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)L_Yy_Postnotificationname:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
