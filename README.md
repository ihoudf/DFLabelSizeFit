# LabelSizeAutoFit
一行代码让label自适应宽高。支持设置行距，富文本设置。

<br>
注意:使用这三个方法必须先设置label的frame和font

#### 方法：
<br>
1. 单行。返回label高度为你设置的font的值。<br>

```
- (UILabel *)hdf_labelToFitWidth;
```

<br>
2. 多行。多行宽不变<br>
@param lineSpacing 行距<br>

```
- (UILabel *)hdf_labelToFitHeightWithLineSpacing:(CGFloat)lineSpacing;
```

<br>
3. 多段落设置富文本<br>
 @param lineSpacing 行距<br>
 @param paragraphSpacingBefore 段落之间的间距<br>
 @param alignment 对齐方式<br>
 @param isFirstLineHeadIndent 首行是否缩进两字符<br>
 @return 原label<br>
```
- (UILabel *)hdf_labelToFitHeightWithLineSpacing:(CGFloat)lineSpacing
                          paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore
                                       alignment:(NSTextAlignment)alignment
                           isFirstLineHeadIndent:(BOOL)isFirstLineHeadIndent;
```


#### 效果图：
![](https://github.com/eastcity/LabelSizeFit/blob/master/IMG_4431.PNG?raw=true "")
 





