��    }        �   �      �
  
   �
  $   �
     �
     �
     �
     �
       0   1     b     u     �     �  %   �  *   �       @        X     _     g     �  .   �  6   �  !        *     2     N  #   m     �     �     �  +   �  S   
  �   ^     �       	   
          1     J  _   ]     �     �     �  <   �     <     D     U  $   g     �     �     �     �     �     �     �     �     �     
            �  3     �     �     �     �     �       '   '     O     i     �     �     �  +   �     �     
          8     R     W      p     �     �     �  0   �     �     �          0     N  +   m  %   �     �  /   �  �     �     	   �     �     �     �     �  "   �  (        7  *   N  6   y     �     �     �     �  3   �     (     C     S     h     v     �     �     �     �  e   �  >   G  !   �  U   �  (   �  
   '  9   2      l  +   �  !   �  L   �  5   (  I   ^  #   �     �  -   �  0     =   J  E   �     �  �   �     r  
     )   �  (   �  I   �  P   '  7   x     �  :   �  %   �  6   #   -   Z   %   �   @   �   Z   �   �   J!  �   �!     �"     �"  !   �"  0   #  7   D#  (   |#  �   �#  @   e$  !   �$  /   �$  Y   �$     R%     j%     �%  1   �%     �%     �%  !   &     .&     1&     D&     M&  !   e&  /   �&     �&     �&     �&  �  �&     �)      �)     �)  #   �)  ;   �)  9   ,*  M   f*  "   �*  $   �*  "   �*  %   +  *   E+  Q   p+  %   �+  .   �+  =   ,  9   U,     �,  *   �,  :   �,     -     -  0   *-  V   [-  !   �-  %   �-  5   �-  9   0.  6   j.  x   �.  N   /  !   i/  K   �/  �  �/  #  f1     �2  !   �2  0   �2  #   �2  "   3  K   =3  c   �3  ,   �3  p   4  `   �4     �4     5  )   !5  !   K5  \   m5  :   �5     6  &   #6     J6     `6  +   v6  !   �6  P   �6     7  �   /7  w   �7  F   68  �   }8         6   <   X   x              a   y   4   z   
       *   ]       G   j   s       &       A                     J      [          $          v   =       %   f   h   K       0   1   2   S          	       t   "   w       \              7   3   +   V   {   C   l           p   -   R       ;      U       5   L   T       I   N   Q      d       `   F          e      _   (             Z   ?      B       P             ,   /   W       c          ^      8   .   k   )      :   |   @   9   D   u   b   #   q   m   o           >      r               g   '          E   }   n       H          M   Y                              O   !       i    About Wicd Activate Internet Connection Sharing Add a new profile Add a new wired profile Advanced Settings All controls are case sensitive Always show wired interface Always switch to wired connection when available Anonymous Identity Authentication Automatic (recommended) Automatic Reconnection Automatically connect to this network Automatically reconnect on connection loss Brought to you by: Can't connect to the daemon, trying to start it automatically... Cancel Channel Choose from the networks below: Configure Selected Network Configuring preferences for wired profile "$A" Configuring preferences for wireless network "$A" ($B) Configuring wireless interface... Connect Connect to selected network Connected to $A at $B (IP: $C) Connected to wired network (IP: $A) Connecting to daemon... Connection Cancelled Connection Failed: Bad password Connection Failed: Unable to Get IP Address Could not connect to wicd's D-Bus interface. Check the wicd log for error messages. DBus failure! This is most likely caused by the wicd daemon stopping while wicd-curses is running. Please restart the daemon, and then restart wicd-curses. DHCP Client DNS Debugging Disconnect from all networks Display this help dialog Done connecting... EXCEPTION! Please report this to the maintainer and file a bug report with the backtrace below: Enable debug mode External Programs Flushing the routing table... For more detailed help, consult the wicd-curses(8) man page. Gateway General Settings Generating PSK... Generating WPA configuration file... Global DNS servers Hidden Network Hidden Network ESSID IP Identity Key Netmask Network Interfaces No wireless networks found. Not connected OK Obtaining IP address... Once there, you can adjust (or add) the "beforescript", "afterscript", and "disconnectscript" variables as needed, to change the preconnect, postconnect, and disconnect scripts respectively.  Note that you will be specifying the full path to the scripts - not the actual script contents.  You will need to add/edit the script contents separately.  Refer to the wicd manual page for more information. Password Path to PAC File Preferences Preferences dialog Press ESC to cancel Press F8 or Q to quit. Prompt for profile on wired autoconnect Putting interface down... Putting interface up... Refresh network list Removing old connection... Rename wired profile Required encryption information is missing. Resetting IP address... Route Table Flushing Run script after connect Run script before connect Scan Scan for hidden networks Scanning networks... stand by... Scripts Secured Select Hidden Network ESSID Select or create a wired profile to connect with Select scripts Set up Ad-hoc network Setting broadcast address... Setting static DNS servers... Setting static IP addresses... Stop Showing Autoconnect pop-up temporarily Stop a network connection in progress Terminated by user This network requires encryption to be enabled. To avoid various complications, wicd-curses does not support directly editing the scripts.  However, you can edit them manually.  First, (as root)", open the "$A" config file, and look for the section labeled by the $B in question.  In this case, this is: To connect to a wired network, you must create a network profile.  To create a network profile, type a name that describes this network, and press Add. Unsecured Use Encryption Use Encryption (WEP only) Use Static DNS Use Static IPs Use dBm to measure signal strength Use default profile on wired autoconnect Use global DNS servers Use last used profile on wired autoconnect Use these settings for all networks sharing this essid Username WPA Supplicant WPA Supplicant Driver Wicd Curses Interface Wicd needs to access your computer's network cards. Wired Autoconnect Settings Wired Interface Wired Link Detection Wired Network Wired Networks Wired connection detected Wireless Interface Wireless Kill Switch Enabled Wireless Networks You can also configure the wireless networks by looking for the "[<ESSID>]" field in the config file. You should almost always use wext as the WPA supplicant driver use urwid's raw screen controller wicd-curses does not support deleting the last wired profile.  Try renaming it ('F2') Content-Type: text/plain; charset=UTF-8
 О Wicd-у Активирај дељење интернет везе Додај нови профил Додај нови жични профил Напредне поставке Све котроле су осетљиве на величину слова Увек прикажи жични интерфејс Увек пређи на жичну везу ако је доступна Анонимни идентитет Аутентификација аутоматско (препоручено) Аутоматско обнављање везе Аутоматски се повежи на ову мрежу Сам обнови повезивање при пуцању везе Омогућили су вам: Не могу да се повежем са даемоном. Покушавам да га покренем аутоматски... Откажи Канал Изаберите мреже испод: Подеси изабрану мрежу Подешавам поставке за жични профил „$A“ Подешавам поставке за бежичну мрежу „$A“ ($B) Подешавам бежични интерфејс... Повежи се Повезује се са изабраном мрежом Повезан са $A na $B (IP: $C) Повезан са жичном мрежом (IP: $A) Повезујем се са даемоном Отказано повезивање Неуспешно повезивање: лоша лозинка Неуспешно повезивање: не могу да добијем IP адресу Не могу да се повежем са D-BUS интерфејсом wicd-а. Проверите поруке о грешкама у његовом дневнику. Грешка D-Bus-a! Ово је вероватно изазвано прекидом рада wicd даемона док је wicd-curses радио. Покрените поново даемона а затим и wicd-curses. DHCP клијент DNS Отклањање грешака Искључује се са свих мрежа Приказује овај дијалог помоћи Завршено повезивање... ОДСТУПАЊЕ! Молимо вас, пријавите ово програмеру и пријавите грешку са подацима о грешци наведеним испод: Укључи режим за исправљање грешака Спољашњи програми Празним табелу рутирања... За детаљнију помоћ, погледајте wicd-curses(8) man страну. Мрежни излаз Опште поставке Генеришем PSK... Правим фајл WPA подешавања... Општи DNS сервери Скривена мрежа ESSID скривене мреже IP Идентитет Кључ Мрежна маска Мрежни интерфејси Нису нађене бежичне мреже Неповезан У реду Узимам IP адресу... Када сте ту, можете подешавати (или додавати) променљиве у „предскрипти“, „постскрипти“ и „скрипти искључивања“ да бисте мењали скрипте пред повезивање, након повезивања и искључивања. Знајте да овде наводите пуну путању до скрипти - не садржај саме скрипте. Мораћете да додате/уредите садржај скрипте одвојено. Проучите упутство wicd-а за више информација. Лозинка Путања до PAC фајла Подешавања Дијалог подешавања Притисните Ескејп за отказивање Притисните F8 или Q за напуштање. Питај за профил при жичном самоповезивању Обарам интерфејс... Подижем интерфејс... Освежи листу мрежа Уклањам стару везу... Преименуј жични профил Недостаје потребна информација о шифровању. Ресетујем IP адресу... Пражњење табеле рутирања Покрени скрипту након повезивања Покрени скрипту пре повезивања Претражи Потражи скривене мреже Претражујем мреже... сачекајте... Скрипте Обезбеђена Изабери ESSID скривене мреже Изабери или направи жични профил за повезивање Изаберите скрипте Постави ад-хок мрежу Постављам адресу емитовања... Постављам статичке DNS сервере... Постављам статичку IP адресу... Привремено прекини да приказујеш искачући прозор самоповезивања Зауставља мрежно повезивање које је у току Прекинуо корисник Ова мрежа захтева да се укључи шифровање. Да би се избегле разне компликације, wicd-curses не подржава директно уређивање скрипти. Међутим, можете их уређивати ручно. Прво, (као root) отворите „$A“ фајл подешавања и погледајте одељак под називом $B. У овом случају то је: Да бисте се повезали са жичном мрежом, морате направити мрежни профил. Да бисте направили мрежни профил, унесите име које описује ову мрежу и кликните на Додај. Необезбеђена Користи шифровање Користи шифровање (само WEP) Користи статички DNS Користи статички IP Користи децибеле као меру јачине сигнала Користи подразумевани профил за жично самоповезивање Користи опште DNS сервере Користи последње коришћени профил при жичном самоповезивању Користи ове поставке за све мреже које имају овај ESSID Корисничко име WPA омогућивач Драјвер WPA омогућивача Curses интерфејс Wicd-а Wicd-у је потребан приступ мрежним картама рачунара. Поставке жичног самоповезивања Жични интерфејс Откривање жичне везе Жична мрежа Жичне мреже Откривена је жична веза Бежични интерфејс Укључен је прекидач за убијање бежичне везе Бежичне мреже Можете бежичне мреже подешавати тражењем "[<ESSID>]" поља у фајлу са подешавањима. Требало би готово увек да користите wext као драјвер WPA омогућивача користи urwid-ов сирови контролер екрана wicd-curses не подржава брисање последњег жичног профила. Покушајте са преименовањем (F2) 