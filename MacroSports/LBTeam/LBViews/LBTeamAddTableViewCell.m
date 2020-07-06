//
//  LBTeamAddTableViewCell.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBTeamAddTableViewCell.h"
#import "LBTeamAddViewModel.h"

@interface LBTeamAddTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *LBeditableView;
@property(nonatomic, strong)UILabel *LBtitleLbl;
@property(nonatomic, strong)UILabel *LBhiddenLbl;
@end
@implementation LBTeamAddTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBSetContentView];
        [self LBSetContentLayout];
    }
    return self;
}
#pragma mark - actions
- (void)LBSetContentView{
    self.contentView.backgroundColor = [UIColor systemGreenColor];
    [self.contentView addSubview:self.LBtitleLbl];
    [self.contentView addSubview:self.LBeditableView];
    [self.LBeditableView addSubview:self.LBhiddenLbl];
}
- (void)LBSetContentLayout{
    [self.LBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.width.mas_equalTo(90);
        make.top.equalTo(self.contentView).offset(20);
        make.height.mas_equalTo(24);
    }];
    [self.LBeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(12.5);
        make.leading.equalTo(self.LBtitleLbl.mas_trailing).offset(3);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_greaterThanOrEqualTo(40);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-12.5);
    }];
    [self.LBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.LBeditableView);
        
        make.leading.equalTo(self.LBeditableView).offset(4);
        make.trailing.equalTo(self.LBeditableView);
        make.height.mas_equalTo(40);
    }];
}
- (void)setLBViewModel:(LBTeamAddViewModel *)LBViewModel{
    _LBViewModel = LBViewModel;
    if ([_LBViewModel.LBTitle length]){
        self.LBtitleLbl.text = _LBViewModel.LBTitle;
    }else{
        self.LBtitleLbl.text = @"";
    }
    if ([_LBViewModel.LBDefault length]) {
        self.LBhiddenLbl.text = _LBViewModel.LBDefault;
    } else {
        self.LBhiddenLbl.text = @"";
    }
    if (_LBViewModel.LBContent.length) {
        self.LBeditableView.text = _LBViewModel.LBContent;
        self.LBhiddenLbl.hidden = YES;
    } else {
        self.LBeditableView.text = @"";
        self.LBhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.LBhiddenLbl.hidden = NO;
    } else {
        self.LBhiddenLbl.hidden = YES;
    }
    CGRect LBbounds = textView.bounds;
    CGSize LBsize = [self.LBeditableView sizeThatFits:CGSizeMake(LBbounds.size.width, MAXFLOAT)];
    LBbounds.size = LBsize;
    textView.bounds = LBbounds;
    self.LBViewModel.LBContent = textView.text;
    self.LBcontentHeight = LBsize.height;
    if (self.LBTeamAddTableEditB) {
        self.LBTeamAddTableEditB(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.LBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.LBhiddenLbl.hidden = NO;
    }else{
        self.LBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.LBhiddenLbl.hidden = NO;
    }else{
        self.LBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.LBhiddenLbl.hidden = NO;
    }else{
        self.LBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)LBtitleLbl{
    if (!_LBtitleLbl) {
        _LBtitleLbl = [[UILabel alloc] init];
        _LBtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _LBtitleLbl.textColor = [UIColor blackColor];
    }
    return _LBtitleLbl;
}
- (UILabel *)LBhiddenLbl{
    if (!_LBhiddenLbl) {
        _LBhiddenLbl = [[UILabel alloc] init];
        _LBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:22];
        _LBhiddenLbl.textColor = LBH_Color(207, 207, 207, 1);
    }
    return _LBhiddenLbl;
}
- (UITextView *)LBeditableView{
    if (!_LBeditableView) {
        _LBeditableView = [[UITextView alloc] init];
        _LBeditableView.layer.cornerRadius = 4;
        _LBeditableView.layer.masksToBounds = YES;
        _LBeditableView.backgroundColor = [UIColor whiteColor];
        _LBeditableView.delegate = self;
        _LBeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:22];
        _LBeditableView.textColor = [UIColor blackColor];
        _LBeditableView.scrollEnabled = NO;
        [_LBeditableView sizeToFit];
    }
    return _LBeditableView;
}
@end
