   M S B A M L   `   `   `  ����  ICS.Exhibition    ICS.Exhibition.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   I EWpfAnimatedGif, Version=0.1.0.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com  5   	   -   5          � Title$  
MainWindow��5   	   $	��900��6   $
��1440��6)    � WindowStyle$
 None=�66    � WindowState$ Normal=�6I   .��5      � -   5        $��girdMain��5       � RowDefinitions 5   
   �� 5      $
��365* �6   �� 5	      $
��528* �6    � ColumnDefinitions 5   
   �� 5      $
��751* �6   �� 5      $
��682* �6   ��5   
   �� 5       �� ImageSource$ Resources/bg.jpg��6   .+�5   
   �� -   5        $��Right=�5      $��0,0,0.333,0q�6.   $	��Top=�6C      ClosedButtonTemplate#��[  6[   $��1��6�   $��27��6�   $��30��6�   �� 5   
   -   5        $��Right=�5      $��0,0,27.333,0q�6.   $	��Top=�6D     MiniButtonTemplate#��[ 6\   $��1��6�   $��27��6�   $��30��6�   �� 5   
   -   5        $��imgDoor��5      $
��Left=�6   $	��Top=�6:   $��Resources/gate.png��6S   $	��349��6o   $��10.667,1.667,0,0q�6|   $	��661��6�   $��1��6�   $��1��6�   �� 5   
   -   5        $��exhibitionLight��5      $y�Hidden=�6(   $
��Left=�6<   $	��Top=�6W   $!��Resources/infrared_line.png��6p   $��48.667,62,0,0q�6�   $	��344��6�   $	��633��6�   $��1��6�   $��2��6�   �� 5   
   -   5        $��	haveThief��5      $y�Hidden=�6"   $
��Left=�66   $	��184��6Q   $��358.667,140,0,0q�6^   $	��Top=�6w   $	��184��6�   $ ��Resources/bubble_thief.png��6�   $��1��6�   �� 5   
   -   5        $��
catchThief��5      $y�Hidden=�6"   $
��Left=�66   $	��116��6Q   $��407.667,148,0,0q�6^   $	��Top=�6w   $	��116��6�   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$! Resources/cartoon_thief.gif��6�      RepeatBehavior$ Forever��6�   $��1��6  �� 5   
   -	   5        $��	policemen��5      $y�Hidden=�6!   $
��Left=�65   $��49��6P   $��617.667,311,0,0q�6\   $	��Top=�6u   $��64��6�   $!��Resources/car_110_light.png��6�   $��1��6�   5      5      