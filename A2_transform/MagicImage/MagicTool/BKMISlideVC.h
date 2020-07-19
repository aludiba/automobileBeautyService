#import <UIKit/UIKit.h>
@class BKMISlideVC;
@protocol BKMISlideVCDelegate<NSObject>
- (void)BKslideMenuController:(BKMISlideVC *)slideMenuController didViewDidLoad:(NSInteger)index;
@optional
- (void)BKslideMenuController:(BKMISlideVC *)slideMenuController viewWillAppear:(NSInteger)index;
- (void)BKslideMenuController:(BKMISlideVC *)slideMenuController viewDidAppear:(NSInteger)index;
- (void)BKslideMenuController:(BKMISlideVC *)slideMenuController viewWillDisappear:(NSInteger)index;
- (void)BKslideMenuController:(BKMISlideVC *)slideMenuController viewDidDisappear:(NSInteger)index;
@end
@interface BKMISlideVC : UIViewController
@property (nonatomic,strong,readonly)UIScrollView *BKmenuScrollView;
@property (nonatomic,strong,readonly)UIScrollView *BKcontentScrollView;
@property (nonatomic,assign)NSInteger BKpageNumberOfItem;
@property (nonatomic,assign)NSInteger BKcurrentItem;
@property (nonatomic,assign)CGFloat BKmenuHeight;
@property (nonatomic,strong)NSArray<NSString *> *BKtitles;
@property (nonatomic,assign)BOOL BKshowBottomLine;
@property (nonatomic,assign)CGFloat BKbottomLineHeight;
@property (nonatomic,assign)CGFloat BKbottomLineWidth;
@property (nonatomic,strong)UIColor *BKbottomLineColor;
@property (nonatomic,strong)UIFont *BKtitleFont;
@property (nonatomic,strong)UIFont *BKtitleSelectFont;
@property (nonatomic,strong)UIColor *BKtitleColor;
@property (nonatomic,strong)UIColor *BKtitleSelectColor;
@property (nonatomic,strong)NSArray<UIViewController<BKMISlideVCDelegate> *> *BKcontrollers;
@end
