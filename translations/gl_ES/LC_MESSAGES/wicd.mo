��    x      �  �   �      (
     )
     +
     -
     /
     1
     3
     5
     7
     9
     ;
  $   =
     b
     t
     �
     �
  0   �
     �
     �
          %  %   <  *   b     �  @   �     �     �  .   	  6   8  !   o     �     �  #   �     �     �            +   7  S   c     �  �   �     i     u  	   y     �  _   �     �               8     @     Q  $   c     �     �     �     �     �     �     �     �     �            7  ,     d     m     ~     �     �  '   �     �     �          *  +   ?     k     �     �     �     �     �      �                 0   3     d     �     �  +   �     �  /   �    -  �   6  	   �     �     �            "     (   B     k  *   �  6   �     �     �     �       3   (     \     w     �     �     �     �     �     �  >     U   N  �   �     �     �     �     �     �     �     �     �     �     �  0   �     �  (   �       #     0   :     k          �     �  $   �  *   �       D         e  $   k  =   �  B   �          0     9  $   W     |     �     �  *   �  9   �  \        x  �   �     :     G  	   K     U  m   l     �     �     	     )     ;     K  (   Z     �     �     �     �  
   �     �     �     �      �           ,     C      �!     �!     �!     �!     "  >   %"     d"     ~"     �"  !   �"  ,   �"     #      #  -   ;#  1   i#  /   �#  
   �#     �#     �#     
$      $  @   2$  "   s$  (   �$  '   �$  C   �$     +%  .   A%    p%  �   �&  
   '     "'     /'     K'     ^'  &   p'  C   �'     �'  =   �'  C   8(     |(     �(     �(     �(  8   �(      )  4   &)     [)  $   o)     �)     �)     �)  -   �)  A   �)  c   @*         [   W   >   F   &   ,   (      1       6       v   a   f      4   p       s   S       E      L       d       e          -      l       M   H                   t   U       C   :                        	   
      +   <   ]   R          O   A       "           c   Y         P   8       7                 j   o                  _          *   n   r   !   ^   q   ;   `       5   X       I       .       9   T   %   h       $          3      J   ?   D   B   0   @                          w          )   g   N      2   Z   V       =   G       \   /       u   '          i              Q       x      K   m   b   #   k    0 1 2 3 4 5 6 7 8 9 Activate Internet Connection Sharing Add a new profile Add a new wired profile Advanced Settings Always show wired interface Always switch to wired connection when available Anonymous Identity Authentication Automatic (recommended) Automatic Reconnection Automatically connect to this network Automatically reconnect on connection loss Brought to you by: Can't connect to the daemon, trying to start it automatically... Channel Choose from the networks below: Configuring preferences for wired profile "$A" Configuring preferences for wireless network "$A" ($B) Configuring wireless interface... Connect Connected to $A at $B (IP: $C) Connected to wired network (IP: $A) Connecting to daemon... Connecting... Connection Cancelled Connection Failed: Bad password Connection Failed: Unable to Get IP Address Could not connect to wicd's D-Bus interface. Check the wicd log for error messages. Create Ad-Hoc network DBus failure! This is most likely caused by the wicd daemon stopping while wicd-curses is running. Please restart the daemon, and then restart wicd-curses. DHCP Client DNS Debugging Done connecting... EXCEPTION! Please report this to the maintainer and file a bug report with the backtrace below: Enable debug mode External Programs Flushing the routing table... Gateway General Settings Generating PSK... Generating WPA configuration file... Global DNS servers Hidden Network Hidden Network ESSID IP Identity Key Netmask Network Interfaces No wireless networks found. Not connected Obtaining IP address... Once here, you can adjust (or add) the "beforescript", "afterscript", and "disconnectscript" variables as needed, to change the preconnect, postconnect, and disconnect scripts respectively. Alternatively, you can configure the wireless networks by ESSID, by looking for the "[<ESSID>]" field in the config file. Password Path to PAC File Preferences Press ESC to cancel Press F8 or Q to quit. Prompt for profile on wired autoconnect Putting interface down... Putting interface up... Removing old connection... Rename wired profile Required encryption information is missing. Resetting IP address... Route Table Flushing Run disconnect script Run script after connect Run script before connect Scan Scanning networks... stand by... Scripts Secured Select Hidden Network ESSID Select or create a wired profile to connect with Setting broadcast address... Setting static DNS servers... Setting static IP addresses... Stop Showing Autoconnect pop-up temporarily Terminated by user This network requires encryption to be enabled. To avoid various complications, wicd-curses does not support directly editing the scripts directly.  However, you can edit them manually.  First, (as root)", open the "$A" config file, and look for the section labeled by the $B in question.  In this case, this is: To connect to a wired network, you must create a network profile.  To create a network profile, type a name that describes this network, and press Add. Unsecured Use Encryption Use Encryption (WEP only) Use Static DNS Use Static IPs Use dBm to measure signal strength Use default profile on wired autoconnect Use global DNS servers Use last used profile on wired autoconnect Use these settings for all networks sharing this essid Username WPA Supplicant WPA Supplicant Driver Wicd Curses Interface Wicd needs to access your computer's network cards. Wired Autoconnect Setting: Wired Autoconnect Settings Wired Interface Wired Link Detection Wired Network Wired connection detected Wireless Interface Wireless Kill Switch Enabled You should almost always use wext as the WPA supplicant driver wicd-curses does not support deleting the last wired profile.  Try renaming it ('F2') Project-Id-Version: Wicd 
POT-Creation-Date: 2009-02-06 15:29+0000
PO-Revision-Date: 2009-02-06 15:29+0000
Language-Team: Galego
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 0 1 2 3 4 5 6 7 8 9 Activar a compartición da conexión de Internet Engadir novo perfíl Engadir un novo perfil de rede con fíos Opcións avanzadas Amosar sempre a interface con fíos Cambiar á conexión con fíos si se dispon dela Identidade anónima Autenticación Automático (recomendado) Reconexión automática Conectar automaticamente a esta rede Conectar automaticamente ao perder o sinal Presentado por: Non se pode conectar co Daemon, tentando iniciar automáticamente... Canle Seleccione unha das seguintes redes: Configurando as preferencias do perfil da rede con fíos "$A" Configurando as preferencias do perfil da rede sen fíos "$A" ($B) Configurando rede sen fíos... Conectar Conectado a $A a $B% (IP: $C) Conectado á rede con fíos (IP: $A) Conectando ao Daemon... Conectando... Conexión cancelada A conexión fallou: contrasinal incorrecto A conexión fallou: non se puido conseguir un enderezo IP Non se puido conectar coa a interfaz D-Bus de wicd. Comprobe o rexistro de mensajes de erro. Crear rede Ad-Hoc Fallou Dbus! É probable que teña sido causado porque o Daemon wicd detuvose mentras wicd-curses estaba funcionando. Por favor reinicie o Daemon, e logo reinicie wicd-curses. Cliente DHCP DNS Depurando Conexión realizada... EXCEPCIÓN! Por favor, informe ao mantedor e envie co ficheiro de informe de erro o trazado inverso seguinte: Activar modo de depuración Programas externos Baleirando a táboa de rutas... Porta de ligazón Opcións xerais Xerando PSK... Xerando arquivo de configuración WPA... Servidores globais de DNS Rede agochada ESSID de rede agochada IP Identidade Chave Máscara de subrede Interfaces de rede Non se atoparon redes sen fíos. Non conectado Obtendo enderezo IP... Unha vez aquí, podense axustar (ou engadir) as variables "antes da secuencia de ordenes", "despois da secuencia de ordenes" e "secuencia de ordenes de desconexión" necesarias para cambiar o estado de "conectar antes", conectar despois" e "desactivar secuencia de ordenes". Si o prefire, pode configurar as redes sen fíos por ESSID, buscando o "[]" nos ficheiros de configuración. Contrasinal Camiño ao ficheiro PAC Preferencias Prema ESC para cancelar Prema F8 ou Q para saír Preguntar polo perfil a empregar ao conectar á rede con fíos Desactivando interface... Activando interface... Eliminando conexión antiga... Renomear perfíl da rede con fios Falta a información precisa para o cifrado. Restablecendo enderezo IP... Baleirar a táboa de rutas Executar secuencia de ordenes de desconexión Executar secuencia de ordenes despois de conectar Executar secuencia de ordenes antes de conectar Explorando Escaneando redes... agarde... Secuencias de ordenes Segura Escolla o ESSID da rede agochada Seleccionar ou crear un perfil para conectarse á rede sen fíos Establecendo enderezo broadcast... Establecendo enderezos DNS estáticos... Establecendo enderezos IP estáticos... Deixar de amosar temporalmente a fiestra emerxente de autoconexión Rematado polo usuario Esta rede require cifrado para ser habilitada. Para evitar diversas complicaciós, wicd-curses non admite a edición directa das secuencias de ordenes. Vostede pode editalas manualmente. En primeiro lugar, como root, abra o ficheiro de configuración "$A" e busque a sección etiquetada como $B de que se trate. Neste caso tratase de: Para conectarse a unha rede con fíos, debe crear un perfil de rede. Para facelo, escriba un nome que describa a rede e prema Engadir. Non segura Usar cifrado Usar cifrado (só para WEP) Usar DNS estática Usar IP estática Usar dBm como medida da forza do sinal Empregar o perfil de rede por defecto ao conectar á rede con fíos Usar servidores de DNS globais Empregar o último perfil usado ao conectar á rede con fíos Empregar estas opcións para tódalas redes compartidas nesta essid Nome de usuario WPA Supplicant Controlador WPA supplicant Interface Wicd Curses Wicd precisa acceder ás tarxetas de rede do seu equipo. Autoconexión á rede con fíos: Axustes para conexión automática de rede con fíos Interface con fíos Detectar conexión da rede con fíos Rede con fíos Detactada rede con fíos Interface sen fíos Interruptor de dispositivo sen fíos activado Casi sempre se debe utilizar wext como controlador WPA supplicant Wicd-curses non admite o borrado do último perfíl de rede con fíos. Tente mudarlle o nome ('F2') 