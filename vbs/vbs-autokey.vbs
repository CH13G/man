set ws = wscript.createObject("Wscript.Shell")
dim res
res = msgBox("���л��������˲�", 64, "��ʾ")

do
  wscript.sleep 2000
  do while ws.appActivate("���������˲������㾭��� 3.65.6106 (˫��-����˫��:����)")=true
    ws.sendKeys "^{TAB}"	' ����
    wscript.sleep 100		' ���ʱ��
    ws.sendKeys "{F1}"	' ����
    wscript.sleep 1000		' ���ʱ��
  loop
  res = msgBox("�˳��Զ�������", 65, "��ʾ")
loop while res = vbcancel