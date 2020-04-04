//
//  KACargoEditableTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KACargoEditableTableViewCell.h"
#import "KACargoAddViewModel.h"

@interface KACargoEditableTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *KAeditableView;
@property(nonatomic, strong)UILabel *KAtitleLbl;
@property(nonatomic, strong)UILabel *KAhiddenLbl;
@property(nonatomic, strong)UIView *KAline;
@end
@implementation KACargoEditableTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.KAtitleLbl];
        [self.contentView addSubview:self.KAeditableView];
        [self.KAeditableView addSubview:self.KAhiddenLbl];
        [self.contentView addSubview:self.KAline];
        
        [self.KAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(100);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.KAeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12.5);
            
            make.leading.equalTo(self.KAtitleLbl.mas_trailing).offset(8);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(22);
        }];
        [self.KAhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.KAeditableView);
            
            make.leading.equalTo(self.KAeditableView).offset(4);
            make.trailing.equalTo(self.KAeditableView);
            make.height.mas_equalTo(18);
        }];
        [self.KAline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KAeditableView.mas_bottom).offset(11.5);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
    }
    return self;
}
- (void)setKAViewModel:(KACargoAddViewModel *)KAViewModel{
    _KAViewModel = KAViewModel;
    if ([_KAViewModel.KATitle length]){
        self.KAtitleLbl.text = _KAViewModel.KATitle;
    }else{
        self.KAtitleLbl.text = @"";
    }
    if ([_KAViewModel.KADefault length]) {
        self.KAhiddenLbl.text = _KAViewModel.KADefault;
    } else {
        self.KAhiddenLbl.text = @"";
    }
    if (_KAViewModel.KAContent.length) {
        self.KAeditableView.text = _KAViewModel.KAContent;
        self.KAhiddenLbl.hidden = YES;
    } else {
        self.KAeditableView.text = @"";
        self.KAhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.KAhiddenLbl.hidden = NO;
    } else {
        self.KAhiddenLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.KAeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.KAViewModel.KAContent = textView.text;
    self.KAcontentHeight = size.height;
    if (self.KAeditBlock) {
        self.KAeditBlock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.KAhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.KAhiddenLbl.hidden = NO;
    }else{
        self.KAhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.KAhiddenLbl.hidden = NO;
    }else{
        self.KAhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.KAhiddenLbl.hidden = NO;
    }else{
        self.KAhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)KAtitleLbl{
    if (!_KAtitleLbl) {
        _KAtitleLbl = [[UILabel alloc] init];
        _KAtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _KAtitleLbl.textColor = [UIColor blackColor];
    }
    return _KAtitleLbl;
}
- (UILabel *)KAhiddenLbl{
    if (!_KAhiddenLbl) {
        _KAhiddenLbl = [[UILabel alloc] init];
        _KAhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _KAhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _KAhiddenLbl;
}
- (UITextView *)KAeditableView{
    if (!_KAeditableView) {
        _KAeditableView = [[UITextView alloc] init];
        _KAeditableView.delegate = self;
        _KAeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _KAeditableView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _KAeditableView.scrollEnabled = NO;
        [_KAeditableView sizeToFit];
    }
    return _KAeditableView;
}
- (UIView *)KAline{
    if (!_KAline) {
        _KAline = [[UIView alloc] init];
        _KAline.backgroundColor = KAH_Color(226, 228, 232, 1);
    }
    return _KAline;
}

@end
