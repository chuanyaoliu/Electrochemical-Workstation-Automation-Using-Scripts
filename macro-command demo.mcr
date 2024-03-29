C  # Welcome to Macro Command!
#
# Use this dialog box to execute a series of commands.
# This is analogous to batch files in Windows or shell scripts in Unix/Linux.
# Click the 'Help' button for more information.
# -------------------------

# Beep three times.
for: 3       ; comments following ';' are also ignored
  beep
  delay: 1
next         # end of 'for...next' loop

# Run a CV with internal dummy cell (resistor).
dummyon      # Control > Cell > Test with Internal Dummy Cell
tech: cv
ei: 0.1
eh: 0.1
el: -0.1
qt: 0        # Quiet Time
run
dummyoff


# CV for 8 times
for: 10      
  tech=cv             
  ei=0              
  eh=0.4             
  el=0
  v=1
  cl=10
  sens=1e-1
  run                 
  save:1000mv                  
  tsave:1000mv
  delay: 1
next        

# longtime run for 8 times
for: 8      
   tech=cp             
   ic=0.02
   ia=0.02
   eh=0.4
   el=0
   tc=100
   ta=100
   pn=p
   si=0.001
   cl=2
   prioe
   run                 
   save:long1
   tsave:long1
   delay: 1
next       



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
save:long1
tsave:long1

run
save:longtime2 