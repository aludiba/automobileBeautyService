#import "BMBMUIImagewV.h"
@implementation BMBMUIImagewV
+ (BOOL)PJfixorientationbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)MHrotatebm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)HLflipverticalbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)QKfliphorizontalbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)iEimagerotatedbyradiansbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)XLimagerotatedbydegreesbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
