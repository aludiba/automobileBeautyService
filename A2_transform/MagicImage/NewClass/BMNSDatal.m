#import "BMNSDatal.h"
@implementation BMNSDatal
+ (BOOL)cSd_Imageformatforimagedatabm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)uSd_Uttypefromsdimageformatbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)WSd_Imageformatfromuttypebm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
