#import "BMBKMITagsCellC.h"
@implementation BMBKMITagsCellC
+ (BOOL)PInitwithstylereuseidentifierbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sSetbkmodelbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
