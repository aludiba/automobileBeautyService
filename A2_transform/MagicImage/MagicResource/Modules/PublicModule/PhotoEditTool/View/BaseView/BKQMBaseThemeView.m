#import "BKQMBaseThemeView.h"
#import <Masonry.h>
#define kQMBaseThemeCloseButtonTag      1
#define kQMBaseThemeDoneButtonTag       2
#define kFilterThemeViewDefaultHeight    180
#define kSliderDefaultValue              0.6f
@implementation BKQMBaseThemeView
- (instancetype)initWithFrame:(CGRect)frame
{
    float BKheight = [UIScreen mainScreen].bounds.size.height;
    float BKwidth = [UIScreen mainScreen].bounds.size.width;
    frame = CGRectMake(0, BKheight, BKwidth, kFilterThemeViewDefaultHeight);
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundColor:[UIColor colorWithRed:25/255.0 green:25/255.0f blue:25/255.0f alpha:1.0f]];
        [self setHidden:YES];
        [self BKbuildContentView];
        [self BKbuildToolBar];
    }
    return self;
}
- (void)BKbuildContentView
{
    float BKwidth = [UIScreen mainScreen].bounds.size.width;
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, BKwidth, kFilterThemeViewDefaultHeight)];
    _contentView.backgroundColor = self.backgroundColor;
    [self addSubview:_contentView];
}
- (void)BKbuildToolBar
{
    UIView *BKtopBg = [[UIView alloc] initWithFrame:CGRectZero];
    BKtopBg.backgroundColor = [UIColor colorWithRed:30/255.0f green:30/255.0f blue:30/255.0f alpha:1.0f];
    [self addSubview:BKtopBg];
    [BKtopBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(40);
        make.width.mas_equalTo(self);
        make.top.left.mas_equalTo(0);
    }];
    UIView *BKslideView = [[UIView alloc] initWithFrame:CGRectZero];
    BKslideView.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    [self addSubview:BKslideView];
    [BKslideView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(100);
        make.top.mas_equalTo(40);
        make.centerX.mas_equalTo(0);
    }];
    UILabel *BKtitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    BKtitleLabel.textAlignment = NSTextAlignmentCenter;
    BKtitleLabel.textColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    self.titleLabel = BKtitleLabel;
    [self addSubview:BKtitleLabel];
    [BKtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(200);
        make.top.mas_equalTo(5);
        make.centerX.mas_equalTo(0);
    }];
    UIButton *BKcloseBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKcloseBtn setImage:[UIImage imageNamed:@"qmkit_bar_close_btn"] forState:UIControlStateNormal];
    [BKcloseBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKcloseBtn setTag:kQMBaseThemeCloseButtonTag];
    [self addSubview:BKcloseBtn];
    [BKcloseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.left.mas_equalTo(15);
        make.top.mas_equalTo(5);
    }];
    UIButton *BKokBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKokBtn setImage:[UIImage imageNamed:@"qmkit_bar_ok_btn"] forState:UIControlStateNormal];
    [BKokBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKokBtn setTag:kQMBaseThemeDoneButtonTag];
    [self addSubview:BKokBtn];
    [BKokBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.right.mas_equalTo(-15);
        make.top.mas_equalTo(5);
    }];
}
#pragma mark - Events
- (void)BKbuttonTapped:(UIButton *)BKsender
{
    switch (BKsender.tag) {
        case kQMBaseThemeCloseButtonTag:
            [self hide];
            if (self.closeButtonClickBlock) {
                self.closeButtonClickBlock();
            }
            break;
        case kQMBaseThemeDoneButtonTag:
            [self hide];
            if (self.doneButtonClickBlock) {
                self.doneButtonClickBlock();
            }
            break;
        default:
            break;
    }
}
#pragma mark - PublicMethod
- (void)show
{
    [self setHidden:NO];
    [UIView animateWithDuration:0.4 animations:^{
        float BKheight = [UIScreen mainScreen].bounds.size.height;
        float BKwidth = [UIScreen mainScreen].bounds.size.width;
        self.frame = CGRectMake(0, BKheight-kFilterThemeViewDefaultHeight,BKwidth, kFilterThemeViewDefaultHeight);
    } completion:NULL];
}
- (void)hide
{
    [UIView animateWithDuration:0.4 animations:^{
        float BKheight = [UIScreen mainScreen].bounds.size.height;
        float BKwidth = [UIScreen mainScreen].bounds.size.width;
        self.frame = CGRectMake(0, BKheight, BKwidth, kFilterThemeViewDefaultHeight);
    } completion:^(BOOL finished) {
        [self setHidden:YES];
    }];
}
- (void)setTitle:(NSString *)title
{
    self.titleLabel.text = title;
}
@end
