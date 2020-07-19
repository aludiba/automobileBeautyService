#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "View+MASAdditions.h"
#import <objc/runtime.h>

@interface MAS_VIEW (MASAdditionsHb)
+ (BOOL)mas_makeConstraintsHb:(NSInteger)hb;
+ (BOOL)mas_updateConstraintsHb:(NSInteger)hb;
+ (BOOL)mas_remakeConstraintsHb:(NSInteger)hb;
+ (BOOL)mas_leftHb:(NSInteger)hb;
+ (BOOL)mas_topHb:(NSInteger)hb;
+ (BOOL)mas_rightHb:(NSInteger)hb;
+ (BOOL)mas_bottomHb:(NSInteger)hb;
+ (BOOL)mas_leadingHb:(NSInteger)hb;
+ (BOOL)mas_trailingHb:(NSInteger)hb;
+ (BOOL)mas_widthHb:(NSInteger)hb;
+ (BOOL)mas_heightHb:(NSInteger)hb;
+ (BOOL)mas_centerXHb:(NSInteger)hb;
+ (BOOL)mas_centerYHb:(NSInteger)hb;
+ (BOOL)mas_baselineHb:(NSInteger)hb;
+ (BOOL)(NSLayoutAttribute))mas_attributeHb:(NSInteger)hb;
+ (BOOL)mas_firstBaselineHb:(NSInteger)hb;
+ (BOOL)mas_lastBaselineHb:(NSInteger)hb;
+ (BOOL)mas_leftMarginHb:(NSInteger)hb;
+ (BOOL)mas_rightMarginHb:(NSInteger)hb;
+ (BOOL)mas_topMarginHb:(NSInteger)hb;
+ (BOOL)mas_bottomMarginHb:(NSInteger)hb;
+ (BOOL)mas_leadingMarginHb:(NSInteger)hb;
+ (BOOL)mas_trailingMarginHb:(NSInteger)hb;
+ (BOOL)mas_centerXWithinMarginsHb:(NSInteger)hb;
+ (BOOL)mas_centerYWithinMarginsHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideTopHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideBottomHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideLeftHb:(NSInteger)hb;
+ (BOOL)mas_safeAreaLayoutGuideRightHb:(NSInteger)hb;
+ (BOOL)mas_keyHb:(NSInteger)hb;
+ (BOOL)setMas_keyHb:(NSInteger)hb;
+ (BOOL)mas_closestCommonSuperviewHb:(NSInteger)hb;

@end
