#import "LCDMISlideVC.h"
#import <objc/runtime.h>
#define Rect(x,y,w,h) CGRectMake(x, y, w, h)
#define ScreenWidth CGRectGetWidth(self.view.frame)
#define ScreenHeight CGRectGetHeight(self.view.frame)
typedef NS_ENUM(NSUInteger, LYSScrollViewType) {
    LYSScrollViewType_menu                = 10000,
    LYSScrollViewType_content             = 10001
};
@interface LCDMISlideVC ()<UIScrollViewDelegate>
@property (nonatomic,strong,readwrite)UIScrollView *LCDmenuScrollView;
@property (nonatomic,strong,readwrite)UIScrollView *LCDcontentScrollView;
@property (nonatomic,strong)NSMutableArray *LCDlabelArys;
@property (nonatomic,assign)NSInteger LCDlastIndex;
@property (nonatomic,strong)UIView *LCDbottomLine;
@end
@implementation LCDMISlideVC
- (BOOL)LCDsuperExistNav
{
    UIViewController *LCDparentVC = self;
    while (LCDparentVC != nil && ![LCDparentVC isKindOfClass:[UINavigationController class]]) {
        LCDparentVC = LCDparentVC.parentViewController;
    }
    return [LCDparentVC isKindOfClass:[UINavigationController class]];
}
- (BOOL)LCDsuperExistTab
{
    UIViewController *LCDparentVC = self;
    while (LCDparentVC != nil && ![LCDparentVC isKindOfClass:[UITabBarController class]]) {
        LCDparentVC = LCDparentVC.parentViewController;
    }
    return [LCDparentVC isKindOfClass:[UITabBarController class]];
}
- (UIView *)LCDbottomLine
{
    if (!_LCDbottomLine) {
        _LCDbottomLine = [[UIView alloc] init];
        _LCDbottomLine.backgroundColor = self.LCDbottomLineColor;
    }
    return _LCDbottomLine;
}
- (CGFloat)LCDmenuHeight
{
    if (_LCDmenuHeight == 0) {
        _LCDmenuHeight = 40;
    }
    return _LCDmenuHeight;
}
- (NSInteger)LCDpageNumberOfItem
{
    if (_LCDpageNumberOfItem == 0) {
        _LCDpageNumberOfItem = (self.LCDtitles.count > 5 ? 5 : self.LCDtitles.count);
    }
    return _LCDpageNumberOfItem;
}
- (CGFloat)LCDbottomLineWidth
{
    if (_LCDbottomLineWidth == 0 || _LCDbottomLineWidth > ScreenWidth / self.LCDpageNumberOfItem) {
        _LCDbottomLineWidth = ScreenWidth / self.LCDpageNumberOfItem;
    }
    return _LCDbottomLineWidth;
}
- (NSMutableArray *)LCDlabelArys
{
    if (!_LCDlabelArys) {
        _LCDlabelArys = [NSMutableArray array];
    }
    return _LCDlabelArys;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.LCDshowBottomLine = YES;
        self.LCDbottomLineHeight = 2;
        self.LCDbottomLineColor = [UIColor redColor];
        self.LCDtitleColor = [UIColor blackColor];
        self.LCDtitleFont = [UIFont boldSystemFontOfSize:15];
        self.LCDtitleSelectColor = [UIColor redColor];
        self.LCDtitleSelectFont = [UIFont boldSystemFontOfSize:15];
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    [self LCDcustomBaseView];
    [self LCDcustomTopView];
    [self LCDcustomBottomView];
    [self LCDmenuUpdateStyle:self.LCDcurrentItem];
    [self LCDmenuScrollToCenter:self.LCDcurrentItem];
    [self LCDmenuUpdateBottomLine:self.LCDcurrentItem];
    [self LCDmotionChangePage:self.LCDcurrentItem];
    [self LCDcontentScrollToCenter:self.LCDcurrentItem];
    self.LCDlastIndex = self.LCDcurrentItem;
}
#pragma mark - 加载基本视图 -
- (void)LCDcustomBaseView
{
    CGFloat LCDnavHeight = [self LCDsuperExistNav] ? 64 : 0;
    CGFloat LCDtabHeight = [self LCDsuperExistTab] ? 49 : 0;
    self.LCDmenuScrollView = [[UIScrollView alloc] init];
    self.LCDmenuScrollView.showsHorizontalScrollIndicator = NO;
    self.LCDmenuScrollView.delegate = self;
    self.LCDmenuScrollView.tag = LYSScrollViewType_menu;
    [self.view addSubview:self.LCDmenuScrollView];
    self.LCDmenuScrollView.frame = Rect(0, LCDnavHeight, ScreenWidth, self.LCDmenuHeight);
    UIView *LCDline = [[UIView alloc] init];
    LCDline.frame = Rect(0, CGRectGetMaxY(self.LCDmenuScrollView.frame), ScreenWidth, 0.5);
    LCDline.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:LCDline];
    self.LCDcontentScrollView = [[UIScrollView alloc] init];
    self.LCDcontentScrollView.showsHorizontalScrollIndicator = NO;
    self.LCDcontentScrollView.pagingEnabled = YES;
    self.LCDcontentScrollView.delegate = self;
    self.LCDcontentScrollView.tag = LYSScrollViewType_content;
    self.LCDcontentScrollView.bounces = NO;
    [self.view addSubview:self.LCDcontentScrollView];
    self.LCDcontentScrollView.frame = Rect(0, CGRectGetMaxY(LCDline.frame), ScreenWidth, ScreenHeight - LCDnavHeight - LCDtabHeight - CGRectGetMaxY(LCDline.frame) + CGRectGetMinY(self.LCDmenuScrollView.frame));
}
#pragma mark - 加载顶部视图数据 -
- (void)LCDcustomTopView
{
    CGFloat LCDitemWidth = ScreenWidth / self.LCDpageNumberOfItem;
    for (int i = 0; i < self.LCDtitles.count; i++) {
        UILabel *LCDitem = [[UILabel alloc] init];
        LCDitem.frame = Rect(LCDitemWidth * i, 0, LCDitemWidth, self.LCDmenuHeight);
        LCDitem.text = self.LCDtitles[i];
        LCDitem.font = self.LCDtitleFont;
        LCDitem.textColor = self.LCDtitleColor;
        LCDitem.textAlignment = NSTextAlignmentCenter;
        LCDitem.tag = 10000 + i;
        [self.LCDmenuScrollView addSubview:LCDitem];
        UITapGestureRecognizer *LCDtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDitemClickTap:)];
        LCDitem.userInteractionEnabled = YES;
        [LCDitem addGestureRecognizer:LCDtap];
        [self.LCDlabelArys addObject:LCDitem];
    }
    self.LCDmenuScrollView.contentSize = CGSizeMake(LCDitemWidth * self.LCDtitles.count, self.LCDmenuHeight);
    if (self.LCDshowBottomLine == YES) {
        self.LCDbottomLine.frame = CGRectMake((self.LCDcurrentItem * LCDitemWidth) + ((LCDitemWidth - self.LCDbottomLineWidth) / 2.0), self.LCDmenuHeight - self.LCDbottomLineHeight, self.LCDbottomLineWidth, self.LCDbottomLineHeight);
        [self.LCDmenuScrollView addSubview:self.LCDbottomLine];
    }
}
- (void)LCDcustomBottomView
{
    for (int LCDi = 0; LCDi < self.LCDcontrollers.count; LCDi++) {
        UIViewController *LCDvc = self.LCDcontrollers[LCDi];
        LCDvc.view.frame = Rect(ScreenWidth * LCDi, 0, ScreenWidth, CGRectGetHeight(self.LCDcontentScrollView.frame));
        [self addChildViewController:LCDvc];
        [self.LCDcontentScrollView addSubview:LCDvc.view];
        objc_setAssociatedObject(LCDvc, @"lysIsLoad", @(NO), OBJC_ASSOCIATION_ASSIGN);
    }
    self.LCDcontentScrollView.contentSize = CGSizeMake(ScreenWidth * self.LCDcontrollers.count, CGRectGetHeight(self.LCDcontentScrollView.frame));
}
#pragma mark - scrollView代理方法 -
- (void)scrollViewDidEndDecelerating:(UIScrollView *)LCDscrollView{
    if (LCDscrollView.tag == LYSScrollViewType_content) {
        NSInteger LCDindex = LCDscrollView.contentOffset.x / ScreenWidth;
        if (self.LCDlastIndex != LCDindex) {
            [self LCDmenuUpdateStyle:LCDindex];
            [self LCDmenuScrollToCenter:LCDindex];
            [self LCDmenuUpdateBottomLine:LCDindex];
            [self LCDmotionChangePage:LCDindex];
            self.LCDlastIndex = LCDindex;
        }
    }
}
#pragma mark - 菜单点击回调 -
- (void)LCDitemClickTap:(UIGestureRecognizer *)LCDsender{
    NSInteger LCDindex = LCDsender.view.tag - 10000;
    if (self.LCDlastIndex != LCDindex) {
        [self LCDmenuUpdateStyle:LCDindex];
        [self LCDmenuScrollToCenter:LCDindex];
        [self LCDmenuUpdateBottomLine:LCDindex];
        [self LCDcontentScrollToCenter:LCDindex];
        [self LCDmotionChangePage:LCDindex];
        self.LCDlastIndex = LCDindex;
    }
}
#pragma mark - 页面切换回调 -
- (void)LCDmotionChangePage:(NSInteger)LCDindex {
    if (self.LCDlastIndex != LCDindex) {
        UIViewController<LCDMISlideVCDelegate> *LCDlastVC = self.LCDcontrollers[self.LCDlastIndex];
        UIViewController<LCDMISlideVCDelegate>  *LCDcurrentVC = self.LCDcontrollers[LCDindex];
        NSNumber *LCDvalue = objc_getAssociatedObject(LCDcurrentVC, @"lysIsLoad");
        if (![LCDvalue boolValue]) {
            if ([LCDcurrentVC respondsToSelector:@selector(LCDslideMenuController:didViewDidLoad:)]) {
                [LCDcurrentVC LCDslideMenuController:self didViewDidLoad:LCDindex];
            }
            objc_setAssociatedObject(LCDcurrentVC, @"lysIsLoad", @(YES), OBJC_ASSOCIATION_ASSIGN);
        }
        if ([LCDlastVC respondsToSelector:@selector(LCDslideMenuController:viewWillDisappear:)]) {
            [LCDlastVC LCDslideMenuController:self viewWillDisappear:self.LCDlastIndex];
        }
        if ([LCDcurrentVC respondsToSelector:@selector(LCDslideMenuController:viewWillAppear:)]) {
            [LCDcurrentVC LCDslideMenuController:self viewWillAppear:LCDindex];
        }
        if ([LCDlastVC respondsToSelector:@selector(LCDslideMenuController:viewDidDisappear:)]) {
            [LCDlastVC LCDslideMenuController:self viewDidDisappear:self.LCDlastIndex];
        }
        if ([LCDcurrentVC respondsToSelector:@selector(LCDslideMenuController:viewDidAppear:)]) {
            [LCDcurrentVC LCDslideMenuController:self viewDidAppear:LCDindex];
        }
    }else {
        UIViewController<LCDMISlideVCDelegate>  *LCDcurrentVC = self.LCDcontrollers[LCDindex];
        if ([LCDcurrentVC respondsToSelector:@selector(LCDslideMenuController:didViewDidLoad:)]) {
            [LCDcurrentVC LCDslideMenuController:self didViewDidLoad:LCDindex];
        }
        objc_setAssociatedObject(LCDcurrentVC, @"lysIsLoad", @(YES), OBJC_ASSOCIATION_ASSIGN);
        if ([LCDcurrentVC respondsToSelector:@selector(LCDslideMenuController:viewWillAppear:)]) {
            [LCDcurrentVC LCDslideMenuController:self viewWillAppear:LCDindex];
        }
        if ([LCDcurrentVC respondsToSelector:@selector(LCDslideMenuController:viewDidAppear:)]) {
            [LCDcurrentVC LCDslideMenuController:self viewDidAppear:LCDindex];
        }
    }
}
- (void)LCDcontentScrollToCenter:(NSInteger)LCDindex {
    CGFloat LCDleft = ScreenWidth *LCDindex;
    [self.LCDcontentScrollView setContentOffset:CGPointMake(LCDleft, 0) animated:YES];
}
- (void)LCDmenuScrollToCenter:(NSInteger)LCDindex{
    CGFloat LCDitemWidth = ScreenWidth / self.LCDpageNumberOfItem;
    UILabel *LCDlabel = self.LCDlabelArys[LCDindex];
    CGFloat LCDleft = LCDlabel.center.x - ScreenWidth / 2.0;
    LCDleft = LCDleft <= 0 ? 0 : LCDleft;
    CGFloat LCDmaxLeft = LCDitemWidth * self.LCDtitles.count - ScreenWidth;
    LCDleft = LCDleft >= LCDmaxLeft ? LCDmaxLeft : LCDleft;
    [self.LCDmenuScrollView setContentOffset:CGPointMake(LCDleft, 0) animated:YES];
}
- (void)LCDmenuUpdateStyle:(NSInteger)LCDindex{
    UILabel *LCDlastLabel = self.LCDlabelArys[self.LCDlastIndex];
    LCDlastLabel.font = self.LCDtitleFont;
    LCDlastLabel.textColor = self.LCDtitleColor;
    UILabel *LCDlabel = self.LCDlabelArys[LCDindex];
    LCDlabel.textColor = self.LCDtitleSelectColor;
    LCDlabel.font = self.LCDtitleSelectFont;
}
- (void)LCDmenuUpdateBottomLine:(NSInteger)LCDindex{
    if (self.LCDshowBottomLine == YES) {
        CGFloat LCDitemWidth = ScreenWidth / self.LCDpageNumberOfItem;
        [UIView animateWithDuration:0.1 animations:^{
            self.LCDbottomLine.frame = CGRectMake((LCDindex * LCDitemWidth) + ((LCDitemWidth - self.LCDbottomLineWidth) / 2.0), self.LCDmenuHeight - self.LCDbottomLineHeight, self.LCDbottomLineWidth, self.LCDbottomLineHeight);
        }];
    }
}
@end
