''''Featured in vbs''''''''''''''''''''''''''''''''''''''''''''
'
' 1. Ignore case
' 2.
'
''''Variables'''''''''''''''''''''''''''''''''''''''''''''''''''
'
'   dim var1, var2
'
' In vbs, a variable has only one type when it is first
' declared. These functions are helpful for converting them to
' the type you want:
'
'   Cbool - to bool
'   Cbyte - to int range 0-255
'   Cint - to int range ???
'   Clng - to long int range ???
'   Cdate - to date
'   Ccur - to float range ??? tol 1e-4
'   Cdbl - to double range ??? tol ???
'   Csng - to float range ??? tol ???
'   Cstr - to string
'
''''Array''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
'   dim array(<size>, <dimension>)
'   ' try this dynamic array!
'   dim array()
'   redim preserve array(<new_size>, <new_dimension>)
'
''''Operator'''''''''''''''''''''''''''''''''''''''''''''''''''
'
'   +       plus
'   -       minus
'   *       multiply
'   /       division
'   ^       power
'   mod     mod...you know
'   =       equal
'   <>      not equal
'   <=      less or equal
'   >=      greater or equal
'   <       less
'   >       greater
'   and     logic and
'   or      logic or
'   not     logic not
'   &       used to connect strings, '+' has same effect
'   is      see if left operand is the type of right operand
'
''''if & select case'''''''''''''''''''''''''''''''''''''''''''
'
' 1. if
'
'   if <condition 1> then
'       <do something 1>
'   else if <condition 2> then
'       <do something 2>
'   end if
'
' 2. select case
'
'   select case <variable>
'       case <value 1>
'           <do something 1>
'       case <value 2>
'           <do something 2>
'       case else
'           <do something special>
'   end select
'
''''for & while''''''''''''''''''''''''''''''''''''''''''''''''
'
' 1. for-to
'
'   for <var> = <begin> to <end>
'       <do something>
'   next
'
' 2. for-in
'
'   for each <var> in <sequence>
'       <do something>
'   next
'
' ' You can exit for by 'exit for'.
'
' 3. do while
'
'   do while <condition>
'       <do something>
'   loop
'
' 4. do until
'
'   do until <condition>
'       <do something>
'   loop
'
' ' You can exit do by 'exit do'
'
' 5. while
'
'   while <condition>
'       <do something>
'   wend
'
''''Define your func, baby!''''''''''''''''''''''''''''''''''''
'
'   function <name>(<parameters>)
'       <balabala>
'       <name> = <return value>
'   end function
'
''''Miscellaneous''''''''''''''''''''''''''''''''''''''''''''''
'
' Builtin Functions:
'
'   lcase(str) -> str
'       to lowercase'
'
'   ucase(str) -> str
'       to uppercase
'
''''So, what's next?'''''''''''''''''''''''''''''''''''''''''''


























Option Explicit ' declare before use variable

''''Hello world''''''''''''''''''''''''''''''''''''''''''''''''
'
'   dim msg, name
'   name = InputBox("�������մ�����", "...")
'   msg = MsgBox("��ã��������ӡ�", VbExclamation, "���Լ�������ʺ�")
'   ' �ȼ۵أ�
'   msgbox "I'm content.", VbExclamation, "I'm title."
'   ' ���ߣ�
'   Wscript.Echo "hello, " & _
'                "world."
'
''''Run Notepad''''''''''''''''''''''''''''''''''''''''''''''''
'
'   dim objShell
'   set objShell = CreateObject("Wscript.Shell")
'   objShell.Run "notepad"
'   ' Run <path>, <window style>=1, <wait>=false -> int
'
''''Error Handler''''''''''''''''''''''''''''''''''''''''''''''
'
'   On Error Resume Next ' skip error
'
'   dim i
'   i = 42/0
'   if err.number <> 0 then
'       Wscript.Echo err.source & err.number & ": " & err.description
'   end if
'
''''Application Lock'''''''''''''''''''''''''''''''''''''''''''
'
'   On Error Resume Next '�������д���
'
'   dim bag, pipe, honker, good
'
'   do
'       ' ��Ϊ���ؼ����
'       good = "."
'
'       ' ���ӵ� cimv2 �����ռ�
'       set bag = getObject("winmgmts:\\"& good &"\root\cimv2")
'
'       ' �����ҵļ�����ϲ��������еĳ���
'       set pipe = bag.execQuery("select * from win32_process where name='mspaint.exe' or name='winmine.exe'")
'
'       for each proc in pipe
'
'           proc.terminate()
'           msgbox "���ֵ���ϵͳ�����ѽ��й������ƣ�" & vbcrlf & "��ʹ�����������",,"΢����ʾ"
'
'       next
'
'       wscript.sleep 6000    'ÿ1���Ӽ��һ��
'
'   loop
'
'   ' Ctrl+Alt+Del �� Ctrl+Shift+Esc �� windows ���������, ���� Wscript.exe �� wmiprvse.exe ���̵������Խ���.
'
