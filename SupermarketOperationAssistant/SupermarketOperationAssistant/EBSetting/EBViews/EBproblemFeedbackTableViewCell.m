//
//  EBproblemFeedbackTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. EBl rights reserved.
//

#import "EBproblemFeedbackTableViewCell.h"
#import "EBPurchaseStatusAddModel.h"

@interface EBproblemFeedbackTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *EBeditableView;
@property(nonatomic, strong)UILabel *EBtitleLbl;
@property(nonatomic, strong)UILabel *EBhiddenLbl;
@end
@implementation EBproblemFeedbackTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.EBtitleLbl];
        [self.contentView addSubview:self.EBeditableView];
        [self.EBeditableView addSubview:self.EBhiddenLbl];
        
        [self.EBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.EBeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBtitleLbl.mas_bottom).offset(15);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(110);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-12.5);
        }];
        [self.EBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBeditableView).offset(6);
            
            make.leading.equalTo(self.EBeditableView).offset(6);
            make.trailing.equalTo(self.EBeditableView).offset(-6);
            make.height.mas_equalTo(18);
        }];
    }
    return self;
}
- (void)setEBViewModel:(EBPurchaseStatusAddModel *)EBViewModel{
    _EBViewModel = EBViewModel;
    if ([_EBViewModel.EBTitle length]){
        self.EBtitleLbl.text = _EBViewModel.EBTitle;
    }else{
        self.EBtitleLbl.text = @"";
    }
    if ([_EBViewModel.EBDefault length]) {
        self.EBhiddenLbl.text = _EBViewModel.EBDefault;
    } else {
        self.EBhiddenLbl.text = @"";
    }
    if (_EBViewModel.EBContent.length) {
        self.EBeditableView.text = _EBViewModel.EBContent;
        self.EBhiddenLbl.hidden = YES;
    } else {
        self.EBeditableView.text = @"";
        self.EBhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.EBhiddenLbl.hidden = NO;
    } else {
        self.EBhiddenLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.EBeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.EBViewModel.EBContent = textView.text;
    self.EBcontentHeight = size.height;
    if (self.EBcontentHeight > 110) {
        if (self.EBeditBlock) {
            self.EBeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.EBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.EBhiddenLbl.hidden = NO;
    }else{
        self.EBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.EBhiddenLbl.hidden = NO;
    }else{
        self.EBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.EBhiddenLbl.hidden = NO;
    }else{
        self.EBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)EBtitleLbl{
    if (!_EBtitleLbl) {
        _EBtitleLbl = [[UILabel alloc] init];
        _EBtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:19];
        _EBtitleLbl.textColor = [UIColor orangeColor];
    }
    return _EBtitleLbl;
}
- (UILabel *)EBhiddenLbl{
    if (!_EBhiddenLbl) {
        _EBhiddenLbl = [[UILabel alloc] init];
        _EBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _EBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _EBhiddenLbl;
}
- (UITextView *)EBeditableView{
    if (!_EBeditableView) {
        _EBeditableView = [[UITextView alloc] init];
        _EBeditableView.delegate = self;
        _EBeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:21];
        _EBeditableView.textColor = [UIColor blackColor];
        _EBeditableView.layer.cornerRadius = 16.0f;
        _EBeditableView.layer.masksToBounds = YES;
        _EBeditableView.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _EBeditableView.layer.borderWidth = 1.5f;
        _EBeditableView.scrollEnabled = NO;
        [_EBeditableView sizeToFit];
    }
    return _EBeditableView;
}
@end
