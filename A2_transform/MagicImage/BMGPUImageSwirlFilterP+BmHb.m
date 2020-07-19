#import "BMGPUImageSwirlFilterP+BmHb.h"
@implementation BMGPUImageSwirlFilterP (BmHb)
+ (BOOL)vinitBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)VSetinputrotationxAtindexBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)sSetradiusBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)HSetangleBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)HSetcenterBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
