//
//  UILabel+SizeFit.h
//  ShouerHealth
//
//  Created by HDF on 17/3/17.
//  Copyright © 2017年 HDF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SizeFit)

//*****使用这三个方法必须先设置label的frame 和font


/**
 单行。返回label高度为你设置的font的值。

 @return 原label
 */
- (UILabel *)hdf_labelToFitWidth;


//多行宽不变
/**
 一段文字多行。只高度自适应。返回的宽度为你设置的frame的width。（可直接适配单行文字的情况，此时返回的高度是文字的font值）。
 
 @param lineSpacing 行距
 @param keepWidth 文字单行时是保持设置的frame的width还是返回实际的labeldewidth
 @return 原label
 */
- (UILabel *)hdf_labelToFitHeightWithLineSpacing:(CGFloat)lineSpacing
                           isSingleLineKeepWidth:(BOOL)keepWidth;




/**
 多段落设置富文本

 @param lineSpacing 行距
 @param paragraphSpacingBefore 段落之间的间距
 @param alignment 对齐方式
 @param isFirstLineHeadIndent 首行是否缩进两字符
 @return 原label
 */
- (UILabel *)hdf_labelToFitHeightWithLineSpacing:(CGFloat)lineSpacing
                            paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore
                                       alignment:(NSTextAlignment)alignment
                           isFirstLineHeadIndent:(BOOL)isFirstLineHeadIndent;

@end
