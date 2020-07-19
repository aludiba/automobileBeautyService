#import "hbBKMIRegisterVCL.h"
@implementation hbBKMIRegisterVCL
+ (BOOL)tViewwillappearbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)IViewwilldisappearbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)mViewdidloadbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)EBkloginbtnclickbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)hBkregisterbtnclickbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)uBkclosebtnclickedbm:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
