��    u      �  �   l      �	  $   �	     
     
     0
     B
  0   ^
     �
     �
     �
     �
  %   �
  *        1  @   D     �     �     �  .   �  6   �  !   .     P     X  #   w  
   �     �     �     �  +   �  S     �   s            
     	   *     4     Q  _   d     �     �     �                 $   1     V     i     x     �     �     �     �     �     �     �     �     �     �               #     7  '   N     v     �     �     �     �  +   �          1     F     _     y     ~      �     �     �     �  0   �          "     @  +   _     �  /   �    �  �   �  	   o     y     �     �     �  "   �  (   �       *   #  6   N     �  %   �     �     �     �  3   �     #     >     N     c     q     �     �     �     �  e   �  1   B  >   t  U   �  (   	  .   2     a  "   t     �  $   �  <   �          $     2     I  (   a  1   �     �  C   �                 6  6   W  >   �  $   �     �     �  "     	   <     F     Z  )   q  8   �  M   �  �   "     �     �  
   �     �      �  
   �  R         S     m       
   �     �     �  *   �     �               2  
   5     @     E     Z      p     �     �     �     �     �     �     �       5   $     Z     u     �     �      �  ,   �           .   )   G   &   q      �   
   �      �   	   �      �   &   �   8   �   #   6!  &   Z!  %   �!  4   �!     �!  4   �!  &  )"  �   P#     �#     �#  #   �#     !$     :$  0   S$  D   �$     �$  A   �$  G   *%     r%  +   %     �%     �%     �%  A   �%  6   0&     g&      {&     �&     �&     �&     �&  0   �&     !'  c   2'  9   �'  >   �'  T   (           )           '   l   #             8      m               D      :   S      I       B      o   N                  %   M   j   4       5   n   Q       6       ?       p   g   .   q      ;      0   b      !   t       W       Y   \   `   a   J          9   3   X           ^   _   -              H   V   T   2          &       i   e   =   [       	   >      k              E   
   <   r   K      *   +   U                  Z      h                     7   s       L   R   (   ,   @      c   O                       u   ]   d              P   A   F           /   1   f           "   $   G   C    Activate Internet Connection Sharing Add a new profile Add a new wired profile Advanced Settings Always show wired interface Always switch to wired connection when available Anonymous Identity Authentication Automatic (recommended) Automatic Reconnection Automatically connect to this network Automatically reconnect on connection loss Brought to you by: Can't connect to the daemon, trying to start it automatically... Channel Choose from the networks below: Configure Selected Network Configuring preferences for wired profile "$A" Configuring preferences for wireless network "$A" ($B) Configuring wireless interface... Connect Connected to $A at $B (IP: $C) Connected to wired network (IP: $A) Connecting Connecting to daemon... Connection Cancelled Connection Failed: Bad password Connection Failed: Unable to Get IP Address Could not connect to wicd's D-Bus interface. Check the wicd log for error messages. DBus failure! This is most likely caused by the wicd daemon stopping while wicd-curses is running. Please restart the daemon, and then restart wicd-curses. DHCP Client DNS DNS domain Debugging Disconnect from all networks Done connecting... EXCEPTION! Please report this to the maintainer and file a bug report with the backtrace below: Enable debug mode External Programs Flushing the routing table... Gateway General Settings Generating PSK... Generating WPA configuration file... Global DNS servers Hidden Network Hidden Network ESSID IP Identity Key Netmask Network Interfaces No wireless networks found. Not connected OK Obtaining IP address... Password Path to PAC File Preferences Press ESC to cancel Press F8 or Q to quit. Prompt for profile on wired autoconnect Putting interface down... Putting interface up... Refresh network list Removing old connection... Rename wired profile Required encryption information is missing. Resetting IP address... Route Table Flushing Run script after connect Run script before connect Scan Scanning Scanning networks... stand by... Scripts Secured Select Hidden Network ESSID Select or create a wired profile to connect with Setting broadcast address... Setting static DNS servers... Setting static IP addresses... Stop Showing Autoconnect pop-up temporarily Terminated by user This network requires encryption to be enabled. To avoid various complications, wicd-curses does not support directly editing the scripts directly.  However, you can edit them manually.  First, (as root)", open the "$A" config file, and look for the section labeled by the $B in question.  In this case, this is: To connect to a wired network, you must create a network profile.  To create a network profile, type a name that describes this network, and press Add. Unsecured Use Encryption Use Encryption (WEP only) Use Static DNS Use Static IPs Use dBm to measure signal strength Use default profile on wired autoconnect Use global DNS servers Use last used profile on wired autoconnect Use these settings for all networks sharing this essid Username Verifying access point association... WPA Supplicant WPA Supplicant Driver Wicd Curses Interface Wicd needs to access your computer's network cards. Wired Autoconnect Settings Wired Interface Wired Link Detection Wired Network Wired Networks Wired connection detected Wireless Interface Wireless Kill Switch Enabled Wireless Networks You can also configure the wireless networks by looking for the "[<ESSID>]" field in the config file. You must enter your password to configure scripts You should almost always use wext as the WPA supplicant driver wicd-curses does not support deleting the last wired profile.  Try renaming it ('F2') Content-Type: text/plain; charset=UTF-8
 Activa la compartició de connexió a Internet Crear nuevo perfil Crear nuevo perfil de red cableada Configuració avançada Mostra sempre la interfície amb fil Canviar sempre a la xarxa cablejada quan estigui disponible. Identitat anònima Autenticació Automàtic (recomanat) Reconnexió automàtica Connecta automàticament a aquesta xarxa Reconnecta automàticament en perdre la connexió Presentat por: No es pot connectar al Daemon, intentant iniciar automàticament... Canal Tria entre les següents xarxes: Configura la xarxa seleccionada  Configurant les preferències del perfil cablejat "$A" Configurant les preferències de la xarxa sense fils "$A" ($B) Configurant la interfície sense fil Connecta Connectat a $A al $B (IP: $C) Connectat a xarxa amb fil (IP: $A) Conectant Conectant al Daemon Connexió cancel·lada Connexió fallida: contrasenya incorrecta Connexió fallida: impossible d'obtenir una direcció IP No es pot connectar amb la interfície D-Bus Wicd. Verifiqueu l'arxiu de log. Error Dbus! Probablement causat perquè el daemon wicd s'ha aturat mentre wicd-curses s'executava. Reinicieu el daemon i després wicd-curses Client DHCP DNS Domini DNS Depurant Desconnecta de totes les xarxes. Connectat! EXCEPCIÓ! Informeu al mantenedor enviant un informe d'error amb el text següent: Activa el mode de depurat Programes externs Netejant la taula de ruteig Pasareŀla Configuració general Generant PSK... Generant el fitxer de configuració de WPA Servidors DNS globals Xarxa amagada ESSID de xarxa amagada IP Indentitat Clau Màscara de subxarxa Interfícies de xarxa No s'han trobat xarxes sense fil Desconnectat Correcte Obtenint adreça IP... Contrasenya Camí cap al fitxer PAC Preferències Premeu ESC per cancel·lar Premeu F8 o Q per sortir Demana pel perfil al connectar-se a una xarxa amb fil Desactivant la interfície Activant la interfície Resfresca la llista de xarxes Eliminant la connexió vella Renombrar perfil de red cableada Falta informació referent a l'encriptació. Resetejant l'adreça IP Neteja la taula de rutes Executa un "script" després de connectar Executa un "script" abans de connectar Cerca Escanejant Cercant xarxes... esperi... "Scripts" Segura Selecciona el ESSID de la xarxa oculta Selecciona o crea un perfil per a la connexió per cable Configurant l'adreça d'emissió... Configurant servidors DNS estàtics... Configurant adreces IP estàtiques... Desactiva temporalment els emergents d'autoconnexió Finalitzat per l'usuari Aquesta xarxa requereix encriptació per activar-se. Para evitar diversas complicaciones, wicd-curses no admite la edición directa de las secuencias de ordenes. Usted puede editarlas manualmente. En primer lugar, como root, abra el archivo de configuración "$A" y busque la sección etiquetada como $B de que se trate. En este caso, se trata de: Per a connectar a una xarxa amb fil has de crear un perfil de xarxa. Per a crear-lo, escriu un nom que descrigui aquesta xarxa i prem afegir. Insegura Utilitza encriptació Utilitzar Encriptació (només WEP) Utilitza DNS estàtiques Utilitza IPs estàtiques Utilitzar dBm per mesurar la força de la senyal Utilitza el perfil predeterminat al connectar-se a una xarxa amb fil Utilitza servidors DNS globals Utilitza l'últim perfil usat al connectar-se a una xarxa amb fil Utilitza aquesta configuració per a totes les xarxes amb el mateix nom Nom d'usuari Verificant associació amb punt d'accés... WPA Supplicant Connector de WPA Supplicant Interfície Wicd Curses Wicd necessita accedir a les tarjetes de xarxa del teu ordinador. Configuració de l'autoconnexió de la xarxa cablejada Interfície amb fil Detecció de connexió cablejada Xarxa amb fil Xarxes cablejades Connexió per cable detectada Interfície sense fil Interruptor de desconnexió inalàmbrica activat Xarxes sense fil També pots configurar les xarxes sense fil buscant el camp "[<ESSID>]" al fitxer de configuració. Has d'introduir la contrasenya per configurar els scripts Quasi sempre s'ha d'usar wext com a controlador WPA supplicant wicd-curses no soporta la eliminacion del ultimo perfil. Pruebe renombrandolo ('F2') 