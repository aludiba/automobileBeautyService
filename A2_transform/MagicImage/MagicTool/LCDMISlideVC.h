#import <UIKit/UIKit.h>
@class LCDMISlideVC;
@protocol LCDMISlideVCDelegate<NSObject>
- (void)LCDslideMenuController:(LCDMISlideVC *)slideMenuController didViewDidLoad:(NSInteger)index;
@optional
- (void)LCDslideMenuController:(LCDMISlideVC *)slideMenuController viewWillAppear:(NSInteger)index;
- (void)LCDslideMenuController:(LCDMISlideVC *)slideMenuController viewDidAppear:(NSInteger)index;
- (void)LCDslideMenuController:(LCDMISlideVC *)slideMenuController viewWillDisappear:(NSInteger)index;
- (void)LCDslideMenuController:(LCDMISlideVC *)slideMenuController viewDidDisappear:(NSInteger)index;
@end
@interface LCDMISlideVC : UIViewController
@property (nonatomic,strong,readonly)UIScrollView *LCDmenuScrollView;
@property (nonatomic,strong,readonly)UIScrollView *LCDcontentScrollView;
@property (nonatomic,assign)NSInteger LCDpageNumberOfItem;
@property (nonatomic,assign)NSInteger LCDcurrentItem;
@property (nonatomic,assign)CGFloat LCDmenuHeight;
@property (nonatomic,strong)NSArray<NSString *> *LCDtitles;
@property (nonatomic,assign)BOOL LCDshowBottomLine;
@property (nonatomic,assign)CGFloat LCDbottomLineHeight;
@property (nonatomic,assign)CGFloat LCDbottomLineWidth;
@property (nonatomic,strong)UIColor *LCDbottomLineColor;
@property (nonatomic,strong)UIFont *LCDtitleFont;
@property (nonatomic,strong)UIFont *LCDtitleSelectFont;
@property (nonatomic,strong)UIColor *LCDtitleColor;
@property (nonatomic,strong)UIColor *LCDtitleSelectColor;
@property (nonatomic,strong)NSArray<UIViewController<LCDMISlideVCDelegate> *> *LCDcontrollers;
@end
