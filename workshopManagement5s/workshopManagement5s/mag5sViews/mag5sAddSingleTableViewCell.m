//
//  mag5sAddSingleTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import "mag5sAddSingleTableViewCell.h"
#import "mag5sAddViewModel.h"
@interface mag5sAddSingleTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UIButton *mag5sselectBtn;
@property(nonatomic, strong)UILabel *mag5stitleLbl;
@property(nonatomic, strong)UITextView *mag5scontentField;
@property(nonatomic, strong)UILabel *mag5splaceholderLbl;
@end
@implementation mag5sAddSingleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.mag5sselectBtn];
        [self.contentView addSubview:self.mag5scontentField];
        [self.contentView addSubview:self.mag5stitleLbl];
        [self.mag5scontentField addSubview:self.mag5splaceholderLbl];
        
        [self.mag5sselectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(26);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(44);
            make.height.mas_equalTo(44);
        }];
        [self.mag5stitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.mag5sselectBtn.mas_trailing);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(102);
            make.height.mas_equalTo(48);
        }];
        [self.mag5scontentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.mag5stitleLbl.mas_trailing);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-5);
            make.height.mas_greaterThanOrEqualTo(48);
        }];
        [self.mag5splaceholderLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.mag5scontentField);
            make.leading.equalTo(self.mag5scontentField).offset(4);
            make.trailing.equalTo(self.mag5scontentField);
            make.height.mas_equalTo(24);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = mag5sH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.mag5scontentField.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(mag5sAddViewModel *)model{
    _model = model;
    self.mag5stitleLbl.text = _model.title;
    self.mag5splaceholderLbl.text = _model.placeholder;
    if (_model.content.length) {
        self.mag5scontentField.text = model.content;
        self.mag5splaceholderLbl.hidden = YES;
    }else{
        self.mag5scontentField.text = @"";
        self.mag5splaceholderLbl.hidden = NO;
    }
    if (_model.isDetail) {
        self.userInteractionEnabled = NO;
        self.mag5stitleLbl.textColor =  [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }else{
        self.userInteractionEnabled = YES;
        self.mag5stitleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
    }
    if (_model.isSelect) {
        [self.mag5sselectBtn setImage:[UIImage imageNamed:@"mag5sbtn_default_active2"] forState:UIControlStateNormal];
    }else{
        [self.mag5sselectBtn setImage:[UIImage imageNamed:@"mag5sbtn_selected_default2"] forState:UIControlStateNormal];
    }
}
#pragma mark - 事件点击
- (void)mag5sselectBtnClick:(UIButton *)sender{
    sender.selected = !sender.selected;
    if (sender.selected) {
        self.model.isSelect = YES;
        [self.mag5sselectBtn setImage:[UIImage imageNamed:@"mag5sbtn_default_active2"] forState:UIControlStateNormal];
    }else{
        self.model.isSelect = NO;
        [self.mag5sselectBtn setImage:[UIImage imageNamed:@"mag5sbtn_selected_default2"] forState:UIControlStateNormal];
        
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [self.mag5scontentField endEditing:YES];
        return NO;
    }
    if ([text isEqualToString:@""]) {
        return YES;
    }
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text || [textView.text isEqualToString:@""]) {
        self.mag5splaceholderLbl.hidden = NO;
    } else {
        self.mag5splaceholderLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.mag5scontentField sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.contentHeight = size.height;
    self.contentString = textView.text;
    self.model.content = textView.text;
    if (self.mag5sAddSingleblock) {
        self.mag5sAddSingleblock(self);
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
        self.mag5splaceholderLbl.hidden = NO;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.mag5splaceholderLbl.hidden = NO;
    }
}
#pragma mark - 属性懒加载
- (UIButton *)mag5sselectBtn{
    if (!_mag5sselectBtn) {
        _mag5sselectBtn = [[UIButton alloc] init];
        [_mag5sselectBtn setImage:[UIImage imageNamed:@"mag5sbtn_selected_default2"] forState:UIControlStateNormal];
        [_mag5sselectBtn addTarget:self action:@selector(mag5sselectBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _mag5sselectBtn;
}
- (UILabel *)mag5stitleLbl{
    if (_mag5stitleLbl == nil) {
        _mag5stitleLbl = [[UILabel alloc] init];
        _mag5stitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _mag5stitleLbl.textColor =  [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _mag5stitleLbl.numberOfLines = 0;
    }
    return _mag5stitleLbl;
}
- (UITextView *)mag5scontentField{
    if (_mag5scontentField == nil) {
        _mag5scontentField = [[UITextView alloc] init];
        _mag5scontentField.delegate = self;
        _mag5scontentField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _mag5scontentField.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _mag5scontentField.scrollEnabled = NO;
        [_mag5scontentField sizeToFit];
    }
    return _mag5scontentField;
}
- (UILabel *)mag5splaceholderLbl{
    if (_mag5splaceholderLbl == nil) {
        _mag5splaceholderLbl = [[UILabel alloc] init];
        _mag5splaceholderLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _mag5splaceholderLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _mag5splaceholderLbl;
}
@end
