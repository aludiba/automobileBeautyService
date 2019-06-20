//
//  auto4sAddMoreTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import "autoBeuAddMoreTableViewCell.h"
#import "autoBeuAddViewModel.h"
#import "autoBeuSwitchView.h"
@interface autoBeuAddMoreTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UIButton *autoBeuselectBtn;
@property(nonatomic, strong)UILabel *autoBeutitleLbl;
@property(nonatomic, strong)UITextView *autoBeucontentField;
@property(nonatomic, strong)UILabel *autoBeuplaceholderLbl;
@property(nonatomic, strong)NSMutableArray *switchArray;
@end

@implementation autoBeuAddMoreTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.autoBeuselectBtn];
        [self.contentView addSubview:self.autoBeucontentField];
        [self.contentView addSubview:self.autoBeutitleLbl];
        [self.autoBeucontentField addSubview:self.autoBeuplaceholderLbl];
        
        [self.autoBeuselectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(26);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(44);
            make.height.mas_equalTo(44);
        }];
        [self.autoBeutitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.autoBeuselectBtn.mas_trailing);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(102);
            make.height.mas_equalTo(48);
        }];
        [self.autoBeucontentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.autoBeutitleLbl.mas_trailing);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-5);
            make.height.mas_greaterThanOrEqualTo(48);
        }];
        [self.autoBeuplaceholderLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.autoBeucontentField);
            make.leading.equalTo(self.autoBeucontentField).offset(4);
            make.trailing.equalTo(self.autoBeucontentField);
            make.height.mas_equalTo(24);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = auto4sH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.autoBeucontentField.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(autoBeuAddViewModel *)model{
    _model = model;
    CGFloat startX = 172;
    CGFloat startY = 15.5;
    CGFloat buttonHeight = 40;
    for (autoBeuSwitchView *switchV in self.switchArray) {
        [switchV removeFromSuperview];
        switchV.hidden = YES;
    }
    for (int i = 0; i < _model.switchTitlesArray.count; i++) {
        autoBeuSwitchView *switchV = [[autoBeuSwitchView alloc] init];
        switchV.tag = 1000 + i;
        [self.switchArray addObject:switchV];
        [self.contentView addSubview:switchV];
        switchV.autoBeuDictionary = _model.switchTitlesArray[i];
        CGSize size = [switchV.autoBeutitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, buttonHeight)];
        CGFloat W = size.width + 57;
        if(startX + W + 25 > [UIScreen mainScreen].bounds.size.width){
            startX = 172;
            startY = startY + buttonHeight + 5;
        }
        if (W + startX + 25 > [UIScreen mainScreen].bounds.size.width) {
            W = [UIScreen mainScreen].bounds.size.width - startX - 10;
        }
        [switchV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(startY);
            make.leading.equalTo(self.contentView).offset(startX);
            make.width.mas_equalTo(W);
            make.height.mas_equalTo(buttonHeight);
        }];
        startX = startX + W;
    }
    [self.autoBeucontentField mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(startY + buttonHeight + 5);
    }];
    [self.autoBeucontentField layoutIfNeeded];
    [self.contentView layoutSubviews];
    _model.switchsArray = self.switchArray;
    
    self.autoBeutitleLbl.text = _model.title;
    self.autoBeuplaceholderLbl.text = _model.placeholder;
    if (_model.content.length) {
        self.autoBeucontentField.text = model.content;
        self.autoBeuplaceholderLbl.hidden = YES;
    }else{
        self.autoBeucontentField.text = @"";
        self.autoBeuplaceholderLbl.hidden = NO;
    }
    if (_model.isDetail) {
        self.userInteractionEnabled = NO;
        self.autoBeutitleLbl.textColor =  [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }else{
        self.userInteractionEnabled = YES;
        self.autoBeutitleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
    }
    if (_model.isSelect) {
        [self.autoBeuselectBtn setImage:[UIImage imageNamed:@"autoBeubtn_default_active2"] forState:UIControlStateNormal];
    }else{
        [self.autoBeuselectBtn setImage:[UIImage imageNamed:@"autoBeubtn_selected_default2"] forState:UIControlStateNormal];
    }
}
#pragma mark - 事件点击
- (void)autoBeuselectBtnClick:(UIButton *)sender{
    sender.selected = !sender.selected;
    if (sender.selected) {
        self.model.isSelect = YES;
        [self.autoBeuselectBtn setImage:[UIImage imageNamed:@"autoBeubtn_default_active2"] forState:UIControlStateNormal];
    }else{
        self.model.isSelect = NO;
        [self.autoBeuselectBtn setImage:[UIImage imageNamed:@"autoBeubtn_selected_default2"] forState:UIControlStateNormal];
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [self.autoBeucontentField endEditing:YES];
        return NO;
    }
    if ([text isEqualToString:@""]) {
        return YES;
    }
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text || [textView.text isEqualToString:@""]) {
        self.autoBeuplaceholderLbl.hidden = NO;
    } else {
        self.autoBeuplaceholderLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.autoBeucontentField sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.contentHeight = size.height;
    self.contentString = textView.text;
    self.model.content = textView.text;
    if (self.autoBeuAddMoreblock) {
        self.autoBeuAddMoreblock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.autoBeuplaceholderLbl.hidden = NO;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.autoBeuplaceholderLbl.hidden = NO;
    }
}
#pragma mark - 属性懒加载
- (UIButton *)autoBeuselectBtn{
    if (!_autoBeuselectBtn) {
        _autoBeuselectBtn = [[UIButton alloc] init];
        [_autoBeuselectBtn setImage:[UIImage imageNamed:@"autoBeubtn_selected_default2"] forState:UIControlStateNormal];
        [_autoBeuselectBtn addTarget:self action:@selector(autoBeuselectBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _autoBeuselectBtn;
}
- (UILabel *)autoBeutitleLbl{
    if (_autoBeutitleLbl == nil) {
        _autoBeutitleLbl = [[UILabel alloc] init];
        _autoBeutitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _autoBeutitleLbl.textColor =  [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _autoBeutitleLbl.numberOfLines = 0;
    }
    return _autoBeutitleLbl;
}
- (UITextView *)autoBeucontentField{
    if (_autoBeucontentField == nil) {
        _autoBeucontentField = [[UITextView alloc] init];
        _autoBeucontentField.delegate = self;
        _autoBeucontentField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _autoBeucontentField.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _autoBeucontentField.scrollEnabled = NO;
        [_autoBeucontentField sizeToFit];
    }
    return _autoBeucontentField;
}
- (UILabel *)autoBeuplaceholderLbl{
    if (_autoBeuplaceholderLbl == nil) {
        _autoBeuplaceholderLbl = [[UILabel alloc] init];
        _autoBeuplaceholderLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _autoBeuplaceholderLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _autoBeuplaceholderLbl;
}
- (NSMutableArray *)switchArray{
    if (!_switchArray) {
        _switchArray = [[NSMutableArray alloc] init];
    }
    return _switchArray;
}
@end
