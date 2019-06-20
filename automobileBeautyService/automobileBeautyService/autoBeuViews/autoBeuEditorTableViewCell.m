//
//  auto4sEditorTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/15.
//  Copyright © 2019 ppb. All rights reserved.
//

#import "autoBeuEditorTableViewCell.h"
#import "autoBeuAddViewModel.h"
@interface autoBeuEditorTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UITextView *contentField;
@property(nonatomic, strong)UILabel *placeLbl;
@end
@implementation autoBeuEditorTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.contentField];
        [self.contentView addSubview:self.titleLbl];
        [self.contentField addSubview:self.placeLbl];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(26);
            make.top.equalTo(self.contentView).offset(23.5);
            make.width.mas_equalTo(102);
            make.height.mas_equalTo(48);
        }];
        [self.contentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(123);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-33.5);
            make.height.mas_greaterThanOrEqualTo(48);
        }];
        [self.placeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentField);
            make.leading.equalTo(self.contentField).offset(4);
            make.trailing.equalTo(self.contentField);
            make.height.mas_equalTo(24);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = auto4sH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.contentField.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(autoBeuAddViewModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    self.placeLbl.text = _model.placeholder;
    if (_model.content.length) {
        self.contentField.text = model.content;
        self.placeLbl.hidden = YES;
    }else{
        self.contentField.text = @"";
        self.placeLbl.hidden = NO;
    }
    if (_model.isDetail) {
        self.userInteractionEnabled = NO;
        self.titleLbl.textColor =  [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }else{
        self.userInteractionEnabled = YES;
        self.titleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [self.contentField endEditing:YES];
        return NO;
    }
    if ([text isEqualToString:@""]) {
        return YES;
    }
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text || [textView.text isEqualToString:@""]) {
        self.placeLbl.hidden = NO;
    } else {
        self.placeLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.contentField sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.contentHeight = size.height;
    self.contentString = textView.text;
    self.model.content = textView.text;
    if (self.editblock) {
        self.editblock(self);
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
        self.placeLbl.hidden = NO;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.placeLbl.hidden = NO;
    }
}
- (UILabel *)titleLbl{
    if (_titleLbl == nil) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _titleLbl.textColor =  [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UITextView *)contentField{
    if (_contentField == nil) {
        _contentField = [[UITextView alloc] init];
        _contentField.delegate = self;
        _contentField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _contentField.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _contentField.scrollEnabled = NO;
        [_contentField sizeToFit];
    }
    return _contentField;
}
- (UILabel *)placeLbl{
    if (_placeLbl == nil) {
        _placeLbl = [[UILabel alloc] init];
        _placeLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _placeLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _placeLbl;
}
@end
