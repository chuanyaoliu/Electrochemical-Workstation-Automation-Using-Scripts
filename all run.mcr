�	  # �绯ѧ�Զ����������
# ��������Ϊ��200mv����ɨ1500segments���л���ٲ��ԣ�CV����10segments��GCD����6segments��EIS����before�� after��GCDѭ���ȶ��Բ���
# CV��1000mv��500mv��200mv��100mv��50mv��20mv��10mv��5mv
# GCD��0.5A-g��1A-g��2A-g��3A-g��5A-g��10A-g��20A-g��30A-g��50A-g��100A-g
# �洢���ݵ�Ŀ¼�������ȴ����ã���Ȼ�ᱨ�������д���ǰ����test��ȷ������
# -------------------------
folder: D:\electrochem\20190831PPY

tech=cv             
ei=0              
eh=0.6             
el=0
v=0.2
cl=1500
sens=1e-1
run                 
save:activate run 

tech=cv             
ei=0              
eh=0.4             
el=0
v=1
cl=10
sens=1e-1
run                 
save:1000mv            

v=0.5                  
run
save:500mv

v=0.2
run
save: 200mv

v=0.1
run
save: 100mv

v=0.05
run
save: 50mv

v=0.02
run
save: 20mv

v=0.01
run
save: 10mv

v=0.005
run
save: 5mv

tech=cp             
ic=0.002
ia=0.002
eh=0.35
el=0
tc=10
ta=10
pn=p
si=0.1
cl=6
prioe
run        
save:1A-g 

ic=0.001
ia=0.001
run                 
save:0.5A-g
             
ic=0.004
ia=0.004
run                 
save:2A-g            

ic=0.006
ia=0.006
run                 
save:3A-g  

ic=0.008
ia=0.008
run                 
save:4A-g

ic=0.01
ia=0.01
run                 
save:5A-g

ic=0.012
ia=0.012
run                 
save:6A-g

ic=0.014
ia=0.014
run                 
save:7A-g

ic=0.016
ia=0.016
run                 
save:8A-g

ic=0.018
ia=0.018
run                 
save:9A-g

ic=0.02
ia=0.02
run                 
save:10A-g

ic=0.04
ia=0.04
run                 
save:20A-g

ic=0.06
ia=0.06
run                 
save:30A-g

ic=0.1
ia=0.1
run                 
save:50A-g

ic=0.2
ia=0.2
run                 
save:100A-g




tech=imp
ei=0
fl=0.1
fh=100000
amp=0.005
qt=2
impautosens	
impsf	
ibias=2
cl1=1-12
cl2=1-12
cl3=1-12
cl4=1-12
cl5=1-12
run                 
save:EIS-before

tech=cp             
ic=0.02
ia=0.02
eh=0.4
el=0
tc=100
ta=100
pn=p
si=0.001
cl=100
prioe
run                 
save:longtime1

run
save:longtime2 

run
save:longtime3 

run
save:longtime4 

run
save:longtime5 

run
save:longtime6 

tech=imp
ei=0
fl=0.1
fh=100000
amp=0.005
qt=2
impsf	
ibias=2
cl1=1-12
cl2=1-12
cl3=1-12
cl4=1-12
cl5=1-12
run                 
save:EIS-after


          
save:EIS-after


