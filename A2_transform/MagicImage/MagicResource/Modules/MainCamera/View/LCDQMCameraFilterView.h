#import <UIKit/UIKit.h>
#import "LCDQMFilterModel.h"
@interface LCDQMCameraFilterView : UIView
@property (nonatomic, copy) void (^LCDfilterItemClickBlock)(LCDQMFilterModel *item, NSInteger selectIndex);
@property (nonatomic, copy) void (^LCDfilterValueDidChangeBlock)(CGFloat value);
@property (nonatomic, copy) void (^LCDfilterWillShowBlock)(void);
@property (nonatomic, copy) void (^LCDfilterWillHideBlock)(void);
+ (instancetype)LCDcameraFilterView;
- (void)LCDsetFilterValue:(CGFloat)value animated:(BOOL)animated;
- (BOOL)LCDselectFilterAtIndex:(NSInteger)index;
- (void)LCDtoggleInView:(UIView *)view;
- (void)LCDshowInView:(UIView *)view;
- (BOOL)LCDhide;
- (void)LCDreloadData;
@end
