#import <UIKit/UIKit.h>
#import "BKQMFilterModel.h"
@interface BKQMCameraFilterView : UIView
@property (nonatomic, copy) void (^BKfilterItemClickBlock)(BKQMFilterModel *item, NSInteger selectIndex);
@property (nonatomic, copy) void (^BKfilterValueDidChangeBlock)(CGFloat value);
@property (nonatomic, copy) void (^BKfilterWillShowBlock)(void);
@property (nonatomic, copy) void (^BKfilterWillHideBlock)(void);
+ (instancetype)BKcameraFilterView;
- (void)BKsetFilterValue:(CGFloat)value animated:(BOOL)animated;
- (BOOL)BKselectFilterAtIndex:(NSInteger)index;
- (void)BKtoggleInView:(UIView *)view;
- (void)BKshowInView:(UIView *)view;
- (BOOL)BKhide;
- (void)BKreloadData;
@end
