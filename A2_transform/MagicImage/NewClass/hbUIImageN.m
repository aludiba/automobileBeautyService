#import "hbUIImageN.h"
@implementation hbUIImageN
+ (BOOL)uSubimagewithrectbmhb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)MRescaleimagetosizebmhb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)FRescaleimagetopxbmhb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)dGettiledimagewithsizebmhb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)fImagefromviewbmhb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)kMergeimagewithimagebmhb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
