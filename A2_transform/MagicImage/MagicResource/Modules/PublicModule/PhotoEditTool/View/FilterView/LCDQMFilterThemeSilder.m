#import "LCDQMFilterThemeSilder.h"
#import <Masonry.h>
#define kThemeSliderDefaultValue     0.5f
#define kFilterThemeSilderTag        1
@interface LCDQMFilterThemeSilder()
@property (nonatomic, strong) UISlider *LCDslider;
@property (nonatomic, strong) UILabel *LCDsliderLabel;
@end
@implementation LCDQMFilterThemeSilder
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self LCDbuildOneSlider];
        [self setTitle:@"Filter slider"];
    }
    return self;
}
- (void)LCDbuildOneSlider
{
    UISlider *LCDslider = [[UISlider alloc] initWithFrame:CGRectZero];
    LCDslider.tintColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    LCDslider.maximumTrackTintColor = [UIColor whiteColor];
    LCDslider.value = kThemeSliderDefaultValue;
    [LCDslider setTag:kFilterThemeSilderTag];
    self.LCDslider = LCDslider;
    [LCDslider addTarget:self action:@selector(LCDsliderTouchEnd:)
                 forControlEvents:UIControlEventTouchUpInside];
    [LCDslider addTarget:self action:@selector(LCDsliderValueChange:)
                 forControlEvents:UIControlEventValueChanged];
    [self.contentView addSubview:LCDslider];
    [LCDslider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(50);
        make.right.offset(-50);
        make.bottom.offset(-50);
        make.height.mas_equalTo(20);
    }];
    UIView *LCDsliderLabelBg = [[UIView alloc] initWithFrame:CGRectZero];
    LCDsliderLabelBg.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    LCDsliderLabelBg.layer.cornerRadius = 15.0f;
    [self.contentView addSubview:LCDsliderLabelBg];
    [LCDsliderLabelBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(70);
        make.bottom.offset(-80);
        make.height.mas_equalTo(30);
        make.centerX.mas_equalTo(0);
    }];
    UILabel *LCDsliderLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    LCDsliderLabel.textAlignment = NSTextAlignmentCenter;
    LCDsliderLabel.font = [UIFont systemFontOfSize:20];
    LCDsliderLabel.textColor = [UIColor whiteColor];
    LCDsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(LCDslider.value*100)];
    self.LCDsliderLabel = LCDsliderLabel;
    [self.contentView addSubview:LCDsliderLabel];
    [LCDsliderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(100);
        make.bottom.offset(-80);
        make.height.mas_equalTo(30);
        make.centerX.mas_equalTo(0);
    }];
}
#pragma mark - Events
- (void)LCDsliderValueChange:(UISlider *)LCDslider
{
    self.LCDsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(LCDslider.value*100)];
}
- (void)LCDsliderTouchEnd:(UISlider *)LCDslider
{
    self.LCDsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(LCDslider.value*100)];
    if (_LCDsliderValueChangeBlock) {
        _LCDsliderValueChangeBlock(LCDslider.tag, LCDslider.value);
    }
}
#pragma mark - Public
- (void)LCDshowWithValue:(float)LCDvalue
{
    self.LCDslider.value = LCDvalue;
    self.LCDsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(self.LCDslider.value*100)];
    [self show];
}
@end
