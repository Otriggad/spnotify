FasdUAS 1.101.10   ��   ��    k             l     ��  ��    V P Uses text to speech to notify user of currently playing track and its artist --     � 	 	 �   U s e s   t e x t   t o   s p e e c h   t o   n o t i f y   u s e r   o f   c u r r e n t l y   p l a y i n g   t r a c k   a n d   i t s   a r t i s t   - -   
  
 p         �� �� 0 	currtrack 	currTrack  ������ 0 fetchedtrack fetchedTrack��        l     ��������  ��  ��        l     ����  r         m        �      o      ���� 0 	currtrack 	currTrack��  ��        l     ��  ��    9 3set oldDelims to AppleScript's text item delimiters     �   f s e t   o l d D e l i m s   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s      l     ��������  ��  ��        l     ����   r     ! " ! I    	�������� 40 getcurrentlyplayingtrack getCurrentlyPlayingTrack��  ��   " o      ���� .0 currentlyplayingtrack currentlyPlayingTrack��  ��     # $ # l    %���� % o    ���� .0 currentlyplayingtrack currentlyPlayingTrack��  ��   $  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * 0 * Method to get the currently playing track    + � , , T   M e t h o d   t o   g e t   t h e   c u r r e n t l y   p l a y i n g   t r a c k )  - . - i      / 0 / I      �������� 40 getcurrentlyplayingtrack getCurrentlyPlayingTrack��  ��   0 W     � 1 2 1 k   
 } 3 3  4 5 4 O   
 . 6 7 6 k    - 8 8  9 : 9 r     ; < ; c     = > = n     ? @ ? 1    ��
�� 
pArt @ 1    ��
�� 
pTrk > m    ��
�� 
TEXT < o      ���� 0 currentartist currentArtist :  A B A r    ! C D C c     E F E n     G H G 1    ��
�� 
pnam H 1    ��
�� 
pTrk F m    ��
�� 
TEXT D o      ���� 0 currenttrack currentTrack B  I J I r   " ) K L K b   " ' M N M b   " % O P O o   " #���� 0 currenttrack currentTrack P m   # $ Q Q � R R    b y   N o   % &���� 0 currentartist currentArtist L o      ���� 0 fetchedtrack fetchedTrack J  S�� S r   * - T U T o   * +���� 0 fetchedtrack fetchedTrack U o      ���� 0 	untrimmed 	unTrimmed��   7 m   
  V V�                                                                                      @ alis    P  Macintosh HD               �WH+  ��Spotify.app                                                    r���z2        ����  	                Applications    �I      �zc    ��  &Macintosh HD:Applications: Spotify.app    S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��   5  W X W l  / /��������  ��  ��   X  Y Z Y l  / /�� [ \��   [ = 7 Remove non supported characters for text to speech --     \ � ] ] n   R e m o v e   n o n   s u p p o r t e d   c h a r a c t e r s   f o r   t e x t   t o   s p e e c h   - -   Z  ^�� ^ Z   / } _ `���� _ >  / 2 a b a o   / 0���� 0 	currtrack 	currTrack b o   0 1���� 0 	untrimmed 	unTrimmed ` k   5 y c c  d e d I   5 :�������� *0 trimunwantedsymbols trimUnwantedSymbols��  ��   e  f�� f O   ; y g h g k   ? x i i  j k j Z   ? P l m���� l =  ? D n o n 1   ? B��
�� 
pPlS o m   B C��
�� ePlSkPSP m I  G L������
�� .spfyPlPsnull��� ��� null��  ��  ��  ��   k  p q p I  Q Z�� r��
�� .sysoexecTEXT���     TEXT r b   Q V s t s b   Q T u v u m   Q R w w � x x  s a y   v o   R S���� 0 fetchedtrack fetchedTrack t m   T U y y � z z    &��   q  { | { r   [ ^ } ~ } o   [ \���� 0 	untrimmed 	unTrimmed ~ o      ���� 0 	currtrack 	currTrack |   �  I  _ d�� ���
�� .sysodelanull��� ��� nmbr � m   _ `���� ��   �  ��� � Z   e x � ����� � =  e l � � � 1   e h��
�� 
pPlS � m   h k��
�� ePlSkPSp � I  o t������
�� .spfyPlPsnull��� ��� null��  ��  ��  ��  ��   h m   ; < � ��                                                                                      @ alis    P  Macintosh HD               �WH+  ��Spotify.app                                                    r���z2        ����  	                Applications    �I      �zc    ��  &Macintosh HD:Applications: Spotify.app    S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  ��  ��  ��  ��   2 >   	 � � � n     � � � 1    ��
�� 
prun � m     � ��                                                                                      @ alis    P  Macintosh HD               �WH+  ��Spotify.app                                                    r���z2        ����  	                Applications    �I      �zc    ��  &Macintosh HD:Applications: Spotify.app    S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��   � m    ��
�� boovtrue .  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � C = Finds substring in string and replaces it with new string --    � � � � z   F i n d s   s u b s t r i n g   i n   s t r i n g   a n d   r e p l a c e s   i t   w i t h   n e w   s t r i n g   - - �  � � � i     � � � I      �� �����  0 findandreplace findAndReplace �  � � � o      ���� 
0 tofind   �  � � � o      ���� 0 	toreplace   �  ��� � o      ���� 0 	thestring 	TheString��  ��   � k     6 � �  � � � r      � � � 1     ��
�� 
txdl � o      ���� 0 ditd   �  � � � r     � � � o    ���� 
0 tofind   � 1    
��
�� 
txdl �  � � � r     � � � n     � � � 2   ��
�� 
citm � o    ���� 0 	thestring 	TheString � o      ���� 0 	textitems 	textItems �  � � � r     � � � o    ���� 0 	toreplace   � 1    ��
�� 
txdl �  � � � Z    - � ��� � � l    ����� � =    � � � n     � � � m    ��
�� 
pcls � o    ���� 0 	thestring 	TheString � m    ��
�� 
TEXT��  ��   � r     % � � � c     # � � � o     !���� 0 	textitems 	textItems � m   ! "��
�� 
TEXT � o      ���� 0 res  ��   � l  ( - � � � � r   ( - � � � c   ( + � � � o   ( )���� 0 	textitems 	textItems � m   ) *��
�� 
utxt � o      ���� 0 res   � 3 - if (class of TheString is Unicode text) then    � � � � Z   i f   ( c l a s s   o f   T h e S t r i n g   i s   U n i c o d e   t e x t )   t h e n �  � � � r   . 3 � � � o   . /���� 0 ditd   � 1   / 2��
�� 
txdl �  ��� � L   4 6 � � o   4 5���� 0 res  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � i     � � � I      ��~�}� *0 trimunwantedsymbols trimUnwantedSymbols�~  �}   � k     S � �  � � � Z      � ��|�{ � E     � � � o     �z�z 0 fetchedtrack fetchedTrack � m     � � � � �  ' � r     � � � I    �y ��x�y  0 findandreplace findAndReplace �  � � � m     � � � � �  ' �  � � � m    	 � � � � �  \ ' �  ��w � o   	 
�v�v 0 fetchedtrack fetchedTrack�w  �x   � o      �u�u 0 fetchedtrack fetchedTrack�|  �{   �  � � � l   �t�s�r�t  �s  �r   �  � � � Z    ) � ��q�p � E    � � � o    �o�o 0 fetchedtrack fetchedTrack � m     � � � � �  " � r    % � � � I    #�n ��m�n  0 findandreplace findAndReplace �  � � � m     � � � � �  " �  � � � m     � � � � �    �  �l  o    �k�k 0 fetchedtrack fetchedTrack�l  �m   � o      �j�j 0 fetchedtrack fetchedTrack�q  �p   �  l  * *�i�h�g�i  �h  �g    Z   * >�f�e E  * - o   * +�d�d 0 fetchedtrack fetchedTrack m   + ,		 �

  ( r   0 : I   0 8�c�b�c  0 findandreplace findAndReplace  m   1 2 �  (  m   2 3 �    �a o   3 4�`�` 0 fetchedtrack fetchedTrack�a  �b   o      �_�_ 0 fetchedtrack fetchedTrack�f  �e    l  ? ?�^�]�\�^  �]  �\   �[ Z   ? S�Z�Y E  ? B o   ? @�X�X 0 fetchedtrack fetchedTrack m   @ A �  ) r   E O !  I   E M�W"�V�W  0 findandreplace findAndReplace" #$# m   F G%% �&&  )$ '(' m   G H)) �**   ( +�U+ o   H I�T�T 0 fetchedtrack fetchedTrack�U  �V  ! o      �S�S 0 fetchedtrack fetchedTrack�Z  �Y  �[  ��       
�R,-./012�Q�P�R  , �O�N�M�L�K�J�I�H�O 40 getcurrentlyplayingtrack getCurrentlyPlayingTrack�N  0 findandreplace findAndReplace�M *0 trimunwantedsymbols trimUnwantedSymbols
�L .aevtoappnull  �   � ****�K 0 	currtrack 	currTrack�J 0 fetchedtrack fetchedTrack�I  �H  - �G 0�F�E34�D�G 40 getcurrentlyplayingtrack getCurrentlyPlayingTrack�F  �E  3 �C�B�A�C 0 currentartist currentArtist�B 0 currenttrack currentTrack�A 0 	untrimmed 	unTrimmed4  ��@�?�>�=�< Q�;�:�9�8�7�6 w y�5�4�3
�@ 
prun
�? 
pTrk
�> 
pArt
�= 
TEXT
�< 
pnam�; 0 fetchedtrack fetchedTrack�: 0 	currtrack 	currTrack�9 *0 trimunwantedsymbols trimUnwantedSymbols
�8 
pPlS
�7 ePlSkPSP
�6 .spfyPlPsnull��� ��� null
�5 .sysoexecTEXT���     TEXT
�4 .sysodelanull��� ��� nmbr
�3 ePlSkPSp�D � �h��,e� !*�,�,�&E�O*�,�,�&E�O��%�%E�O�E�UOȢ I*j+ 	O� ;*�,�  
*j Y hO��%�%j O�E�Okj O*�,a   
*j Y hUY h[OY��. �2 ��1�056�/�2  0 findandreplace findAndReplace�1 �.7�. 7  �-�,�+�- 
0 tofind  �, 0 	toreplace  �+ 0 	thestring 	TheString�0  5 �*�)�(�'�&�%�* 
0 tofind  �) 0 	toreplace  �( 0 	thestring 	TheString�' 0 ditd  �& 0 	textitems 	textItems�% 0 res  6 �$�#�"�!� 
�$ 
txdl
�# 
citm
�" 
pcls
�! 
TEXT
�  
utxt�/ 7*�,E�O�*�,FO��-E�O�*�,FO��,�  
��&E�Y ��&E�O�*�,FO�/ � ���89�� *0 trimunwantedsymbols trimUnwantedSymbols�  �  8  9 � � � �� � � �	%)� 0 fetchedtrack fetchedTrack�  0 findandreplace findAndReplace� T�� *���m+ E�Y hO�� *���m+ E�Y hO�� *���m+ E�Y hO�� *���m+ E�Y h0 �:��;<�
� .aevtoappnull  �   � ****: k     ==  >>  ??  #��  �  �  ;  <  ���� 0 	currtrack 	currTrack� 40 getcurrentlyplayingtrack getCurrentlyPlayingTrack� .0 currentlyplayingtrack currentlyPlayingTrack� �E�O*j+ E�O�1 �@@ 4 E n t e r   S a n d m a n   b y   M e t a l l i c a2 �AA 4 E n t e r   S a n d m a n   b y   M e t a l l i c a�Q  �P  ascr  ��ޭ