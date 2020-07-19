#import "BMBMUIImageQj.h"
@implementation BMBMUIImageQj
+ (BOOL)sCargbdata:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)pTispointtransparent:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)PWhasalpha:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)gTimagewithalpha:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)RQtransparentborderimage:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)qAnewbordermasknsize:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
