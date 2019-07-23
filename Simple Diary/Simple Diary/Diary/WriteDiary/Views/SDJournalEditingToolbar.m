//
//  SDJournalEditingToolbar.m
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDJournalEditingToolbar.h"
#import "SDTextSetView.h"
@interface SDJournalEditingToolbar()
@property(nonatomic, strong)UIView *toolBar;
@property(nonatomic, strong)SDButton *editTextButton;
@property(nonatomic, strong)SDButton *editStyleButton;
@property(nonatomic, strong)SDButton *editPictureButton;
@property(nonatomic, strong)SDButton *editWeatherButton;
@property(nonatomic, strong)SDButton *editLiftButton;
@property(nonatomic, strong)UIView *lineView;
@end
@implementation SDJournalEditingToolbar
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setContentView];
        [self setLayoutView];
        self.isExpand = NO;
        self.contentView.hidden = YES;
    }
    return self;
}
- (void)setContentView{
    [self addSubview:self.toolBar];
    [self.toolBar addSubview:self.editTextButton];
    [self.toolBar addSubview:self.editStyleButton];
    [self.toolBar addSubview:self.editPictureButton];
    [self.toolBar addSubview:self.editWeatherButton];
    [self.toolBar addSubview:self.editLiftButton];
    [self.toolBar addSubview:self.lineView];
    [self addSubview:self.contentView];
}
- (void)setLayoutView{
    CGFloat width = 60.0f;
    CGFloat height = 60.0f;
    CGFloat spacingX = (SDWIDTH - 5 * width) / 6;
    CGFloat spacingY = 15.0f;
    [self.toolBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self);
        make.top.equalTo(self);
        make.width.mas_equalTo(SDWIDTH);
        make.height.mas_equalTo(height + 2 * spacingY);
    }];
    [self.editTextButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.toolBar).offset(spacingX);
        make.top.equalTo(self.toolBar).offset(spacingY);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
    [self.editStyleButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.editTextButton.mas_trailing).offset(spacingX);
        make.top.equalTo(self.toolBar).offset(spacingY);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
    [self.editPictureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.editStyleButton.mas_trailing).offset(spacingX);
        make.top.equalTo(self.toolBar).offset(spacingY);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
    [self.editWeatherButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.editPictureButton.mas_trailing).offset(spacingX);
        make.top.equalTo(self.toolBar).offset(spacingY);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
    [self.editLiftButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.editWeatherButton.mas_trailing).offset(spacingX);
        make.top.equalTo(self.toolBar).offset(spacingY);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.toolBar);
        make.trailing.equalTo(self.toolBar);
        make.bottom.equalTo(self.toolBar);
        make.height.mas_equalTo(1);
    }];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.toolBar);
        make.trailing.equalTo(self.toolBar);
        make.top.equalTo(self.toolBar.mas_bottom);
        make.bottom.equalTo(self);
    }];
}
#pragma mark - actions
- (void)btnClick:(SDButton *)sender{
    if (sender.tag == 100) {
        NSLog(@"编辑字体~~~");
        
    }else if(sender.tag == 101){
        NSLog(@"编辑样式~~~");

    }else if(sender.tag == 102){
        NSLog(@"编辑图片~~~");

    }else if(sender.tag == 103){
        NSLog(@"编辑天气~~~");

    }else if(sender.tag == 104){
        NSLog(@"收起来~~~");
        self.completetype = editingToolbarCompleteTypeLift;
        self.isExpand = !self.isExpand;
        if (self.editingToolbarBlock) {
            self.editingToolbarBlock(self);
        }
    }
}
#pragma mark - 属性懒加载
- (UIView *)toolBar{
    if (!_toolBar) {
        _toolBar = [[UIView alloc] init];
        _toolBar.backgroundColor = SDH_Color(248, 251, 252, 1);
    }
    return _toolBar;
}
- (SDButton *)editTextButton{
    if (!_editTextButton) {
        _editTextButton = [[SDButton alloc] init];
        _editTextButton.tag = 100;
        [_editTextButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editTextButton setImage:[UIImage imageNamed:@"SD_textEdit"] forState:UIControlStateNormal];
    }
    return _editTextButton;
}
- (SDButton *)editStyleButton{
    if (!_editStyleButton) {
        _editStyleButton = [[SDButton alloc] init];
        _editStyleButton.tag = 101;
        [_editStyleButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editStyleButton setImage:[UIImage imageNamed:@"SD_styleEdit"] forState:UIControlStateNormal];
    }
    return _editStyleButton;
}
- (SDButton *)editPictureButton{
    if (!_editPictureButton) {
        _editPictureButton = [[SDButton alloc] init];
        _editPictureButton.tag = 102;
        [_editPictureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editPictureButton setImage:[UIImage imageNamed:@"SD_pictureEdit"] forState:UIControlStateNormal];
    }
    return _editPictureButton;
}
- (SDButton *)editWeatherButton{
    if (!_editWeatherButton) {
        _editWeatherButton = [[SDButton alloc] init];
        _editWeatherButton.tag = 103;
        [_editWeatherButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editWeatherButton setImage:[UIImage imageNamed:@"SD_weatherEdit"] forState:UIControlStateNormal];
    }
    return _editWeatherButton;
}
- (SDButton *)editLiftButton{
    if (!_editLiftButton) {
        _editLiftButton = [[SDButton alloc] init];
        _editLiftButton.tag = 104;
        [_editLiftButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editLiftButton setImage:[UIImage imageNamed:@"SD_liftEdit"] forState:UIControlStateNormal];
    }
    return _editLiftButton;
}
- (UIView *)lineView{
    if (!_lineView) {
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = [UIColor blackColor];
    }
    return _lineView;
}
- (UIView *)contentView{
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
        _contentView.backgroundColor = SDH_Color(242, 242, 242, 1);
        _contentView.alpha = 0.8;
    }
    return _contentView;
}
- (SDTextSetView *)textSetView{
    if (!_textSetView) {
        _textSetView = [[SDTextSetView alloc] init];
    }
    return _textSetView;
}
@end
