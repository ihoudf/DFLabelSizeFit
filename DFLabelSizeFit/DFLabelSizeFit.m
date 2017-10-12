//
//  UILabel+DFLabelSizeFit.m
//  DFLabelSizeFit
//
//  Created by HDF on 2017/10/9.
//  Copyright © 2017年 HDF. All rights reserved.
//  github:https://github.com/ihoudf/DFLabelSizeFit
//
#import "DFLabelSizeFit.h"

@implementation UILabel (DFLabelSizeFit)
/**
 single line text. the label height you get is the fontsize you set.
 
 @return label
 */
- (UILabel *)df_labelSizeFit
{
    if (self.text.length != 0) {
        CGFloat oldWidth    = self.frame.size.width;
        CGFloat oldY        = self.frame.origin.y;
        CGFloat oldX        = self.frame.origin.x;
        CGFloat pointSize   = self.font.pointSize;
        [self sizeToFit];
        CGFloat newWidth = self.frame.size.width;
        if (self.textAlignment == NSTextAlignmentCenter){
            self.frame = CGRectMake(oldX+(oldWidth-newWidth)/2, oldY, newWidth, pointSize);
        }else if (self.textAlignment == NSTextAlignmentRight){
            self.frame = CGRectMake(oldX+(oldWidth-newWidth), oldY, newWidth, pointSize);
        }else{
            self.frame = CGRectMake(self.frame.origin.x, oldY, newWidth, pointSize);
        }
    }else{
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y,0, 0);
    }
    return self;
}


/**
 Multiline text in one paragraph.
 
 @param lineSpacing lineSpacing
 @param singleLineKeepWidth when single line,keep width you set or get the actual label width.
 @return label
 */
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                        singleLineKeepWidth:(BOOL)singleLineKeepWidth
{
    if (self.text.length == 0) {
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, 0, 0);
        return self;
    }
    CGFloat labelWidth = self.frame.size.width;
    NSTextAlignment textAlignment = self.textAlignment;
    
    NSInteger length = [self.text lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
    length -= (length - self.text.length) / 2;
    length = (length +1) / 2;
    CGFloat textSize = (long)length*self.font.pointSize;
    
    if (textSize >labelWidth || [self.text rangeOfString:@"\n"].location != NSNotFound || [self.text rangeOfString:@"\r"].location != NSNotFound) {
        self.numberOfLines = 0;
        NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:self.text];
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        if (lineSpacing) {
            style.lineSpacing = lineSpacing;
        }
        NSInteger leng = labelWidth;
        if (attStr.length < labelWidth) {
            leng = attStr.length;
        }
        [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, leng)];
        self.attributedText = attStr;
        self.layer.masksToBounds = NO;
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.frame.size.height);
        self.textAlignment = textAlignment;
    }else {
        [self sizeToFit];
        if (singleLineKeepWidth) {
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.font.pointSize);
        }else{
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.font.pointSize);
        }
        self.textAlignment = textAlignment;
    }
    return self;
}

/**
 muti paragraph
 
 @param lineSpacing lineSpacing
 @param paragraphSpacingBefore paragraphSpacingBefore
 @param alignment alignment
 @param isFirstLineHeadIndent isFirstLineHeadIndent
 @return label
 */
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                     paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore
                                  alignment:(NSTextAlignment)alignment
                      isFirstLineHeadIndent:(BOOL)isFirstLineHeadIndent
{
    if (self.text.length == 0) {
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, 0, 0);
        return self;
    }
    CGFloat labelWidth = self.frame.size.width;
    NSTextAlignment textAlignment = self.textAlignment;
    
    NSInteger length = [self.text lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
    length -= (length - self.text.length) / 2;
    length = (length +1) / 2;
    CGFloat textSize = (long)length*self.font.pointSize;
    
    if (textSize >labelWidth || [self.text rangeOfString:@"\n"].location != NSNotFound || [self.text rangeOfString:@"\r"].location != NSNotFound) {
        self.numberOfLines = 0;
        NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:self.text];
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        style.alignment = alignment;
        if (lineSpacing) {style.lineSpacing = lineSpacing;}
        if (paragraphSpacingBefore) {style.paragraphSpacingBefore = paragraphSpacingBefore;}
        if (isFirstLineHeadIndent) {style.firstLineHeadIndent = self.font.pointSize * 2;}
        NSInteger leng = labelWidth;
        if (attStr.length < labelWidth) {
            leng = attStr.length;
        }
        [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, leng)];
        self.attributedText = attStr;
        self.layer.masksToBounds = NO;
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.frame.size.height);
    }else{
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.font.pointSize);
        self.textAlignment = textAlignment;
    }
    return self;
}

@end
