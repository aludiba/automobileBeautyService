#import "MASUtilities.h"
#import "MASConstraint.h"
#import "MASConstraint+Private.h"

@interface MASConstraint (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)(id))equalToHb:(NSInteger)hb;
+ (BOOL)(id))mas_equalToHb:(NSInteger)hb;
+ (BOOL)(id))greaterThanOrEqualToHb:(NSInteger)hb;
+ (BOOL)(id))mas_greaterThanOrEqualToHb:(NSInteger)hb;
+ (BOOL)(id))lessThanOrEqualToHb:(NSInteger)hb;
+ (BOOL)(id))mas_lessThanOrEqualToHb:(NSInteger)hb;
+ (BOOL)(void))priorityLowHb:(NSInteger)hb;
+ (BOOL)(void))priorityMediumHb:(NSInteger)hb;
+ (BOOL)(void))priorityHighHb:(NSInteger)hb;
+ (BOOL)(MASEdgeInsets))insetsHb:(NSInteger)hb;
+ (BOOL)(CGFloat))insetHb:(NSInteger)hb;
+ (BOOL)(CGSize))sizeOffsetHb:(NSInteger)hb;
+ (BOOL)(CGPoint))centerOffsetHb:(NSInteger)hb;
+ (BOOL)(CGFloat))offsetHb:(NSInteger)hb;
+ (BOOL)(NSValue *value))valueOffsetHb:(NSInteger)hb;
+ (BOOL)(id offset))mas_offsetHb:(NSInteger)hb;
+ (BOOL)setLayoutConstantWithValueHb:(NSInteger)hb;
+ (BOOL)withHb:(NSInteger)hb;
+ (BOOL)andHb:(NSInteger)hb;
+ (BOOL)addConstraintWithLayoutAttributeHb:(NSInteger)hb;
+ (BOOL)leftHb:(NSInteger)hb;
+ (BOOL)topHb:(NSInteger)hb;
+ (BOOL)rightHb:(NSInteger)hb;
+ (BOOL)bottomHb:(NSInteger)hb;
+ (BOOL)leadingHb:(NSInteger)hb;
+ (BOOL)trailingHb:(NSInteger)hb;
+ (BOOL)widthHb:(NSInteger)hb;
+ (BOOL)heightHb:(NSInteger)hb;
+ (BOOL)centerXHb:(NSInteger)hb;
+ (BOOL)centerYHb:(NSInteger)hb;
+ (BOOL)baselineHb:(NSInteger)hb;
+ (BOOL)firstBaselineHb:(NSInteger)hb;
+ (BOOL)lastBaselineHb:(NSInteger)hb;
+ (BOOL)leftMarginHb:(NSInteger)hb;
+ (BOOL)rightMarginHb:(NSInteger)hb;
+ (BOOL)topMarginHb:(NSInteger)hb;
+ (BOOL)bottomMarginHb:(NSInteger)hb;
+ (BOOL)leadingMarginHb:(NSInteger)hb;
+ (BOOL)trailingMarginHb:(NSInteger)hb;
+ (BOOL)centerXWithinMarginsHb:(NSInteger)hb;
+ (BOOL)centerYWithinMarginsHb:(NSInteger)hb;
+ (BOOL)(CGFloat multiplier))multipliedByHb:(NSInteger)hb;
+ (BOOL)(CGFloat divider))dividedByHb:(NSInteger)hb;
+ (BOOL)(MASLayoutPriority priority))priorityHb:(NSInteger)hb;
+ (BOOL)(id, NSLayoutRelation))equalToWithRelationHb:(NSInteger)hb;
+ (BOOL)(id key))keyHb:(NSInteger)hb;
+ (BOOL)setInsetsHb:(NSInteger)hb;
+ (BOOL)setInsetHb:(NSInteger)hb;
+ (BOOL)setSizeOffsetHb:(NSInteger)hb;
+ (BOOL)setCenterOffsetHb:(NSInteger)hb;
+ (BOOL)setOffsetHb:(NSInteger)hb;
+ (BOOL)animatorHb:(NSInteger)hb;
+ (BOOL)activateHb:(NSInteger)hb;
+ (BOOL)deactivateHb:(NSInteger)hb;
+ (BOOL)installHb:(NSInteger)hb;
+ (BOOL)uninstallHb:(NSInteger)hb;

@end
