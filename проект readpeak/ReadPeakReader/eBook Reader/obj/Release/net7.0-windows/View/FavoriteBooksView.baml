   M S B A M L   `   `   `  ���� C  ?ReadPeak, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:eBook_Reader.VieweBook_Reader.View  ?$clr-namespace:eBook_Reader.ViewModeleBook_Reader.ViewModel  )    #eBook_Reader.View.FavoriteBooksView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     1localclr-namespace:eBook_Reader.View     :	viewmodel$clr-namespace:eBook_Reader.ViewModel     _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors    � 	Resources     listPanelTemplate � Orientation��%(   &	        �� .R�� $ 
Horizontal=�.��� ���#fdf8e8 � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+�]� $��0��$��45�����#e7dbb1.+��� $��Right=�$��Bottom=�$��Right=� �� Orientation$ 
Horizontal=�$��5q�.+���   ComboBoxStyle#���  $��0 0 5 5q�$��30��$	��105��$��Center=� �� SelectedItem �� *SelectedSortParameter+ �� Mode$ TwoWay=����� *SortParameters+���� .R��� $ 
Horizontal=�$��30��.+��� $��16(�$��75��$��0 0 0 5q�$��Center=����� *Name+�� $��20��$��0 0 0 5q� �� BitmapScalingMode$ HighQuality=����� *	ImagePath+*  $Microsoft.Xaml.Behaviors.Interaction   Triggers +  %Microsoft.Xaml.Behaviors.EventTrigger     	EventName$ SelectionChanged��*  $Microsoft.Xaml.Behaviors.TriggerBase	   Actions.	 2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  
   Command
 �� *SortCommand+�� $��30��$��0 0 0 5q�
������ $��1q� �� CornerRadius$ 5�����#fdf8e8._�� 
������  � ColumnDefinitions �� $	��200 ��� .+��� $��Stretch=�$	��130��$��30��$��0��$��Bottom=�
������ $��Center=�$��0q����� *Search+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.���� $#��/Icons/314478_search_icon.png��$��25��$��30��$��Center=�$��1��$ HighQuality=���   AddButtonStyle#���  $��	15 0 0 75q�$��3��$��Bottom=�$
��Left=� K� ZIndex$ 1��$��75��$��75������ *AddEpubBookCommand+.���� $%��/Icons/126583_plus_add_icon.png��$��15q��� -    ��Name$ bookList��#��[  $��Disabled=�$��3��
������ 
������ $��10 10 10 70q����� *FavoriteBooks+ �� *SelectedBook+$ TwoWay=�����  �� 
TargetType" ��.���  �� Property � �� �� Value
 ���� ��  � �� ��  �� 
TargetType" ��.R���  �� Triggers P�  P� Property �@J�IsMouseOver P� Value$
 True��. ���  �@��
IsSelected$
 True������ .R���   ListButtonStyle#���  ���#e7dbb1$��2q�$��Stretch=�$��Stretch=�$	��370��$	��220��$��10q����� *%#DataContext.NavigateReadBookCommand+ �� RelativeSource ��  �� AncestorType" >����� 
 � Tag �� *DataContext+ �� " ��.��� $��5q�$��Stretch=�$��Stretch=� �� $��* ��� $
��Auto �.+���   CheckBoxStyle#���  $��1��
�������$ 1��$��Right=�$��Bottom=�$��3q� d� 	IsChecked �� *
IsFavorite+   $ 	Unchecked��.	   
 �� *'%DataContext.RemoveFavoriteMarkCommand+ �� " >��� $��Stretch=�$��0��$��7 7 7 0q�$��Stretch=�$ HighQuality=�����  �� Path$ 
CoverImage��� $
��Left=�$��55��$	��165��$��	5 10 5 10q�$��1��.+��� $��14(�$
��Left=�$��DemiBold"�$
��Wrap=����� $ Title��� $��12(�$
��Left=�$
��Wrap=����� $ Author� � ContextMenu ��  � DataContext �� $ PlacementTarget.Tag� �� *Self+.@�m� $��Delete�� m� Command �� *DeleteBookCommand+]� $��3��$��60�����#e7dbb1$��Bottom=�.+���   PlayButtonStyle#���  $��Right=�y��� *ContinueReadingVisibility+���� *NavigateReadBookCommand+���� *LastOpenedBook+.���� .+��� $��Continue reading��$��14(�$��	10 0 10 0q��� $ 
Horizontal=�.+��� $��14(�$��10 0 0 0q�$��DemiBold"����� *LastOpenedBook.Author+�� $��14(�$	��250��$��	10 0 10 0q�$��DemiBold"����� *LastOpenedBook.Title+ �� StringFormat$ - {0}��