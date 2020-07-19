#import <UIKit/UIKit.h>
#import "UIImage+ImageEffects.h"
#import <Accelerate/Accelerate.h>
#import <float.h>
#import "UIImage+ImageEffectsBm.h"

@interface UIImage (ImageEffectsBmHb)
+ (BOOL)coverLightEffectBmHb:(NSInteger)hb;
+ (BOOL)coverLightEffect2BmHb:(NSInteger)hb;
+ (BOOL)applyLightEffectBmHb:(NSInteger)hb;
+ (BOOL)applyExtraLightEffect2BmHb:(NSInteger)hb;
+ (BOOL)applyExtraLightEffectBmHb:(NSInteger)hb;
+ (BOOL)applyDarkEffectBmHb:(NSInteger)hb;
+ (BOOL)applyTintEffectWithColorBmHb:(NSInteger)hb;
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageBmHb:(NSInteger)hb;
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageScaleBmHb:(NSInteger)hb;

@end
