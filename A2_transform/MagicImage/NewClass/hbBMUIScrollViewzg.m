#import "hbBMUIScrollViewzg.h"
@implementation hbBMUIScrollViewzg
+ (BOOL)HZscrolltotopbmbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)sHscrolltobottombmbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)iGscrolltoleftbmbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)pIscrolltorightbmbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)SRscrolltotopanimatedbmbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)dDscrolltobottomanimatedbmbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)KGscrolltoleftanimatedbmbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)AEscrolltorightanimatedbmbm:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
