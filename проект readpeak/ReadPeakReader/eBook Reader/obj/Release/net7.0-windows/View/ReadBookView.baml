   M S B A M L   `   `   `  ���� C  ?ReadPeak, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:eBook_Reader.ViewModeleBook_Reader.ViewModel  5clr-namespace:eBook_Reader.VieweBook_Reader.View  O,clr-namespace:eBook_Reader.ControlExtensionseBook_Reader.ControlExtensions  A%clr-namespace:eBook_Reader.PropertieseBook_Reader.Properties  $    eBook_Reader.View.ReadBookView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     :	viewmodel$clr-namespace:eBook_Reader.ViewModel     1localclr-namespace:eBook_Reader.View     ;ex,clr-namespace:eBook_Reader.ControlExtensions     _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  6
properties%clr-namespace:eBook_Reader.Properties  -     >�Name$  userControl��.��� ���� 1  +eBook_Reader.Properties.DisplayBookSettings   Default �� Source# Z  �� Path$ BackgroundColor� �� UpdateSourceTrigger$ PropertyChanged=� � RowDefinitions �� $��45 ��� .+�]� ���#e7dbb1$��0�� K� ZIndex$ 1��.+���    BackButtonStyle#���   $��45��$��45��$
��Left=����� *NavigateBackCommand+.���� $,��&/Icons/Back/216437_back_arrow_icon.png��$��5q� �� BitmapScalingMode$ HighQuality=��� -   $��canvas��$ 5��.+��� -   $��settigsButton��#���    �� Right$ 0��$��45��$��45��.���� $��/Icons/settings.png��$��8q�$ HighQuality=��� -   $	��brd��$	��100�����#ede4c4$ 1��
�������	 �� CornerRadius$	 5 0 5 5��$��Center=�$ 0������ 
 �� ElementName$
 userControl��$ ActualWidth�
 �� Top �� $
 settigsButton��$ ActualHeight�._���  �� Orientation$ 
Horizontal=�.+��� $��
10 0 10 10q�$	��110��.+��� $��5q� �� Padding$ 5q�$��15(�$��Center=�$
��Wrap=�$��Line spacing���� $��1��$ 
Horizontal=�$��Center=�.+��� -   $��increaseSpacingButton��#���   $��50��$��40������ *IncreaseLineSpacingCommand+.���� $%��/Icons/ReadingSettings/plus.png���� #���   $��50��$��40������ *DecreaseLineSpacingCommand+.���� $&�� /Icons/ReadingSettings/minus.png���� 	 �� Y1$ 0��	 �� Y2$ 70��$��Center=����#e5d8a9$��2���� $��
10 0 10 10q�$	��130��.+��� $��5q�$ 5q�$��15(�$��Center=�$
��Wrap=�$��Margin width���� $��1��$ 
Horizontal=�$��Center=�.+��� -   $��increaseButton��#���   $��50��$��40������ *IncreaseMarginWidthCommand+.���� $%��/Icons/ReadingSettings/plus.png���� #���   $��50��$��40������ *DecreaseMarginWidthCommand+.���� $&�� /Icons/ReadingSettings/minus.png���� $ 0��$ 70��$��Center=����#e5d8a9$��2���� $��
20 0 20 10q�.+��� $��	Alignment��$
��0 10q�$��15(�$��Center=�$
��Wrap=���   ComboBoxStyle#���  $��0 0 5 5q�$��32��$	��105��$��Center=� �� SelectedItem �� *SelectedAlignment+ �� Mode$ TwoWay=����� *AlignmentParameters+���� .R��� $��23��$��16(�$��75��$��0 0 0 5q�$��Center=����� �� $ 0��$ 70��$��Center=����#e5d8a9$��2���� $��
20 0 20 10q�.+��� $
��Font��$
��0 10q�$��15(�$��Center=�$
��Wrap=��� #���  $��0 0 5 5q�$��32��$	��105��$��Center=� �� *SelectedFont+$ TwoWay=����� *FontParameters+���� .R��� $��23��$��16(�$��75��$��0 0 0 5q�$��Center=����� �� $ 0��$ 70��$��Center=����#e5d8a9$��2���� $ 0��$ 70��$��Center=����#e5d8a9$��2���� $��
20 0 10 10q�.+��� $��Background color��$��0 10 0 8q�$��15(�$��Center=�$
��Wrap=��� $ 
Horizontal=�.+�	�   BackgroundRadioButtonStyle#���  ���#fdf8e8 d� 	IsChecked �� *
FirstColor+$ TwoWay=�$ PropertyChanged=�	� #���  ���#ffffff �� *SecondColor+$ TwoWay=�$ PropertyChanged=�	� #���  ���#f8fad1 �� *
ThirdColor+$ TwoWay=�$ PropertyChanged=�	� #���  ���#e8fdf4 �� *FourthColor+$ TwoWay=�$ PropertyChanged=�-� -   $��flowDocumentReader��$��1��$ 0��
������  -� ViewingMode$ TwoPage=� -� Zoom$ 10Q� -� IsScrollViewEnabled$ False������ *FlowDocumentProperty+
 � Tag �� $ FlowDocumentProperty����� # Z $
 Font�$ PropertyChanged=�