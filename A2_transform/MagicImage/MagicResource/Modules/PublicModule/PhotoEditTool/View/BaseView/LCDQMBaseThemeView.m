#import "LCDQMBaseThemeView.h"
#import <Masonry.h>
#define kQMBaseThemeCloseButtonTag      1
#define kQMBaseThemeDoneButtonTag       2
#define kFilterThemeViewDefaultHeight    180
#define kSliderDefaultValue              0.6f
@implementation LCDQMBaseThemeView
- (instancetype)initWithFrame:(CGRect)frame
{
    float LCDheight = [UIScreen mainScreen].bounds.size.height;
    float LCDwidth = [UIScreen mainScreen].bounds.size.width;
    frame = CGRectMake(0, LCDheight, LCDwidth, kFilterThemeViewDefaultHeight);
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundColor:[UIColor colorWithRed:25/255.0 green:25/255.0f blue:25/255.0f alpha:1.0f]];
        [self setHidden:YES];
        [self LCDbuildContentView];
        [self LCDbuildToolBar];
    }
    return self;
}
- (void)LCDbuildContentView
{
    float LCDwidth = [UIScreen mainScreen].bounds.size.width;
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, LCDwidth, kFilterThemeViewDefaultHeight)];
    _contentView.backgroundColor = self.backgroundColor;
    [self addSubview:_contentView];
}
- (void)LCDbuildToolBar
{
    UIView *LCDtopBg = [[UIView alloc] initWithFrame:CGRectZero];
    LCDtopBg.backgroundColor = [UIColor colorWithRed:30/255.0f green:30/255.0f blue:30/255.0f alpha:1.0f];
    [self addSubview:LCDtopBg];
    [LCDtopBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(40);
        make.width.mas_equalTo(self);
        make.top.left.mas_equalTo(0);
    }];
    UIView *LCDslideView = [[UIView alloc] initWithFrame:CGRectZero];
    LCDslideView.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    [self addSubview:LCDslideView];
    [LCDslideView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(100);
        make.top.mas_equalTo(40);
        make.centerX.mas_equalTo(0);
    }];
    UILabel *LCDtitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    LCDtitleLabel.textAlignment = NSTextAlignmentCenter;
    LCDtitleLabel.textColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    self.titleLabel = LCDtitleLabel;
    [self addSubview:LCDtitleLabel];
    [LCDtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(200);
        make.top.mas_equalTo(5);
        make.centerX.mas_equalTo(0);
    }];
    UIButton *LCDcloseBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDcloseBtn setImage:[UIImage imageNamed:@"qmkit_bar_close_btn"] forState:UIControlStateNormal];
    [LCDcloseBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDcloseBtn setTag:kQMBaseThemeCloseButtonTag];
    [self addSubview:LCDcloseBtn];
    [LCDcloseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.left.mas_equalTo(15);
        make.top.mas_equalTo(5);
    }];
    UIButton *LCDokBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDokBtn setImage:[UIImage imageNamed:@"qmkit_bar_ok_btn"] forState:UIControlStateNormal];
    [LCDokBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDokBtn setTag:kQMBaseThemeDoneButtonTag];
    [self addSubview:LCDokBtn];
    [LCDokBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.right.mas_equalTo(-15);
        make.top.mas_equalTo(5);
    }];
}
#pragma mark - Events
- (void)LCDbuttonTapped:(UIButton *)LCDsender
{
    switch (LCDsender.tag) {
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
        float LCDheight = [UIScreen mainScreen].bounds.size.height;
        float LCDwidth = [UIScreen mainScreen].bounds.size.width;
        self.frame = CGRectMake(0, LCDheight-kFilterThemeViewDefaultHeight,LCDwidth, kFilterThemeViewDefaultHeight);
    } completion:NULL];
}
- (void)hide
{
    [UIView animateWithDuration:0.4 animations:^{
        float LCDheight = [UIScreen mainScreen].bounds.size.height;
        float LCDwidth = [UIScreen mainScreen].bounds.size.width;
        self.frame = CGRectMake(0, LCDheight, LCDwidth, kFilterThemeViewDefaultHeight);
    } completion:^(BOOL finished) {
        [self setHidden:YES];
    }];
}
- (void)setTitle:(NSString *)title
{
    self.titleLabel.text = title;
}
@end
