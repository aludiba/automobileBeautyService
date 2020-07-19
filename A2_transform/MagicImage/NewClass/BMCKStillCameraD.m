#import "BMCKStillCameraD.h"
@implementation BMCKStillCameraD
+ (BOOL)kInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)FRegisterobserverbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)yIsfocuspointofinterestsupportedbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)kFocusatpointbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)JSetfocusmodelbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)HIsautofocusrangerestrictionsupportedbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ISetautofocusrangerestrictionmodelbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)kIssmoothautofocussupportedbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)SEnablesmoothautofocusbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)ZIsexposurepointofinterestsupportedbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)iSetexposemodelbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)cExposeatpointbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)BExposuretargetoffsetbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)sSetexposuremodecustomwithdurationisocompletionhandlerbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)bCurrentisopercentagebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)BCurrentflashmodelbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)ISetflashmodelbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)ECurrentwhitebalancemodebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)VSetwhitebalancemodebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)PCurrenttorchmodelbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)OSettorchmodelbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)tSettorchlevelbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)OVideocanzoombm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)vVideomaxzoomfactorbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)aVideozoomfactorbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)RSetvideozoomfactorbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)CRampzoomtofactorbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ARotatecamerabm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)fObservevalueforkeypathofobjectchangecontextbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
