//
//  SDDiaryStyleViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/8/9.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDDiaryStyleViewController.h"

@interface SDDiaryStyleViewController ()
@property(nonatomic, strong)UILabel *fontLabel;
@property(nonatomic, strong)UILabel *fontMinLabel;
@property(nonatomic, strong)UISlider *fontSlider;//字体调节控件
@property(nonatomic, strong)UILabel *fontMaxLabel;
@property(nonatomic, strong)UILabel *textColorLabel;
@property(nonatomic, strong)UIView *textColorView;
@property(nonatomic, strong)UILabel *textColorRMinLabel;
@property(nonatomic, strong)UISlider *textColorRSlider;
@property(nonatomic, strong)UILabel *textColorRMaxLabel;
@property(nonatomic, strong)UILabel *textColorGMinLabel;
@property(nonatomic, strong)UISlider *textColorGSlider;
@property(nonatomic, strong)UILabel *textColorGMaxLabel;
@property(nonatomic, strong)UILabel *textColorBMinLabel;
@property(nonatomic, strong)UISlider *textColorBSlider;
@property(nonatomic, strong)UILabel *textColorBMaxLabel;
@property(nonatomic, strong)UILabel *themeColorLabel;
@property(nonatomic, strong)UIView *themeColorView;
@property(nonatomic, strong)UILabel *themeColorRMinLabel;
@property(nonatomic, strong)UISlider *themeColorRSlider;
@property(nonatomic, strong)UILabel *themeColorRMaxLabel;
@property(nonatomic, strong)UILabel *themeColorGMinLabel;
@property(nonatomic, strong)UISlider *themeColorGSlider;
@property(nonatomic, strong)UILabel *themeColorGMaxLabel;
@property(nonatomic, strong)UILabel *themeColorBMinLabel;
@property(nonatomic, strong)UISlider *themeColorBSlider;
@property(nonatomic, strong)UILabel *themeColorBMaxLabel;
@property(nonatomic, strong)UIButton *completeButton;
@end

@implementation SDDiaryStyleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"日记样式", nil);
    [self setContent];
}
- (void)setContent{
    [self.view addSubview:self.fontLabel];
    [self.view addSubview:self.fontMinLabel];
    [self.view addSubview:self.fontSlider];
    [self.view addSubview:self.fontMaxLabel];
    [self.view addSubview:self.textColorLabel];
    [self.view addSubview:self.textColorView];
    [self.view addSubview:self.textColorRMinLabel];
    [self.view addSubview:self.textColorRSlider];
    [self.view addSubview:self.textColorRMaxLabel];
    [self.view addSubview:self.textColorGMinLabel];
    [self.view addSubview:self.textColorGSlider];
    [self.view addSubview:self.textColorGMaxLabel];
    [self.view addSubview:self.textColorBMinLabel];
    [self.view addSubview:self.textColorBSlider];
    [self.view addSubview:self.textColorBMaxLabel];
    [self.view addSubview:self.themeColorLabel];
    [self.view addSubview:self.themeColorView];
    [self.view addSubview:self.themeColorRMinLabel];
    [self.view addSubview:self.themeColorRSlider];
    [self.view addSubview:self.themeColorRMaxLabel];
    [self.view addSubview:self.themeColorGMinLabel];
    [self.view addSubview:self.themeColorGSlider];
    [self.view addSubview:self.themeColorGMaxLabel];
    [self.view addSubview:self.themeColorBMinLabel];
    [self.view addSubview:self.themeColorBSlider];
    [self.view addSubview:self.themeColorBMaxLabel];
    
    [self.fontLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(42);
    }];
    [self.fontMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fontLabel.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.fontSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fontLabel.mas_bottom).offset(15);
        make.leading.equalTo(self.fontMinLabel.mas_trailing).offset(15);
        make.trailing.equalTo(self.fontMaxLabel.mas_leading).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.fontMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fontLabel.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.textColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fontSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(21);
    }];
    [self.textColorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.textColorLabel);
        make.leading.equalTo(self.textColorLabel.mas_trailing).offset(10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(21);
    }];
    [self.textColorRMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.textColorRSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorView.mas_bottom).offset(15);
        make.leading.equalTo(self.textColorRMinLabel.mas_trailing).offset(15);
        make.trailing.equalTo(self.textColorRMaxLabel.mas_leading).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.textColorRMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.textColorGMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorRSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.textColorGSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorRSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.textColorGMinLabel.mas_trailing).offset(15);
        make.trailing.equalTo(self.textColorGMaxLabel.mas_leading).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.textColorGMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorRSlider.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.textColorBMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorGSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.textColorBSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorGSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.textColorBMinLabel.mas_trailing).offset(15);
        make.trailing.equalTo(self.textColorBMaxLabel.mas_leading).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.textColorBMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorGSlider.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.themeColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorBSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.themeColorLabel);
        make.leading.equalTo(self.textColorLabel.mas_trailing).offset(10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorRMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.themeColorRSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorView.mas_bottom).offset(15);
        make.leading.equalTo(self.themeColorRMinLabel.mas_trailing).offset(15);
        make.trailing.equalTo(self.themeColorRMaxLabel.mas_leading).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorRMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.themeColorGMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorRSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.themeColorGSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorRSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.themeColorGMinLabel.mas_trailing).offset(15);
        make.trailing.equalTo(self.themeColorGMaxLabel.mas_leading).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorGMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorRSlider.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.themeColorBMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorGSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
    [self.themeColorBSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorGSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.themeColorBMinLabel.mas_trailing).offset(15);
        make.trailing.equalTo(self.themeColorBMaxLabel.mas_leading).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorBMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorGSlider.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
    }];
}
- (void)SD_setupNavigationItems{
    [super SD_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *completeItem = [[UIBarButtonItem alloc] initWithCustomView:self.completeButton];
    self.navigationItem.rightBarButtonItem = completeItem;
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    CGFloat fontsize = self.fontSlider.value;
    NSNumber *fontSize = [NSNumber numberWithFloat:fontsize];
    [[NSUserDefaults standardUserDefaults] setObject:fontSize forKey:FONTSIZE];
    
    NSInteger textR = (int)round(self.textColorRSlider.value);
    NSInteger textG = (int)round(self.textColorGSlider.value);
    NSInteger textB = (int)round(self.textColorBSlider.value);
    NSDictionary *dic = @{@"R":[NSNumber numberWithInteger:textR],@"G":[NSNumber numberWithInteger:textG],@"B":[NSNumber numberWithInteger:textB]};
    [[NSUserDefaults standardUserDefaults] setObject:dic forKey:FONTRGB];

    NSInteger themeR = (int)round(self.themeColorRSlider.value);
    NSInteger themeG = (int)round(self.themeColorGSlider.value);
    NSInteger themeB = (int)round(self.themeColorBSlider.value);
    NSDictionary *dic1 = @{@"R":[NSNumber numberWithInteger:themeR],@"G":[NSNumber numberWithInteger:themeG],@"B":[NSNumber numberWithInteger:themeB]};
    [[NSUserDefaults standardUserDefaults] setObject:dic1 forKey:THEMERGB];
    [MBProgressHUD SDshowReminderText:NSLocalizedString(@"保存成功", nil)];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)sliderValueChanged:(UISlider *)slider{
    if (slider.tag == 100) {
        CGFloat fontsize = slider.value;
        self.fontLabel.text = [NSString stringWithFormat:@"%@ %ld",NSLocalizedString(@"字体大小", nil),(int)round(fontsize)];
    }else if (slider.tag == 101){
        NSInteger textR = (int)round(self.textColorRSlider.value);
        NSInteger textG = (int)round(self.textColorGSlider.value);
        NSInteger textB = (int)round(self.textColorBSlider.value);
        self.textColorView.backgroundColor = SDH_Color(textR, textG, textB, 1);
    }else if (slider.tag == 102){
        NSInteger textR = (int)round(self.textColorRSlider.value);
        NSInteger textG = (int)round(self.textColorGSlider.value);
        NSInteger textB = (int)round(self.textColorBSlider.value);
        self.textColorView.backgroundColor = SDH_Color(textR, textG, textB, 1);
    }else if (slider.tag == 103){
        NSInteger textR = (int)round(self.textColorRSlider.value);
        NSInteger textG = (int)round(self.textColorGSlider.value);
        NSInteger textB = (int)round(self.textColorBSlider.value);
        self.textColorView.backgroundColor = SDH_Color(textR, textG, textB, 1);
    }else if (slider.tag == 104){
        NSInteger themeR = (int)round(self.themeColorRSlider.value);
        NSInteger themeG = (int)round(self.themeColorGSlider.value);
        NSInteger themeB = (int)round(self.themeColorBSlider.value);
        self.themeColorView.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
    }else if (slider.tag == 105){
        NSInteger themeR = (int)round(self.themeColorRSlider.value);
        NSInteger themeG = (int)round(self.themeColorGSlider.value);
        NSInteger themeB = (int)round(self.themeColorBSlider.value);
        self.themeColorView.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
    }else if (slider.tag == 106){
        NSInteger themeR = (int)round(self.themeColorRSlider.value);
        NSInteger themeG = (int)round(self.themeColorGSlider.value);
        NSInteger themeB = (int)round(self.themeColorBSlider.value);
        self.themeColorView.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)fontLabel{
    if (!_fontLabel) {
        _fontLabel = [[UILabel alloc] init];
        _fontLabel.textColor = [UIColor blackColor];
        NSNumber *fontSize = [[NSUserDefaults standardUserDefaults] objectForKey:FONTSIZE];
        CGFloat fontsize = 17;
        if (fontSize) {
            fontsize = [fontSize floatValue];
        }
        _fontLabel.text = [NSString stringWithFormat:@"%@ %ld",NSLocalizedString(@"字体大小", nil),(int)round(fontsize)];
        _fontLabel.font = [UIFont systemFontOfSize:fontsize];
        [_fontLabel sizeToFit];
        _fontLabel.numberOfLines = 0;
    }
    return _fontLabel;
}
- (UILabel *)fontMinLabel{
    if (!_fontMinLabel) {
        _fontMinLabel = [[UILabel alloc] init];
        _fontMinLabel.textColor = [UIColor blackColor];
        _fontMinLabel.font = [UIFont systemFontOfSize:12];
        _fontMinLabel.text = @"10";
    }
    return _fontMinLabel;
}
- (UISlider *)fontSlider{
    if (!_fontSlider) {
        _fontSlider = [[UISlider alloc] init];
        _fontSlider.tag = 100;
        _fontSlider.minimumValue = 10.0;
        _fontSlider.maximumValue = 40.0;
        NSNumber *fontSize = [[NSUserDefaults standardUserDefaults] objectForKey:FONTSIZE];
        CGFloat fontsize = 17;
        if (fontSize) {
            fontsize = [fontSize floatValue];
        }
        _fontSlider.value = fontsize;
        [_fontSlider setContinuous:YES];
        [_fontSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _fontSlider;
}
- (UILabel *)fontMaxLabel{
    if (!_fontMaxLabel) {
        _fontMaxLabel = [[UILabel alloc] init];
        _fontMaxLabel.textColor = [UIColor blackColor];
        _fontMaxLabel.font = [UIFont systemFontOfSize:12];
        _fontMaxLabel.text = @"40";
    }
    return _fontMaxLabel;
}
- (UILabel *)textColorLabel{
    if (!_textColorLabel) {
        _textColorLabel = [[UILabel alloc] init];
        _textColorLabel.textColor = [UIColor blackColor];
        _textColorLabel.text = NSLocalizedString(@"字体颜色", nil);
        _textColorLabel.font = [UIFont systemFontOfSize:17];
    }
    return _textColorLabel;
}
- (UIView *)textColorView{
    if (!_textColorView) {
        _textColorView = [[UIView alloc] init];
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        NSInteger R = [[textColorDic objectForKey:@"R"] integerValue];
        NSInteger G = [[textColorDic objectForKey:@"G"] integerValue];
        NSInteger B = [[textColorDic objectForKey:@"B"] integerValue];
        _textColorView.backgroundColor = SDH_Color(R, G, B, 1);
    }
    return _textColorView;
}
- (UILabel *)textColorRMinLabel{
    if (!_textColorRMinLabel) {
        _textColorRMinLabel = [[UILabel alloc] init];
        _textColorRMinLabel.textColor = [UIColor blackColor];
        _textColorRMinLabel.font = [UIFont systemFontOfSize:12];
        _textColorRMinLabel.text = @"0";
    }
    return _textColorRMinLabel;
}
- (UISlider *)textColorRSlider{
    if (!_textColorRSlider) {
        _textColorRSlider = [[UISlider alloc] init];
        _textColorRSlider.tag = 101;
        _textColorRSlider.minimumValue = 0;
        _textColorRSlider.maximumValue = 255;
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        NSInteger R = [[textColorDic objectForKey:@"R"] integerValue];
        _textColorRSlider.value = R;
        [_textColorRSlider setContinuous:YES];
        [_textColorRSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _textColorRSlider;
}
- (UILabel *)textColorRMaxLabel{
    if (!_textColorRMaxLabel) {
        _textColorRMaxLabel = [[UILabel alloc] init];
        _textColorRMaxLabel.textColor = [UIColor blackColor];
        _textColorRMaxLabel.font = [UIFont systemFontOfSize:12];
        _textColorRMaxLabel.text = @"255";
    }
    return _textColorRMaxLabel;
}
- (UILabel *)textColorGMinLabel{
    if (!_textColorGMinLabel) {
        _textColorGMinLabel = [[UILabel alloc] init];
        _textColorGMinLabel.textColor = [UIColor blackColor];
        _textColorGMinLabel.font = [UIFont systemFontOfSize:12];
        _textColorGMinLabel.text = @"0";
    }
    return _textColorGMinLabel;
}
- (UISlider *)textColorGSlider{
    if (!_textColorGSlider) {
        _textColorGSlider = [[UISlider alloc] init];
        _textColorGSlider.tag = 102;
        _textColorGSlider.minimumValue = 0;
        _textColorGSlider.maximumValue = 255;
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        NSInteger G = [[textColorDic objectForKey:@"G"] integerValue];
        _textColorGSlider.value = G;
        [_textColorGSlider setContinuous:YES];
        [_textColorGSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _textColorGSlider;
}
- (UILabel *)textColorGMaxLabel{
    if (!_textColorGMaxLabel) {
        _textColorGMaxLabel = [[UILabel alloc] init];
        _textColorGMaxLabel.textColor = [UIColor blackColor];
        _textColorGMaxLabel.font = [UIFont systemFontOfSize:12];
        _textColorGMaxLabel.text = @"255";
    }
    return _textColorGMaxLabel;
}
- (UILabel *)textColorBMinLabel{
    if (!_textColorBMinLabel) {
        _textColorBMinLabel = [[UILabel alloc] init];
        _textColorBMinLabel.textColor = [UIColor blackColor];
        _textColorBMinLabel.font = [UIFont systemFontOfSize:12];
        _textColorBMinLabel.text = @"0";
    }
    return _textColorBMinLabel;
}
- (UISlider *)textColorBSlider{
    if (!_textColorBSlider) {
        _textColorBSlider = [[UISlider alloc] init];
        _textColorBSlider.tag = 103;
        _textColorBSlider.minimumValue = 0;
        _textColorBSlider.maximumValue = 255;
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        NSInteger B = [[textColorDic objectForKey:@"B"] integerValue];
        _textColorBSlider.value = B;
        [_textColorBSlider setContinuous:YES];
        [_textColorBSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _textColorBSlider;
}
- (UILabel *)textColorBMaxLabel{
    if (!_textColorBMaxLabel) {
        _textColorBMaxLabel = [[UILabel alloc] init];
        _textColorBMaxLabel.textColor = [UIColor blackColor];
        _textColorBMaxLabel.font = [UIFont systemFontOfSize:12];
        _textColorBMaxLabel.text = @"255";
    }
    return _textColorBMaxLabel;
}
- (UILabel *)themeColorLabel{
    if (!_themeColorLabel) {
        _themeColorLabel = [[UILabel alloc] init];
        _themeColorLabel.textColor = [UIColor blackColor];
        _themeColorLabel.text = NSLocalizedString(@"主题颜色", nil);
        _themeColorLabel.font = [UIFont systemFontOfSize:17];
    }
    return _themeColorLabel;
}
- (UIView *)themeColorView{
    if (!_themeColorView) {
        _themeColorView = [[UIView alloc] init];
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        NSInteger R = [[themeColorDic objectForKey:@"R"] integerValue];
        NSInteger G = [[themeColorDic objectForKey:@"G"] integerValue];
        NSInteger B = [[themeColorDic objectForKey:@"B"] integerValue];
        _themeColorView.backgroundColor = SDH_Color(R, G, B, 1);
    }
    return _themeColorView;
}
- (UILabel *)themeColorRMinLabel{
    if (!_themeColorRMinLabel) {
        _themeColorRMinLabel = [[UILabel alloc] init];
        _themeColorRMinLabel.textColor = [UIColor blackColor];
        _themeColorRMinLabel.font = [UIFont systemFontOfSize:12];
        _themeColorRMinLabel.text = @"0";
    }
    return _themeColorRMinLabel;
}
- (UISlider *)themeColorRSlider{
    if (!_themeColorRSlider) {
        _themeColorRSlider = [[UISlider alloc] init];
        _themeColorRSlider.tag = 104;
        _themeColorRSlider.minimumValue = 0;
        _themeColorRSlider.maximumValue = 255;
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        NSInteger R = [[themeColorDic objectForKey:@"R"] integerValue];
        _themeColorRSlider.value = R;
        [_themeColorRSlider setContinuous:YES];
        [_themeColorRSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _themeColorRSlider;
}
- (UILabel *)themeColorRMaxLabel{
    if (!_themeColorRMaxLabel) {
        _themeColorRMaxLabel = [[UILabel alloc] init];
        _themeColorRMaxLabel.textColor = [UIColor blackColor];
        _themeColorRMaxLabel.font = [UIFont systemFontOfSize:12];
        _themeColorRMaxLabel.text = @"255";
    }
    return _themeColorRMaxLabel;
}
- (UILabel *)themeColorGMinLabel{
    if (!_themeColorGMinLabel) {
        _themeColorGMinLabel = [[UILabel alloc] init];
        _themeColorGMinLabel.textColor = [UIColor blackColor];
        _themeColorGMinLabel.font = [UIFont systemFontOfSize:12];
        _themeColorGMinLabel.text = @"0";
    }
    return _themeColorGMinLabel;
}
- (UISlider *)themeColorGSlider{
    if (!_themeColorGSlider) {
        _themeColorGSlider = [[UISlider alloc] init];
        _themeColorGSlider.tag = 105;
        _themeColorGSlider.minimumValue = 0;
        _themeColorGSlider.maximumValue = 255;
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        NSInteger G = [[themeColorDic objectForKey:@"G"] integerValue];
        _themeColorGSlider.value = G;
        [_themeColorGSlider setContinuous:YES];
        [_themeColorGSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _themeColorGSlider;
}
- (UILabel *)themeColorGMaxLabel{
    if (!_themeColorGMaxLabel) {
        _themeColorGMaxLabel = [[UILabel alloc] init];
        _themeColorGMaxLabel.textColor = [UIColor blackColor];
        _themeColorGMaxLabel.font = [UIFont systemFontOfSize:12];
        _themeColorGMaxLabel.text = @"255";
    }
    return _themeColorGMaxLabel;
}
- (UILabel *)themeColorBMinLabel{
    if (!_themeColorBMinLabel) {
        _themeColorBMinLabel = [[UILabel alloc] init];
        _themeColorBMinLabel.textColor = [UIColor blackColor];
        _themeColorBMinLabel.font = [UIFont systemFontOfSize:12];
        _themeColorBMinLabel.text = @"0";
    }
    return _themeColorBMinLabel;
}
- (UISlider *)themeColorBSlider{
    if (!_themeColorBSlider) {
        _themeColorBSlider = [[UISlider alloc] init];
        _themeColorBSlider.tag = 106;
        _themeColorBSlider.minimumValue = 0;
        _themeColorBSlider.maximumValue = 255;
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        NSInteger B = [[themeColorDic objectForKey:@"B"] integerValue];
        _themeColorBSlider.value = B;
        [_themeColorBSlider setContinuous:YES];
        [_themeColorBSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _themeColorBSlider;
}
- (UILabel *)themeColorBMaxLabel{
    if (!_themeColorBMaxLabel) {
        _themeColorBMaxLabel = [[UILabel alloc] init];
        _themeColorBMaxLabel.textColor = [UIColor blackColor];
        _themeColorBMaxLabel.font = [UIFont systemFontOfSize:12];
        _themeColorBMaxLabel.text = @"255";
    }
    return _themeColorBMaxLabel;
}
- (UIButton *)completeButton{
    if (!_completeButton) {
        _completeButton = [[UIButton alloc] init];
        _completeButton.tag = 100;
        [_completeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_completeButton setImage:[UIImage imageNamed:@"SD_complete"] forState:UIControlStateNormal];
    }
    return _completeButton;
}
@end
