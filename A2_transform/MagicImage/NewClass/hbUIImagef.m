#import "hbUIImageF.h"
@implementation hbUIImageF
+ (BOOL)zFixorientationbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)JRotatebm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)eFlipverticalbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)YFliphorizontalbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)ZImagerotatedbyradiansbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)fImagerotatedbydegreesbm:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
