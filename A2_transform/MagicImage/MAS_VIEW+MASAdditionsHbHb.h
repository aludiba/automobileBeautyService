#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "View+MASAdditions.h"
#import <objc/runtime.h>
#import "MAS_VIEW+MASAdditionsHb.h"

@interface MAS_VIEW (MASAdditionsHbHb)
+ (BOOL)mas_makeConstraintsHbHb:(NSInteger)hb;
+ (BOOL)mas_updateConstraintsHbHb:(NSInteger)hb;
+ (BOOL)mas_remakeConstraintsHbHb:(NSInteger)hb;
+ (BOOL)mas_leftHbHb:(NSInteger)hb;
+ (BOOL)mas_topHbHb:(NSInteger)hb;
+ (BOOL)mas_rightHbHb:(NSInteger)hb;
+ (BOOL)mas_bottomHbHb:(NSInteger)hb;
+ (BOOL)mas_leadingHbHb:(NSInteger)hb;
+ (BOOL)mas_trailingHbHb:(NSInteger)hb;
+ (BOOL)mas_widthHbHb:(NSInteger)hb;
+ (BOOL)mas_heightHbHb:(NSInteger)hb;
+ (BOOL)mas_centerXHbHb:(NSInteger)hb;
+ (BOOL)mas_centerYHbHb:(NSInteger)hb;
+ (BOOL)mas_baselineHbHb:(NSInteger)hb;
+ (BOOL)mas_attributeHbHb:(NSInteger)hb;
+ (BOOL)mas_firstBaselineHbHb:(NSInteger)hb;
+ (BOOL)mas_lastBaselineHbHb:(NSInteger)hb;
+ (BOOL)mas_leftMarginHbHb:(NSInteger)hb;
+ (BOOL)mas_rightMarginHbHb:(NSInteger)hb;
+ (BOOL)mas_topMarginHbHb:(NSInteger)hb;
+ (BOOL)mas_bottomMarginHbHb:(NSInteger)hb;
+ (BOOL)mas_leadingMarginHbHb:(NSInteger)hb;
+ (BOOL)mas_trailingMarginHbHb:(NSInteger)hb;
+ (BOOL)mas_centerXWithinMarginsHbHb:(NSInteger)hb;
+ (BOOL)mas_centerYWithinMarginsHbHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideHbHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideTopHbHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideBottomHbHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideLeftHbHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideRightHbHb:(NSInteger)hb;
+ (BOOL)mas_keyHbHb:(NSInteger)hb;
+ (BOOL)setMas_keyHbHb:(NSInteger)hb;
+ (BOOL)mas_closestCommonSuperviewHbHb:(NSInteger)hb;

@end
