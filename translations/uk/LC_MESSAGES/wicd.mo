��    �      �  �   	        
   	  $        9     K     c     u  0   �     �     �     �     �  %     *   9     d  B   k     �  &   �     �     �  .     6   G  !   ~     �     �  #   �  
   �     �             +   @  +   l     �  ?   �  S   �     C     \     h  
   l  
   w  	   �     �     �  #   �  -   �          !     4     :     L     g     y  <   �     �     �     �  $   �  7   $     \     o     ~     �     �     �     �     �     �     �     �          !     /     2     J     S     d     p     �     �  '   �  
   �     �     �          (     C  +   X     �     �     �     �     �     �          '     ,     E      N     o     w       0   �     �     �     �       +   0  %   \     �     �  W   �  C   �  /   @  �   p  �   p  �     �   �  	   7     A     P     j     y  8   �  "   �  (   �       *   $  6   O     �     �  %   �     �     �  3         4     O     _     m     |     �     �  e   �  1   !  (   S     |  I   �  '   �  <   �  &   8  J   _  n   �  ,        F  &   ^  6   �  L   �  ^   	      h   Q   x      �   O   �   2   &!  5   Y!  I   �!  W   �!  Q   1"     �"  4   �"  A   �"     #  (   "#  %   K#  @   q#  J   �#  H   �#  (   F$  �   o$  �   �$  %   �%     �%     &     &     "&     4&  )   N&     x&  9   �&  S   �&  3   '  +   N'     z'     �'  -   �'  "   �'  ;   �'  h   -(  	   �(  "   �(     �(  =   �(  X   )  &   t)     �)  (   �)     �)     �)  -   �)  !   -*  	   O*     Y*  &   r*  B   �*  #   �*      +     +  %   +     A+     O+     m+     y+     �+  3   �+  E   �+     $,  .   0,  .   _,  '   �,  6   �,  ?   �,  B   --  #   p-  4   �-  9   �-  >   .  l   B.  =   �.  5   �.     #/  -   9/     g/  8   }/     �/     �/  &   �/  i   �/     i0  (   �0  C   �0  <   �0  �   01  6   �1  #   2  *   +2  �   V2  s   �2  G   K3  �  �3  �   ^5  �   ^6  T  I7     �8  ,   �8  ?   �8  .   !9  8   P9  �   �9  6   6:  y   m:  =   �:  }   %;  j   �;     <  ,   $<  J   Q<     �<  '   �<  K   �<  0   0=  $   a=     �=      �=  8   �=  4   �=  ,   2>  �   _>  U   '?         H      G       !   ^           �   i   l   �   |   �   P          d   \   &       '      .          /      4           	   A       6           ;   Q          ?   3          $       D       �   F   g   X              �           j       _      7   �   S   s      c   ,          �          v   k       
   �       1          y   r   Z   L       ~   b         +   a       V         =   >   0   )   p       5   q       #   u          t       �      B   W   [              J   E   <       C          U   �                     @   Y   z   `   �   o   h   *   R   }   w   �       %             2   �      e   m           {      "   9      :   8   K   I   T   n       �   x   ]              -   �       M   (       f   �   O       N    About Wicd Activate Internet Connection Sharing Add a new profile Add a new wired profile Advanced Settings Always show wired interface Always switch to wired connection when available Anonymous Identity Authentication Automatic (recommended) Automatic Reconnection Automatically connect to this network Automatically reconnect on connection loss Cancel Changes to your backend won't occur until the daemon is restarted. Channel Check if using madwifi/atheros drivers Choose from the networks below: Configure Selected Network Configuring preferences for wired profile "$A" Configuring preferences for wireless network "$A" ($B) Configuring wireless interface... Connect Connect to selected network Connected to wired network (IP: $A) Connecting Connecting to daemon... Connection Cancelled Connection Failed: Bad password Connection Failed: No DHCP offers received. Connection Failed: Unable to Get IP Address Connection established Connection failed: Could not contact the wireless access point. Could not connect to wicd's D-Bus interface. Check the wicd log for error messages. Create an Ad-Hoc Network DHCP Client DNS DNS domain DNS server Debugging Disconnect from all networks Disconnected Disconnecting active connections... Display notifications about connection status Display this help dialog Done connecting... ESSID Enable debug mode Establishing connection... External Programs Flushing the routing table... For more detailed help, consult the wicd-curses(8) man page. Gateway General Settings Generating PSK... Generating WPA configuration file... Global DNS has not been enabled in general preferences. Global DNS servers Hidden Network Hidden Network ESSID IP Identity Invalid IP address entered. Invalid address in $A entry. Key Netmask Network Interfaces No wireless networks found. Not connected Notifications OK Obtaining IP address... Password Path to PAC File Preferences Preferences dialog Press ESC to cancel Press F8 or Q to quit. Prompt for profile on wired autoconnect Properties Putting interface down... Putting interface up... Refresh network list Removing old connection... Rename wired profile Required encryption information is missing. Resetting IP address... Resume script Route Table Flushing Run post-disconnect script Run pre-disconnect script Run script after connect Run script before connect Scan Scan for hidden networks Scanning Scanning networks... stand by... Scripts Secured Select Hidden Network ESSID Select or create a wired profile to connect with Select scripts Setting encryption info Setting static DNS servers... Setting static IP addresses... Stop Showing Autoconnect pop-up temporarily Stop a network connection in progress Suspend script Terminated by user The wicd daemon has shut down. The UI will not function properly until it is restarted. The wicd daemon is unavailable, so your request cannot be completed This network requires encryption to be enabled. To avoid various complications, wicd-curses does not support directly editing the scripts.  However, you can edit them manually.  First, (as root)", open the "$A" config file, and look for the section labeled by the $B in question.  In this case, this is: To connect to a wired network, you must create a network profile.  To create a network profile, type a name that describes this network, and press Add. To connect to a wired network, you must create a network profile. To create a network profile, type a name that describes this network, and press Add. Unable to connect to wicd daemon DBus interface. This typically means there was a problem starting the daemon. Check the wicd log for more information. Unsecured Use Encryption Use Encryption (WEP only) Use Static DNS Use Static IPs Use as default profile (overwrites any previous default) Use dBm to measure signal strength Use default profile on wired autoconnect Use global DNS servers Use last used profile on wired autoconnect Use these settings for all networks sharing this essid Username Validating authentication... Verifying access point association... Wicd Curses Interface Wicd daemon unreachable Wicd needs to access your computer's network cards. Wired Autoconnect Settings Wired Interface Wired Network Wired Networks Wired connection detected Wireless Interface Wireless Networks You can also configure the wireless networks by looking for the "[<ESSID>]" field in the config file. You must enter your password to configure scripts Content-Type: text/plain; charset=UTF-8
 Про Wicd: Включити загальний доступ до Інтернету: Додати новий профіль: Додати новий проводовий профіль: Додаткові настройки: Завжди показувати проводовий інтерфейс: Завжди відображати проводовий інтерфейс в разі доступності Анонімна ідентифікація: Авторизація: Авто (рекомендовано): Автоматичне перепідключення: Автоматично з'єднуватись з даною мережею: Автоматично перепідключитись при втраті з'єднання: Відміна: Зміни вступлять в силу після перезапуску wicd. Канал: Перевірте використання драйверів madwifi/atheros: Виберіть з доступних мереж: Налагодження обраної мережі: Настройка опцій проводового профілю "$A": Налагодження опцій для проводової мережі "$A" ($B): Налагодження безпровідникового інтерфейсу: З'єднатись: Зєднання з вибраною мережею: Підключено до дротової мережі (IP: $A): З'єднання: З'єднання зі службою... З'єднання відмінено: Помилка з'єднання: Невірний пароль: Помилка з'єднання: відсутня відповідь DHCP Помилка з'єднання: IP-адресу не отримано: З'єднання встановлене З'єднання втрачено: Неможливо з'єднатися з бездротовою точкою доступу. Невдалося з'єднатися з сервісом wicd  за  інтерфейсом DBus. Перевірте реєстарційний журнал на наявність сповіщеннь про помилки. Створити Ad-Hoc мережу: DHCP-клієнт: DNS: DNS домен: DNS сервер: Налагодження: Відключити всі мережі: Роз'єднано Відключення активних з'єднань.. Відображати нагадування про статус з'єднання Відобразити вікно допомоги: Виконується з'єднання... ESSID: Дозволити debug mode: Встановлення з'єднання... Зовнішні програми: Очистка таблиці маршрутизації... Більш детально можна ознайомитись на сторінці wicd-curses(8) man Шлюз: Основні настройки: Генерація PSK... Генерацію файлу конфігурації WPA... Глобальний DNS не активований в загальних опціях: Глобальні DNS-сервери: Скрита мережа: ESSID прихованої мережі: IP: Ідентифікація: Введено невірну IP адресу Невірна адреса в $A Ключ: Маска мережі: Мережеві інтерфейси: Безпровідникові мережі не знайдено. З'єднання відсутнє: Нагадування OK: Отримання IP-адреси... Пароль: Шляш до PAC-файлу: Опції: Параметри: Для відміни - ESC: Натисніть F8 або Q для виходу. Запит вибору профілю при автоконекті: Опції: Відключення інтерфейсу... Підключення інтерфейсу... Оновити список мереж: Видалення старого з'єднання... Перейменування дротового профілю: Відсутня інформація про шифрування. Скидання IP-адресу... Відновити виконання скріпту Очистка таблиці маршрутизації: Виконати скірпт після роз'єднання Виконується(виконати) сценарій підготовки до відключення.  Запустити скрипт після з'єднання: Виконати скрипт до з'єднання: Сканування: Знайти приховані мережі: Сканування: Сканування мереж... зачекайте... Скрипти: Захищено: Виберіть Hidden Network ESSID: Виберіть або створіть проводовий профіль для з'єднання з: Обрати скрипти: Настройки шифрування: Встановлюються статичні DNS-сервери... Встановлення статичних IP-адрес... Тимчасово призупинити відображання вспливаючої підказки автоматичного підключенгня: Зупинка мережевого з'єднання: Призупинити скрипт Зупинено користувачем: Службу wicd було зупинено. Перезапустіть службу для відновлення роботи. Ваш запит не може бути виконаним, тому что демон wicd недоступний Увімкніть шифрування для даної мережі. Для уникнення різноманітних ускладнень wicd-curses не підтримує прямого редагування сценаріїв. Однак ви можете редагувати їх власноруч. Поперше, від імені root відкрийте конфігураційний "$A"  та знайдіть секцію позначену $B (яка Вас цікавить). У цьому разі, це: Для з'єднання з дротовою мережею, потрібно створити профіль мережі. Для створення профілю мережі, введіть його назву і натисніть Додати (Add). Для з'єднання з проводовою мережею, потрібно створити мережевий профіль. Введіть його назву даної мережі і натисніть Додати (Add). Неможливо з'єднатися з сервісом wicd  за  інтерфейсом DBus. Типово це значить, що є проблема із запуском демону. Перевірте реєстраційний журнал wicd для отримання більшої кількості інформації. Незахищене: Використати шифрування: Використати шифрування (тільки WEP): Використати статичний DNS: Використати статичні IP-адреси: Використовувати, як профіль по замовчуванню (перезапис попереднього профілю по замовчуванню) Відображати силу сигналу в dBm: Використати профіль по замовчуванню для проводового автоконекту: Використати глобальні DNS-сервери: Використовувати профіль автоконекту, що використовувався востаннє: Використовувати дані настройки для всіх мереж з даним essid: Користувач: Перевірка авторизації... Перевірка відповідності точки доступу... Інтерфейс Wicd Curses: Служба Wicd недоступна: Wicd потребує доступу до мережевих карт ПК. Налагодження автоконекту: Дротовий інтерфейс: Дротова мережа: Проводові мережі: Визначено проводове з'єднання: Безпровідниковий інтерфейс: Безпровідникові мережі: Ви також можете налаштувати бездротову мережу знайшовши поле з відповідним "[<ESSID>]" у конфігураційному файлі. Для зміни скриптів потрібно ввести Ваш пароль: 