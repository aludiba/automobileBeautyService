#import "BKMISlideVC.h"
#import <objc/runtime.h>
#define Rect(x,y,w,h) CGRectMake(x, y, w, h)
#define ScreenWidth CGRectGetWidth(self.view.frame)
#define ScreenHeight CGRectGetHeight(self.view.frame)
typedef NS_ENUM(NSUInteger, LYSScrollViewType) {
    LYSScrollViewType_menu                = 10000,
    LYSScrollViewType_content             = 10001
};
@interface BKMISlideVC ()<UIScrollViewDelegate>
@property (nonatomic,strong,readwrite)UIScrollView *BKmenuScrollView;
@property (nonatomic,strong,readwrite)UIScrollView *BKcontentScrollView;
@property (nonatomic,strong)NSMutableArray *BKlabelArys;
@property (nonatomic,assign)NSInteger BKlastIndex;
@property (nonatomic,strong)UIView *BKbottomLine;
@end
@implementation BKMISlideVC
- (BOOL)BKsuperExistNav
{
    UIViewController *BKparentVC = self;
    while (BKparentVC != nil && ![BKparentVC isKindOfClass:[UINavigationController class]]) {
        BKparentVC = BKparentVC.parentViewController;
    }
    return [BKparentVC isKindOfClass:[UINavigationController class]];
}
- (BOOL)BKsuperExistTab
{
    UIViewController *BKparentVC = self;
    while (BKparentVC != nil && ![BKparentVC isKindOfClass:[UITabBarController class]]) {
        BKparentVC = BKparentVC.parentViewController;
    }
    return [BKparentVC isKindOfClass:[UITabBarController class]];
}
- (UIView *)BKbottomLine
{
    if (!_BKbottomLine) {
        _BKbottomLine = [[UIView alloc] init];
        _BKbottomLine.backgroundColor = self.BKbottomLineColor;
    }
    return _BKbottomLine;
}
- (CGFloat)BKmenuHeight
{
    if (_BKmenuHeight == 0) {
        _BKmenuHeight = 40;
    }
    return _BKmenuHeight;
}
- (NSInteger)BKpageNumberOfItem
{
    if (_BKpageNumberOfItem == 0) {
        _BKpageNumberOfItem = (self.BKtitles.count > 5 ? 5 : self.BKtitles.count);
    }
    return _BKpageNumberOfItem;
}
- (CGFloat)BKbottomLineWidth
{
    if (_BKbottomLineWidth == 0 || _BKbottomLineWidth > ScreenWidth / self.BKpageNumberOfItem) {
        _BKbottomLineWidth = ScreenWidth / self.BKpageNumberOfItem;
    }
    return _BKbottomLineWidth;
}
- (NSMutableArray *)BKlabelArys
{
    if (!_BKlabelArys) {
        _BKlabelArys = [NSMutableArray array];
    }
    return _BKlabelArys;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.BKshowBottomLine = YES;
        self.BKbottomLineHeight = 2;
        self.BKbottomLineColor = [UIColor redColor];
        self.BKtitleColor = [UIColor blackColor];
        self.BKtitleFont = [UIFont boldSystemFontOfSize:15];
        self.BKtitleSelectColor = [UIColor redColor];
        self.BKtitleSelectFont = [UIFont boldSystemFontOfSize:15];
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self BKcustomBaseView];
    [self BKcustomTopView];
    [self BKcustomBottomView];
    [self BKmenuUpdateStyle:self.BKcurrentItem];
    [self BKmenuScrollToCenter:self.BKcurrentItem];
    [self BKmenuUpdateBottomLine:self.BKcurrentItem];
    [self BKmotionChangePage:self.BKcurrentItem];
    [self BKcontentScrollToCenter:self.BKcurrentItem];
    self.BKlastIndex = self.BKcurrentItem;
}
#pragma mark - 加载基本视图 -
- (void)BKcustomBaseView
{
    CGFloat BKnavHeight = [self BKsuperExistNav] ? 64 : 0;
    CGFloat BKtabHeight = [self BKsuperExistTab] ? 49 : 0;
    self.BKmenuScrollView = [[UIScrollView alloc] init];
    self.BKmenuScrollView.showsHorizontalScrollIndicator = NO;
    self.BKmenuScrollView.delegate = self;
    self.BKmenuScrollView.tag = LYSScrollViewType_menu;
    [self.view addSubview:self.BKmenuScrollView];
    self.BKmenuScrollView.frame = Rect(0, BKnavHeight, ScreenWidth, self.BKmenuHeight);
    UIView *BKline = [[UIView alloc] init];
    BKline.frame = Rect(0, CGRectGetMaxY(self.BKmenuScrollView.frame), ScreenWidth, 0.5);
    BKline.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:BKline];
    self.BKcontentScrollView = [[UIScrollView alloc] init];
    self.BKcontentScrollView.showsHorizontalScrollIndicator = NO;
    self.BKcontentScrollView.pagingEnabled = YES;
    self.BKcontentScrollView.delegate = self;
    self.BKcontentScrollView.tag = LYSScrollViewType_content;
    self.BKcontentScrollView.bounces = NO;
    [self.view addSubview:self.BKcontentScrollView];
    self.BKcontentScrollView.frame = Rect(0, CGRectGetMaxY(BKline.frame), ScreenWidth, ScreenHeight - BKnavHeight - BKtabHeight - CGRectGetMaxY(BKline.frame) + CGRectGetMinY(self.BKmenuScrollView.frame));
}
#pragma mark - 加载顶部视图数据 -
- (void)BKcustomTopView
{
    CGFloat BKitemWidth = ScreenWidth / self.BKpageNumberOfItem;
    for (int i = 0; i < self.BKtitles.count; i++) {
        UILabel *BKitem = [[UILabel alloc] init];
        BKitem.frame = Rect(BKitemWidth * i, 0, BKitemWidth, self.BKmenuHeight);
        BKitem.text = self.BKtitles[i];
        BKitem.font = self.BKtitleFont;
        BKitem.textColor = self.BKtitleColor;
        BKitem.textAlignment = NSTextAlignmentCenter;
        BKitem.tag = 10000 + i;
        [self.BKmenuScrollView addSubview:BKitem];
        UITapGestureRecognizer *BKtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BKitemClickTap:)];
        BKitem.userInteractionEnabled = YES;
        [BKitem addGestureRecognizer:BKtap];
        [self.BKlabelArys addObject:BKitem];
    }
    self.BKmenuScrollView.contentSize = CGSizeMake(BKitemWidth * self.BKtitles.count, self.BKmenuHeight);
    if (self.BKshowBottomLine == YES) {
        self.BKbottomLine.frame = CGRectMake((self.BKcurrentItem * BKitemWidth) + ((BKitemWidth - self.BKbottomLineWidth) / 2.0), self.BKmenuHeight - self.BKbottomLineHeight, self.BKbottomLineWidth, self.BKbottomLineHeight);
        [self.BKmenuScrollView addSubview:self.BKbottomLine];
    }
}
- (void)BKcustomBottomView
{
    for (int BKi = 0; BKi < self.BKcontrollers.count; BKi++) {
        UIViewController *BKvc = self.BKcontrollers[BKi];
        BKvc.view.frame = Rect(ScreenWidth * BKi, 0, ScreenWidth, CGRectGetHeight(self.BKcontentScrollView.frame));
        [self addChildViewController:BKvc];
        [self.BKcontentScrollView addSubview:BKvc.view];
        objc_setAssociatedObject(BKvc, @"lysIsLoad", @(NO), OBJC_ASSOCIATION_ASSIGN);
    }
    self.BKcontentScrollView.contentSize = CGSizeMake(ScreenWidth * self.BKcontrollers.count, CGRectGetHeight(self.BKcontentScrollView.frame));
}
#pragma mark - scrollView代理方法 -
- (void)scrollViewDidEndDecelerating:(UIScrollView *)BKscrollView{
    if (BKscrollView.tag == LYSScrollViewType_content) {
        NSInteger BKindex = BKscrollView.contentOffset.x / ScreenWidth;
        if (self.BKlastIndex != BKindex) {
            [self BKmenuUpdateStyle:BKindex];
            [self BKmenuScrollToCenter:BKindex];
            [self BKmenuUpdateBottomLine:BKindex];
            [self BKmotionChangePage:BKindex];
            self.BKlastIndex = BKindex;
        }
    }
}
#pragma mark - 菜单点击回调 -
- (void)BKitemClickTap:(UIGestureRecognizer *)BKsender{
    NSInteger BKindex = BKsender.view.tag - 10000;
    if (self.BKlastIndex != BKindex) {
        [self BKmenuUpdateStyle:BKindex];
        [self BKmenuScrollToCenter:BKindex];
        [self BKmenuUpdateBottomLine:BKindex];
        [self BKcontentScrollToCenter:BKindex];
        [self BKmotionChangePage:BKindex];
        self.BKlastIndex = BKindex;
    }
}
#pragma mark - 页面切换回调 -
- (void)BKmotionChangePage:(NSInteger)BKindex {
    if (self.BKlastIndex != BKindex) {
        UIViewController<BKMISlideVCDelegate> *BKlastVC = self.BKcontrollers[self.BKlastIndex];
        UIViewController<BKMISlideVCDelegate>  *BKcurrentVC = self.BKcontrollers[BKindex];
        NSNumber *BKvalue = objc_getAssociatedObject(BKcurrentVC, @"lysIsLoad");
        if (![BKvalue boolValue]) {
            if ([BKcurrentVC respondsToSelector:@selector(BKslideMenuController:didViewDidLoad:)]) {
                [BKcurrentVC BKslideMenuController:self didViewDidLoad:BKindex];
            }
            objc_setAssociatedObject(BKcurrentVC, @"lysIsLoad", @(YES), OBJC_ASSOCIATION_ASSIGN);
        }
        if ([BKlastVC respondsToSelector:@selector(BKslideMenuController:viewWillDisappear:)]) {
            [BKlastVC BKslideMenuController:self viewWillDisappear:self.BKlastIndex];
        }
        if ([BKcurrentVC respondsToSelector:@selector(BKslideMenuController:viewWillAppear:)]) {
            [BKcurrentVC BKslideMenuController:self viewWillAppear:BKindex];
        }
        if ([BKlastVC respondsToSelector:@selector(BKslideMenuController:viewDidDisappear:)]) {
            [BKlastVC BKslideMenuController:self viewDidDisappear:self.BKlastIndex];
        }
        if ([BKcurrentVC respondsToSelector:@selector(BKslideMenuController:viewDidAppear:)]) {
            [BKcurrentVC BKslideMenuController:self viewDidAppear:BKindex];
        }
    }else {
        UIViewController<BKMISlideVCDelegate>  *BKcurrentVC = self.BKcontrollers[BKindex];
        if ([BKcurrentVC respondsToSelector:@selector(BKslideMenuController:didViewDidLoad:)]) {
            [BKcurrentVC BKslideMenuController:self didViewDidLoad:BKindex];
        }
        objc_setAssociatedObject(BKcurrentVC, @"lysIsLoad", @(YES), OBJC_ASSOCIATION_ASSIGN);
        if ([BKcurrentVC respondsToSelector:@selector(BKslideMenuController:viewWillAppear:)]) {
            [BKcurrentVC BKslideMenuController:self viewWillAppear:BKindex];
        }
        if ([BKcurrentVC respondsToSelector:@selector(BKslideMenuController:viewDidAppear:)]) {
            [BKcurrentVC BKslideMenuController:self viewDidAppear:BKindex];
        }
    }
}
- (void)BKcontentScrollToCenter:(NSInteger)BKindex {
    CGFloat BKleft = ScreenWidth *BKindex;
    [self.BKcontentScrollView setContentOffset:CGPointMake(BKleft, 0) animated:YES];
}
- (void)BKmenuScrollToCenter:(NSInteger)BKindex{
    CGFloat BKitemWidth = ScreenWidth / self.BKpageNumberOfItem;
    UILabel *BKlabel = self.BKlabelArys[BKindex];
    CGFloat BKleft = BKlabel.center.x - ScreenWidth / 2.0;
    BKleft = BKleft <= 0 ? 0 : BKleft;
    CGFloat BKmaxLeft = BKitemWidth * self.BKtitles.count - ScreenWidth;
    BKleft = BKleft >= BKmaxLeft ? BKmaxLeft : BKleft;
    [self.BKmenuScrollView setContentOffset:CGPointMake(BKleft, 0) animated:YES];
}
- (void)BKmenuUpdateStyle:(NSInteger)BKindex{
    UILabel *BKlastLabel = self.BKlabelArys[self.BKlastIndex];
    BKlastLabel.font = self.BKtitleFont;
    BKlastLabel.textColor = self.BKtitleColor;
    UILabel *BKlabel = self.BKlabelArys[BKindex];
    BKlabel.textColor = self.BKtitleSelectColor;
    BKlabel.font = self.BKtitleSelectFont;
}
- (void)BKmenuUpdateBottomLine:(NSInteger)BKindex{
    if (self.BKshowBottomLine == YES) {
        CGFloat BKitemWidth = ScreenWidth / self.BKpageNumberOfItem;
        [UIView animateWithDuration:0.1 animations:^{
            self.BKbottomLine.frame = CGRectMake((BKindex * BKitemWidth) + ((BKitemWidth - self.BKbottomLineWidth) / 2.0), self.BKmenuHeight - self.BKbottomLineHeight, self.BKbottomLineWidth, self.BKbottomLineHeight);
        }];
    }
}
@end
