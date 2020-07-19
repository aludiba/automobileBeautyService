#import "BMUIImagew+Bm.h"
@implementation BMUIImagew (Bm)
+ (BOOL)JFixorientationbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)HRotatebmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)LFlipverticalbmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)kFliphorizontalbmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)eImagerotatedbyradiansbmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)lImagerotatedbydegreesbmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
