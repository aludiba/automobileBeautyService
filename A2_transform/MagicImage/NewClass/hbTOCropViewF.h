#import <Foundation/Foundation.h>
@interface hbTOCropViewF: NSObject
+ (BOOL)BInitwithimage:(NSInteger)hb;
+ (BOOL)RInitwithcroppingstyleuImage:(NSInteger)hb;
+ (BOOL)Bsetup:(NSInteger)hb;
+ (BOOL)jperformInitialSetup:(NSInteger)hb;
+ (BOOL)nlayoutInitialImage:(NSInteger)hb;
+ (BOOL)KprepareforRotation:(NSInteger)hb;
+ (BOOL)SperformRelayoutForRotation:(NSInteger)hb;
+ (BOOL)umatchForegroundToBackground:(NSInteger)hb;
+ (BOOL)RUpdatecropboxframewithgesturepoint:(NSInteger)hb;
+ (BOOL)VResetlayouttodefaultanimated:(NSInteger)hb;
+ (BOOL)DToggletranslucencyviewvisible:(NSInteger)hb;
+ (BOOL)qUpdatetoimagecropframe:(NSInteger)hb;
+ (BOOL)TGridpangesturerecognized:(NSInteger)hb;
+ (BOOL)sLongpressgesturerecognized:(NSInteger)hb;
+ (BOOL)VGesturerecognizershouldbegin:(NSInteger)hb;
+ (BOOL)rGesturerecognizerxShouldreceivetouch:(NSInteger)hb;
+ (BOOL)BstartResetTimer:(NSInteger)hb;
+ (BOOL)ytimerTriggered:(NSInteger)hb;
+ (BOOL)WcancelResetTimer:(NSInteger)hb;
+ (BOOL)ACropedgeforpoint:(NSInteger)hb;
+ (BOOL)lViewforzoominginscrollview:(NSInteger)hb;
+ (BOOL)VScrollviewdidscroll:(NSInteger)hb;
+ (BOOL)sScrollviewwillbegindragging:(NSInteger)hb;
+ (BOOL)cScrollviewwillbeginzoomingWWithview:(NSInteger)hb;
+ (BOOL)FScrollviewdidenddecelerating:(NSInteger)hb;
+ (BOOL)nScrollviewdidendzoomingSWithviewGAtscale:(NSInteger)hb;
+ (BOOL)lScrollviewdidzoom:(NSInteger)hb;
+ (BOOL)CScrollviewdidenddraggingcWilldecelerate:(NSInteger)hb;
+ (BOOL)OSetcropboxresizeenabled:(NSInteger)hb;
+ (BOOL)jSetcropboxframe:(NSInteger)hb;
+ (BOOL)qSetediting:(NSInteger)hb;
+ (BOOL)ySetsimplerendermode:(NSInteger)hb;
+ (BOOL)FcropBoxAspectRatioIsPortrait:(NSInteger)hb;
+ (BOOL)aimageCropFrame:(NSInteger)hb;
+ (BOOL)rSetimagecropframe:(NSInteger)hb;
+ (BOOL)DSetcroppingviewshidden:(NSInteger)hb;
+ (BOOL)iSetcroppingviewshiddenBAnimated:(NSInteger)hb;
+ (BOOL)QSetbackgroundimageviewhiddentAnimated:(NSInteger)hb;
+ (BOOL)PSetgridoverlayhidden:(NSInteger)hb;
+ (BOOL)nSetgridoverlayhiddenWAnimated:(NSInteger)hb;
+ (BOOL)SimageViewFrame:(NSInteger)hb;
+ (BOOL)sSetcanbereset:(NSInteger)hb;
+ (BOOL)GSetangle:(NSInteger)hb;
+ (BOOL)ZstartEditing:(NSInteger)hb;
+ (BOOL)VSeteditingLResetcropboxzAnimated:(NSInteger)hb;
+ (BOOL)rMovecroppedcontenttocenteranimated:(NSInteger)hb;
+ (BOOL)lSetsimplerendermodeEAnimated:(NSInteger)hb;
+ (BOOL)JSetaspectratio:(NSInteger)hb;
+ (BOOL)YSetaspectratioBAnimated:(NSInteger)hb;
+ (BOOL)jRotateimageninetydegreesanimated:(NSInteger)hb;
+ (BOOL)URotateimageninetydegreesanimatedMClockwise:(NSInteger)hb;
+ (BOOL)icaptureStateForImageRotation:(NSInteger)hb;
+ (BOOL)lcheckForCanReset:(NSInteger)hb;
+ (BOOL)icontentBounds:(NSInteger)hb;
+ (BOOL)JimageSize:(NSInteger)hb;
+ (BOOL)DhasAspectRatio:(NSInteger)hb;

@end
