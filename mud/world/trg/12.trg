#1200
(�������) ������ �������~
1 b 20
~
*������ ��� ���� ���������
*������ vnum1, 2 ���� �������  vnum ��������, ������������ ���
* VNUM - ����� �������� ��� ������
* VNUM2 - ������� "� ��������"
*�������� ��������� �� ���������������� ���������
eval owner %self.worn_by%
if ( %owner% == %nil% )
  if (%self.vnum% == VNUM2 ) 
    *���� �������� ��� - �������������� "����" � ������� ��� ������
    otransform VNUM
  end
  halt
end
*��� �������� ��������� �� ��������, ������� �� ��������� ������� ���,
*��� ������ ���� ������ ��������� �������� ����
eval item1 %owner.eq(  )%
eval item2 %owner.eq(  )%
*���������, ������������� �� �������� �����������
if (!( %item2.vnum% == vnum1 ) || !( %item3.vnum% == vnum2 ))
  *������-�� �� ��������� �� ������� (���������)
  *�������������� *����" � ������� ��� ���������� ����������
  otransform VNUM
end
~
#1201
(�������) ������� ������~
1 j 100
~
*���� ������� ���� ������� �� 1 ������� - ��� � �������� ���� "���������" ������� :-)
* VNUM2  - ����� �������� "� ��������"
* VNUM  -  ��� ���
* SELF_VNUM - ����� �������� ��������
wait 1
eval item1 %actor.eq(  )%
eval item2 %actor.eq(  )%
eval item3 %actor.eq(  )%
*���������, ������������� �� �������� �����������
if (( %item1.vnum% == vnum1 ) && ( %item2.vnum% == vnum2 ) && ( %item3.vnum% == vnum1 ))
  if ( %self.vnum% == VNUM )
    otransform VNUM2
  else
    calcuid setitem VNUM obj
    exec SELF_VNUM %setitem.id%
  end
end
~
#1202
(�������) ������� �����~
1 lz 100
~
* ����������  ������
* VNUM - ����� �������� ��� ������
* VNUM2 - ����� �������� � ��������
* SELF_VNUM - ����� �������� ��������
* ����������  ������
* ����������  ������
wait 1
if ( %self.vnum% == VNUM2 )
  otransform VNUM
else
  if !%exist.obj(VNUM2)%
    halt
  end
  *�������� ��������� �� "��������" ������ � ��������
  *(���� ������� ������� � ����
  *�������� ��������� �� ��������� ��������� �������� � �� ��������� ��������
  *�������� (�������� ������� ��� �������)
  *���� ��� ���� ���� - �������������� �������� ������
  *��� ���������� ��� ����, ����� ������ �� ������������, ����� ���-�� � ����
  *���������� ������������ ���� �� "����������" ��������� ����
  calcuid setitem VNUM2 obj
  eval keyowner %setitem.worn_by%
  eval owner %self.carried_by%
  if (%keyowner.id% !=  %owner.id% )
    halt
  end 
  exec SELF_VNUM %setitem.id%
end
~
#1203
(������ ����) ������ �������~
1 b 20
~
eval owner %self.worn_by%
if ( %owner% == %nil% )
  if (%self.vnum% == 1222 ) 
    otransform 1200
  end
  halt
end
eval item2 %owner.eq(7)%
eval item3 %owner.eq(10)%
*���������, ������������� �� �������� �����������
if (!( %item2.vnum% == 1202 ) || !( %item3.vnum% == 1201 ))
  *������-�� �� ��������� �� ������� (���������)
  otransform 1200
end
~
#1204
(������ ����) ������� ������~
1 j 100
~
*���� ������� ���� ������� �� 1 ������� - ��� � �������� ���� "���������" ������� :-)
* VNUM2  - ����� �������� "� ��������"
wait 1
eval item1 %actor.eq(5)%
eval item2 %actor.eq(7)%
eval item3 %actor.eq(10)%
*���������, ������������� �� �������� �����������
if (( %item1.vnum% == 1200 ) && ( %item2.vnum% == 1202 ) && ( %item3.vnum% == 1201 ))
  if ( %self.vnum% == 1200 )
    otransform 1222
  else
    calcuid setitem 1200 obj
    exec 1204 %setitem.id%
  end
end
~
#1205
(������ ����) ������� �����~
1 l 100
~
* ����������  ������
wait 1
if ( %self.vnum% == 1222 )
  otransform 1200
else
  if !%exist.obj(1222)%
    halt
  end
  calcuid setitem 1222 obj
  eval keyowner %setitem.worn_by%
  eval owner %self.carried_by%
  if (%keyowner.id% !=  %owner.id% )
    halt
  end 
  exec 1205 %setitem.id%
end
~
#1206
(��������� ��������) ������ �������~
1 b 20
~
eval owner %self.worn_by%
if ( %owner% == %nil% )
  if (%self.vnum% == 1223 ) 
    otransform 1209
  end
  halt
end
eval item2 %actor.eq(11)%
eval item3 %actor.eq(6)%
eval item4 %actor.eq(12)%
*���������, ������������� �� �������� �����������
if ( !( %item2.vnum% == 1210 ) || !( %item3.vnum% == 1211 ) || !( %item3.vnum% == 1212 ))
  *������-�� �� ��������� �� ������� (���������)
  otransform 1209
end
~
#1207
(��������� ��������) ������� ������~
1 j 100
~
*���� ������� ���� ������� �� 1 ������� - ��� � �������� ���� "���������" ������� :-)
* VNUM2  - ����� �������� "� ��������"
wait 1
eval item1 %actor.eq(5)%
eval item2 %actor.eq(11)%
eval item3 %actor.eq(6)%
eval item4 %actor.eq(12)%
*���������, ������������� �� �������� �����������
if (( %item1.vnum% == 1209 ) && ( %item2.vnum% == 1210 ) && ( %item3.vnum% == 1211 ) && ( %item3.vnum% == 1212 ))
  if ( %self.vnum% == 1209 )
    otransform 1223
  else
    calcuid setitem 1209 obj
    exec 1207 %setitem.id%
  end
end
~
#1208
(��������� ��������) ������� �����~
1 l 100
~
* ����������  ������
wait 1
if ( %self.vnum% == 1223 )
  otransform 1209
else
  if !%exist.obj(1223)%
    halt
  end
  calcuid setitem 1223 obj
  eval keyowner %setitem.worn_by%
  eval owner %self.carried_by%
  if (%keyowner.id% !=  %owner.id% )
    halt
  end 
  exec 1208 %setitem.id%
end
~
#1209
(������� ������) ������ �������~
1 b 20
~
eval owner %self.worn_by%
if ( %owner% == %nil% )
  if (%self.vnum% == 1224 ) 
    otransform 1217
  end
  halt
end
eval item1 %actor.eq(5)%
eval item2 %actor.eq(7)%
eval item3 %actor.eq(10)%
eval item4 %actor.eq(6)%
*�������� ��������� �������, ������� ��������� �� 2 �������
eval item5 %actor.eq(3)%
eval item6 %actor.eq(4)%
if (( %item5.vnum% != 1221 ) && ( %item6.vnum% != 1221 ))
  *���� �� �� ��� �� �� ����� ��� �������
  otransform 1217
  halt
end
*���������, ������������� �� �������� �����������
if (( %item1.vnum% != 1217 ) || (%item2.vnum% != 1218 ) || ( %item3.vnum% != 1219 ) || ( %item4.vnum% != 1220 ))
  *������-�� �� ��������� �� ������� (���������)
  otransform 1217
end
~
#1210
(������� ������) ������� ������~
1 j 100
~
*���� ������� ���� ������� �� 1 ������� - ��� � �������� ���� "���������" ������� :-)
* VNUM2  - ����� �������� "� ��������"
wait 1
eval item1 %actor.eq(5)%
eval item2 %actor.eq(7)%
eval item3 %actor.eq(10)%
eval item4 %actor.eq(6)%
*�������� ��������� �������, ������� ��������� �� 2 �������
eval item5 %actor.eq(3)%
eval item6 %actor.eq(4)%
if (( %item5.vnum% != 1221 ) && ( %item6.vnum% != 1221 ))
  *���� �� �� ��� �� �� ����� ��� �������
  halt
end
*���������, ������������� �� �������� �����������
if (( %item1.vnum% == 1217 ) && ( %item2.vnum% == 1218 ) && ( %item3.vnum% == 1219 ) && ( %item4.vnum% == 1220 ))
  if ( %self.vnum% == 1217 )
    otransform 1224
  else
    calcuid setitem 1217 obj
    exec 1210 %setitem.id%
  end
end
~
#1211
(������� ������) ������� �����~
1 l 100
~
* ����������  ������
wait 1
if ( %self.vnum% == 1224 )
  otransform 1217
else
  if !%exist.obj(1225)%
    halt
  end
  calcuid setitem 1224 obj
  eval keyowner %setitem.worn_by%
  eval owner %self.carried_by%
  if (%keyowner.id% !=  %owner.id% )
    halt
  end 
  exec 1211 %setitem.id%
end
~
#1212
(������ ����) ������ �������~
1 b 20
~
eval owner %self.worn_by%
if ( %owner% == %nil% )
  if (%self.vnum% == 1225 ) 
    otransform 1203
  end
  halt
end
eval item2 %owner.eq(7)%
eval item3 %owner.eq(10)%
*���������, ������������� �� �������� �����������
if (!( %item2.vnum% == 1205 ) || !( %item3.vnum% == 1204 ))
  *������-�� �� ��������� �� ������� (���������)
  otransform 1203
end
~
#1213
(������ ����) ������� ������~
1 j 100
~
*���� ������� ���� ������� �� 1 ������� - ��� � �������� ���� "���������" ������� :-)
* VNUM2  - ����� �������� "� ��������"
wait 1
eval item1 %actor.eq(5)%
eval item2 %actor.eq(7)%
eval item3 %actor.eq(10)%
*���������, ������������� �� �������� �����������
if (( %item1.vnum% == 1203 ) && ( %item2.vnum% == 1205 ) && ( %item3.vnum% == 1204 ))
  if ( %self.vnum% == 1203 )
    otransform 1225
  else
    calcuid setitem 1203 obj
    exec 1213 %setitem.id%
  end
end
~
#1214
(������ ����) ������� �����~
1 l 100
~
* ����������  ������
wait 1
if ( %self.vnum% == 1225 )
  otransform 1203
else
  if !%exist.obj(1225)%
    halt
  end
  calcuid setitem 1225 obj
  eval keyowner %setitem.worn_by%
  eval owner %self.carried_by%
  if (%keyowner.id% !=  %owner.id% )
    halt
  end 
  exec 1214 %setitem.id%
end
~
#1215
������ ���� (��� �������)~
1 b 100
~
*������ ���  �������� ������������� ��������� ������  ����� ������, ��������
wait 2s 
*���� ������ � ��������� ����, �� �������� �������� - ����  �� �����  ���� ��
*���� ������ ��������� ������  ��� ���������, ����� �������� ������ 
*������������� � �������.
if %self.vnum% == 1200
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set item1 %char.eq(7)% 
  set item2 %char.eq(10)%  
  wait 2s
  if %item1.vnum% != 1202 || %item2.vnum% != 1201
    halt
  end       
  otransform 1222
  *���  �������� �  ���������  �� ���������, ���� ��������  ������ ������, ��
  *���������,  ���� ����� ���  ������ ��������� ��� � �����, ����� ��������
  *������  ��������� ���� �������.  
else                                                        
  if %self.worn_by%
    set char %self.worn_by%
    set item1 %char.eq(7)% 
    set item2 %char.eq(10)%
    if %item1.vnum% == 1202 && %item2.vnum% ==  1201
      halt
    end 
  end    
  otransform 1200
end    
*����� ��������: ��������� ������ ��������� ���������� ����������
*������� ����� ���� 
*����������� ��� ����� �����/������� ������� ��������� ��� ������� ����� 
*�������� ����� ������������ �������� ���, ���� � ���� �������� ���� �� �����
*������: �� ��� ��� ��� ������ (�� ��� ����� �����) - ��� ���� ������� ��������
*����������� ���������� �����������
*�� �� �������� �������� ����� � ������ ������� ��� ������:
*���� ����� - ����������� ������������ ������� �� ������ ����� ��������
*��� ������ ����, ��� ��������� ������� �� ����/������ ���� � ������ ��������
~
#1216
������ ���� (��� �������)~
1 b 100
~
wait 2s 
if %self.vnum% == 1203
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set item1 %char.eq(7)% 
  set item2 %char.eq(10)%  
  if %item1.vnum% != 1205 || %item2.vnum% != 1204
    halt
  end       
  otransform 1225
else
  if %self.worn_by%
    set char %self.worn_by%
    set item1 %char.eq(7)% 
    set item2 %char.eq(10)%
    if %item1.vnum% == 1205 && %item2.vnum% ==  1204
      halt
    end 
  end    
  otransform 1203
end
~
#1217
���������  �������� (��� �������)~
1 b 100
~
wait 2s 
if %self.vnum% == 1209
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set item1 %char.eq(11)% 
  set item2 %char.eq(6)%  
  set item3 %char.eq(12)%  
  if %item1.vnum% != 1210 || %item2.vnum% != 1211 || %item3.vnum% != 1212
    halt
  end       
  otransform 1223
else
  if %self.worn_by%
    set char %self.worn_by%
    set item1 %char.eq(11)% 
    set item2 %char.eq(6)%
    set item3 %char.eq(12)%
    if %item1.vnum% == 1210 && %item2.vnum% == 1211 && %item3.vnum% == 1212
      halt
    end 
  end    
  otransform 1209
end
~
#1218
������� ������ (��� �������)~
1 b 100
~
wait 2s 
if %self.vnum% == 1217
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set item1 %char.eq(7)% 
  set item2 %char.eq(10)%  
  set item3 %char.eq(6)%  
  set item4 %char.eq(3)%  
  set item5 %char.eq(4)%  
  if %item4.vnum% != 1221 && %item5.vnum% != 1221
    halt                
  end
  if %item1.vnum% != 1218 || %item2.vnum% != 1219 || %item3.vnum% != 1220
    halt
  end       
  otransform 1224
else
  if %self.worn_by%
    set char %self.worn_by%
    set item1 %char.eq(7)% 
    set item2 %char.eq(10)%
    set item3 %char.eq(6)% 
    set item4 %char.eq(3)%  
    set item5 %char.eq(4)%  
    if %item4.vnum% == 1221 || %item5.vnum% == 1221
      if %item1.vnum% == 1218 && %item2.vnum% == 1219 && %item3.vnum% == 1220
        halt
      end
    end
  end    
  otransform 1217
end
~
#1219
��� ��������� ������(������-�����) (���� + 3 ������)~
1 b 100
~
wait 1s 
if %self.vnum% == 1231
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1225  && %item.vnum% < 1247
      eval num %num%+1
    end
  done
  if %num%>3
    if %char.class% == 4 ||  %char.class% == 2
      otransform 1232
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1225  && %item.vnum% < 1247
        eval num %num%+1
      end
    done
    if %num%>3 
      if %char.class% == 4 ||  %char.class% == 2
        halt                                   
      end
    end 
  end
  otransform 1231  
end
~
#1220
��� ��������� ������(������-�����) (������ + 7 ������)~
1 b 100
~
wait 2s 
if %self.vnum% == 1234
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1225  && %item.vnum% < 1247
      eval num %num%+1
    end
  done
  if %num%>7 
    if %char.class% == 4 ||  %char.class% == 2
      otransform 1235                        
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1225  && %item.vnum% < 1247
        eval num %num%+1
      end
    done
    if %num%>7 
      if %char.class% == 4 ||  %char.class% == 2
        halt                                   
      end
    end 
  end
  otransform 1234  
end
~
#1221
��� ��������� ������(������-�����) (������ + 11������)~
1 b 100
~
wait 3s 
if %self.vnum% == 1241
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1225  && %item.vnum% < 1247
      eval num %num%+1
    end
  done
  if %num%>11 
    if %char.class% == 4 ||  %char.class% == 2
      otransform 1242                        
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1225  && %item.vnum% < 1247
        eval num %num%+1
      end
    done
    if %num%>11 
      if %char.class% == 4 ||  %char.class% == 2
        halt                                   
      end
    end 
  end
  otransform 1241  
end
~
#1222
��� ��������� ������(������-�����) (��� + 13������)~
1 b 100
~
wait 4s 
if %self.vnum% == 1243
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1225  && %item.vnum% < 1247
      eval num %num%+1
    end
  done
  if %num%>13 
    if %char.class% == 4 ||  %char.class% == 2
      otransform 1244                        
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1225  && %item.vnum% < 1247
        eval num %num%+1
      end
    done
    if %num%>13 
      if %char.class% == 4 ||  %char.class% == 2
        halt                                   
      end
    end 
  end
  otransform 1243  
end
~
#1223
��� ��������� ������(������-�����) (��� 16 ������)~
1 b 100
~
wait 5s 
if %self.vnum% == 1245
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1225  && %item.vnum% < 1247
      eval num %num%+1
    end
  done
  if %num%>15
    if %char.class% == 4 ||  %char.class% == 2
      otransform 1246                        
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1225  && %item.vnum% < 1247
        eval num %num%+1
      end
    done
    if %num%>15 
      if %char.class% == 4 ||  %char.class% == 2
        halt                                   
      end
    end 
  end
  otransform 1245  
end
~
#1224
��� ������ ������(��������-������� (���� + 3 ������)~
1 b 100
~
set wait 15+%random.15%
wait %wait%s
if !%self.worn_by%
  otransform 1251
  wait 30s
  halt
end
set char %self.worn_by%
set qual 0
set i 0
while %i% < 18
  eval i %i%+1
  set item %char.eq(%i%)%  
  if (%item.vnum% > 1246 && %item.vnum% < 1268) || (%item.vnum% > 1289 && %item.vnum% < 1296)
    eval qual %qual%+1
  end
done
if %self.vnum% == 1251
  if %qual% > 3
    if %char.class% == 6 
      otransform 1252
    elseif %char.class% == 8
      otransform 1291
    end
  end
end
if %qual% < 4 || (%char.class% != 6 && %char.class% != 8)
  otransform 1251     
else
  if %char.class% == 6 && %self.vnum% != 1252
    otransform 1252
  elseif %char.class% == 8 && %self.vnum% != 1290
    otransform 1290
  end
end
~
#1225
��� ������ ������(��������-�������) (���� + 7 ������)~
1 b 100
~
set wait 15+%random.15%
wait %wait%s
if !%self.worn_by%
  otransform 1254
  wait 30s
  halt
end
set char %self.worn_by%
set qual 0
set i 0
while %i% < 18
  eval i %i%+1
  set item %char.eq(%i%)%  
  if (%item.vnum% > 1246 && %item.vnum% < 1268) || (%item.vnum% > 1289 && %item.vnum% < 1296)
    eval qual %qual%+1
  end
done
if %self.vnum% == 1254
  if %qual% > 7
    if %char.class% == 6 
      otransform 1255
    elseif %char.class% == 8
      otransform 1291
    end
  end
end
if %qual% < 8 || (%char.class% != 6 && %char.class% != 8)
  otransform 1254     
else
  if %char.class% == 6 && %self.vnum% != 1255
    otransform 1255
  elseif %char.class% == 8 && %self.vnum% != 1291
    otransform 1291
  end
end
~
#1226
��� ������ ������(��������-�������)(������+ 11������)~
1 b 100
~
set wait 15+%random.15%
wait %wait%s
if !%self.worn_by%
  otransform 1256
  wait 30s
  halt
end
set char %self.worn_by%
set qual 0
set i 0
while %i% < 18
  eval i %i%+1
  set item %char.eq(%i%)%  
  if (%item.vnum% > 1246 && %item.vnum% < 1268) || (%item.vnum% > 1289 && %item.vnum% < 1296)
    eval qual %qual%+1
  end
done
if %self.vnum% == 1256
  if %qual% > 11
    if %char.class% == 6 
      otransform 1257
    elseif %char.class% == 8
      otransform 1292
    end
  end
end
if %qual% < 12 || (%char.class% != 6 && %char.class% != 8)
  otransform 1256     
else
  if %char.class% == 6 && %self.vnum% != 1257
    otransform 1257
  elseif %char.class% == 8 && %self.vnum% != 1292
    otransform 1292
  end
end
~
#1227
��� ������ ������(��������-�������) (��� +13������)~
1 b 100
~
set wait 15+%random.15%
wait %wait%s
if !%self.worn_by%
  otransform 1264
  wait 30s
  halt
end
set char %self.worn_by%
set qual 0
set i 0
while %i% < 18
  eval i %i%+1
  set item %char.eq(%i%)%  
  if (%item.vnum% > 1246 && %item.vnum% < 1268) || (%item.vnum% > 1289 && %item.vnum% < 1296)
    eval qual %qual%+1
  end
done
if %self.vnum% == 1264
  if %qual% > 11
    if %char.class% == 6 
      otransform 1265
    elseif %char.class% == 8
      otransform 1293
    end
  end
end
if %qual% < 12 || (%char.class% != 6 && %char.class% != 8)
  otransform 1264     
else
  if %char.class% == 6 && %self.vnum% != 1265
    otransform 1265
  elseif %char.class% == 8 && %self.vnum% != 1293
    otransform 1293
  end
end
~
#1228
��� ������ ������(��������-�������)(��� 16 ������)~
1 b 100
~
set wait 15+%random.15%
wait %wait%s
if !%self.worn_by%
  otransform 1266
  wait 30s
  halt
end
set char %self.worn_by%
set qual 0
set i 0
while %i% < 18
  eval i %i%+1
  set item %char.eq(%i%)%  
  if (%item.vnum% > 1246 && %item.vnum% < 1268) || (%item.vnum% > 1289 && %item.vnum% < 1296)
    eval qual %qual%+1
  end
done
if %self.vnum% == 1266
  if %qual% > 11
    if %char.class% == 6 
      otransform 1267
    elseif %char.class% == 8
      otransform 1294
    end
  end
end
if %qual% < 12 || (%char.class% != 6 && %char.class% != 8)
  otransform 1266     
else
  if %char.class% == 6 && %self.vnum% != 1267
    otransform 1267
  elseif %char.class% == 8 && %self.vnum% != 1293
    otransform 1294
  end
end
~
#1229
��� (��������-�������) (������ + 3 ������)~
1 b 100
~
wait 1s 
if %self.vnum% == 1276
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1267  && %item.vnum% < 1288
      eval num %num%+1
    end
  done
  if %num%>3 
    if %char.class% == 1 || %char.class% == 13
      otransform 1277                       
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1267  && %item.vnum% < 1288
        eval num %num%+1
      end
    done
    if %num%>3 
      if %char.class% == 1 || %char.class% == 13
        halt
      end                                      
    end
  end
  otransform 1276  
end
~
#1230
��� (��������-�������) (������ + 7 ������)~
1 b 100
~
wait 2s 
if %self.vnum% == 1278
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1267  && %item.vnum% < 1288
      eval num %num%+1
    end
  done
  if %num%>7 
    if %char.class% == 1 || %char.class% == 13
      otransform 1279                       
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1267  && %item.vnum% < 1288
        eval num %num%+1
      end
    done
    if %num%>7
      if %char.class% == 1 || %char.class% == 13
        halt
      end                                      
    end
  end
  otransform 1278  
end
~
#1231
��� (��������-�������)(�����+ 11������)~
1 b 100
~
wait 3s 
if %self.vnum% == 1280
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1267  && %item.vnum% < 1288
      eval num %num%+1
    end
  done
  if %num%>11 
    if %char.class% == 1 || %char.class% == 13
      otransform 1281                       
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1267  && %item.vnum% < 1288
        eval num %num%+1
      end
    done
    if %num%>11 
      if %char.class% == 1 || %char.class% == 13
        halt                                  
      end
    end 
  end
  otransform 1280  
end
~
#1232
��� (��������) (������ +13������)~
1 b 100
~
wait 4s 
if %self.vnum% == 1286
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1267  && %item.vnum% < 1288
      eval num %num%+1
    end
  done
  if %num%>13 
    if %char.class% == 1
      otransform 1287                       
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1267  && %item.vnum% < 1288
        eval num %num%+1
      end
    done
    if %num%>13 
      if %char.class% == 1
        halt                                  
      end
    end 
  end
  otransform 1286  
end
~
#1233
��� (��������)(��� 16 ������)~
1 b 100
~
wait 5s 
if %self.vnum% == 1284
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1267  && %item.vnum% < 1288
      eval num %num%+1
    end
  done
  if %num%>15 
    if %char.class% == 1
      otransform 1285                       
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1267  && %item.vnum% < 1288
        eval num %num%+1
      end
    done
    if %num%>15 
      if %char.class% == 1
        halt                                  
      end
    end 
  end
  otransform 1284
end
~
#1234
��� (�������)(��� 15 ������)~
1 b 100
~
wait 5s 
if %self.vnum% == 1282
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 1267  && %item.vnum% < 1288
      eval num %num%+1
    end
  done
  if %num%>14 
    if %char.class% == 13
      otransform 1283                       
    end
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 18
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 1267  && %item.vnum% < 1288
        eval num %num%+1
      end
    done
    if %num%>14 
      if %char.class% == 13
        halt                                  
      end
    end 
  end
  otransform 1282
end
~
$~
