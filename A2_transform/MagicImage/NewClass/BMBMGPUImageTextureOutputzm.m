#import "BMBMGPUImageTextureOutputzm.h"
@implementation BMBMGPUImageTextureOutputzm
+ (BOOL)PZinit:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)cPdonewithtexture:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)ABnewframereadyattimevatindex:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ZQnextavailabletextureindex:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)HSsetinputframebufferjatindex:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)AMsetinputrotationlatindex:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)ZVsetinputsizezatindex:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)AHmaximumoutputsize:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)aZendprocessing:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)ULshouldignoreupdatestothistarget:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)ZWwantsmonochromeinput:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)BOsetcurrentlyreceivingmonochromeinput:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
