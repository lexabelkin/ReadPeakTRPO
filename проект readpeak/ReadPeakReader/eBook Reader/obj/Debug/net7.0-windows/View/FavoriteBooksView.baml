   M S B A M L   `   `   `  ����G  CeBook Reader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:eBook_Reader.VieweBook_Reader.View  5      ?$clr-namespace:eBook_Reader.ViewModeleBook_Reader.ViewModel  5      )    #eBook_Reader.View.FavoriteBooksView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:eBook_Reader.View     5      :	viewmodel$clr-namespace:eBook_Reader.ViewModel     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5        � 	Resources  5         listPanelTemplate � Orientation��%H   &	        �� 5   
   .R�5      � $ 
Horizontal=�6   5      5      .��5      � ���#fdf8e8 � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ]� $��0��6   $��45��6!   ���#e7dbb1.+�5      �� $��Right=�6   $��Bottom=�5      $��Right=�5       �� Orientation$ 
Horizontal=�5      $��5q�62   .+�5       ��   ComboBoxStyle#���  6   $��0 0 5 5q�5"      $��30��5#      $	��105��6'   $��Center=�5$       �� SelectedItem 5!      �� *SelectedSortParameter+ �� Mode$ TwoWay=���5%      �� *SortParameters+��5&      �� 5'      .R�5(      �� $ 
Horizontal=�6)   $��30��5)   )   .+�5*   "   �� $��16(�5+   ,   $��75��6:   $��0 0 0 5q�5,   ,   $��Center=�5-   ,   ��5*   ,   �� *Name+5-   ,   �� 5.   "   $��20��5/   (   $��0 0 0 5q�64    �� BitmapScalingMode$ HighQuality=�50   (   ��5.   (   �� *	ImagePath+50   (   51      52      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 54      +  %Microsoft.Xaml.Behaviors.EventTrigger  55         	EventName$ SelectionChanged��6)   *  $Microsoft.Xaml.Behaviors.TriggerBase	   Actions.	 56      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  
   Command
 64   �� *SortCommand+57      59      �� 5:      $��30��6   $��0 0 0 5q�6%   
������ $��1q�5<       �� CornerRadius$ 5��5=      ���#fdf8e8._�5?      � 
������  � ColumnDefinitions 5@      �� 5A      $	��200 �6/   �� 5B      .+�5D      �� $��Stretch=�5E   "   $	��130��5F   "   $��30��61   $��0��5G   "   $��Bottom=�5H   "   
������ $��Center=�5J   "   $��0q�5K   "   ��5D   "   �� *Search+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.��5K   6   5L      �� 5M      $#��/Icons/314478_search_icon.png��6    $��25��5N       $��30��6,   $��Center=�5O       $��1��5P       $ HighQuality=�5Q       5R      5S      5U      5V      �� 5X   
     AddButtonStyle#���  6   $��	15 0 0 75q�5Z      $��3��5[      $��Bottom=�5\      $
��Left=�5]       K� ZIndex$ 1��5^      $��75��5_      $��75��6   ��5Y      �� *AddEpubBookCommand+.��5`      �� $%��/Icons/126583_plus_add_icon.png��6   $��15q�5a      5b      �� 5d   
   -   5         ��Name$ bookList��5d      #��[  5e      $��Disabled=�5h      $��3��5i      
������ 
������ $��10 10 10 70q�5l      ��5f      �� *FavoriteBooks+ 5g      �� *SelectedBook+$ TwoWay=���5m      �� 5n       �� 
TargetType" ��6   .�5o      ��  �� Property � �� �� Value
 ���� 5p      �� 5q       � �� 5r      �� 5s       �� 
TargetType" ��6.   .R�5t   "   �� 5u      5w       �� Triggers 5x      P� 5y       P� Property �@J�IsMouseOver P� Value$
 True��69   . �5z      ��  �@��
IsSelected$
 True��6;   5{      5}      ��5      �� 5�      .R�5�      ��   ListButtonStyle#���  6   ���#e7dbb1$��2q�5�      $��Stretch=�5�      $��Stretch=�5�      $	��370��5�      $	��220��6*   $��10q�5�      ��5�      �� *%#DataContext.NavigateReadBookCommand+ �� RelativeSource ��  �� AncestorType" >���5�      �� 
 � Tag 5�      �� *DataContext+ �� " ��.��5�      � $��5q�6   $��Stretch=�5�      $��Stretch=�5�       5�      �� 5�   "   $��* �60   �� 5�   "   $
��Auto �60   .+�5�      ��   CheckBoxStyle#���  6'   $��1��5�   '   
�������$ 1��5�   '   $��Right=�5�   '   $��Bottom=�5�   '   $��3q�5�   '    d� 	IsChecked 5�   '   �� *
IsFavorite+ 5�   "     5�   &   $ 	Unchecked��65   .	 5�   *     
 6@   �� *'%DataContext.RemoveFavoriteMarkCommand+ �� " >�5�   '   5�      �� 5�      $��Stretch=�6$   $��0��5�   $   $��7 7 7 0q�5�   $   $��Stretch=�5�   $   $ HighQuality=�5�   $   ��5�   $   ��  �� Path$ 
CoverImage�5�   $   �� 5�      $
��Left=�6)   $��55��6D   $	��165��6S   $��	5 10 5 10q�6b   $��1��6u   .+�5�   "   �� $��14(�6,   $
��Left=�5�   0   $��DemiBold"�5�   0   $
��Wrap=�5�   0   ��5�   :   �� $ Title�5�   0   �� 5�   "   $��12(�6,   $
��Left=�5�   0   $
��Wrap=�5�   0   ��5�   :   �� $ Author�5�   0   5�      5�       � ContextMenu 5�      �� 5�       � DataContext 6*   �� $ PlacementTarget.Tag� �� *Self+.@�5�   "   m� $��Delete��6+    m� Command 5�   +   �� *DeleteBookCommand+5�      5�      5�      5�      ]� 5�   
   $��3��6   $��60��6!   ���#e7dbb1$��Bottom=�5�      .+�5�      ��   PlayButtonStyle#���  6   $��Right=�5�      y�5�      �� *ContinueReadingVisibility+��5�      �� *NavigateReadBookCommand+��5�      �� *LastOpenedBook+.��5�      �� .+�5�      �� $'��!Продолжить читать��6    $��14(�69   $��	10 0 10 0q�6G   �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��14(�6K   $��10 0 0 0q�6Y   $��DemiBold"�6k   ��6$   �� *LastOpenedBook.Author+6k   �� 5�      $��14(�6_   $	��250��6m   $��	10 0 10 0q�6|   $��DemiBold"�6�   ��6$   �� *LastOpenedBook.Title+ �� StringFormat$ - {0}��6�   5�      5�      5�      5�      5�      5�      