��    �      �  �   �	      (  
   )  $   4     Y     k     �     �     �  0   �               $     <  %   S  *   y     �  @   �     �  B   �     B  &   J     q     �  .   �  6   �  !        4     <     X  #   w  
   �     �     �     �  +   �  +        K  ?   b  S   �  �   �     �  �   �     =     I  
   M  
   X  	   c     m     �  #   �  -   �     �            _        {     �     �     �  <   �               .  $   @  7   e     �     �     �     �     �     �     �          	          8     F     T     W     o     x     �     �     �     �  '   �  
   �                8     M     h  +   }     �     �     �     �     	          '      0     Q     Y     g     o  0   �     �     �     �     �          4  +   S  %        �  W   �  C     /   T    �  �   �  �   %  �   �  q   T  	   �     �     �     �       8     "   P  (   s     �  *   �  6   �            %   ;     a     p     �     �  3   �     �                 (      6      E      _      r      �   e   �   1   !  >   9!  !   x!  U   �!  (   �!     "  &   !"     H"  #   ["     "  (   �"     �"  C   �"      #     1#     ?#     [#  &   s#  )   �#  !   �#  N   �#     5$  a   <$     �$  3   �$     �$     �$  =   %  A   N%  $   �%     �%     �%  '   �%  &   �%     %&      .&     O&  .   e&  9   �&  /   �&     �&  ^   '  b   w'  �   �'     h(  |   �(     �(     )  
   )  
   )     %)  &   1)  
   X)  "   c)  )   �)     �)     �)     �)  {   �)     X*     m*     �*     �*  >   �*     �*     �*     +  "   $+  >   G+     �+     �+  
   �+     �+  	   �+     �+     �+     �+     �+     �+     ,     ,     .,     1,  	   J,     T,  
   j,     u,     �,  "   �,  7   �,     �,     -      -     :-  "   T-  (   w-  *   �-     �-  !   �-     .     %.     B.     G.     a.  (   h.     �.     �.  	   �.     �.  +   �.     �.     /     "/  "   >/     a/     /  8   �/  5   �/     0  o   !0  R   �0  4   �0  �   1  �   2  �   �2  �   �3  �   44  
   �4     �4     �4     5     &5  B   @5  '   �5  6   �5     �5  E   �5  ?   D6     �6     �6  .   �6     �6     �6     7  +   7  0   D7  A   u7     �7  $   �7     �7     8  %   8     A8     U8     o8  m   �8  5   �8  F   '9  '   n9  s   �9     I   P                   K   �         `   O   Z   �       X   J          (   Y                  a   5   
   g   n       U           8   "   [   D   )             �       b   @         �   4   u   �   �       $       9   �   �   !       �       �             S   -      f   L   N   �       �              y   �      ]             >   =   �   R   w   �   ;       s   ^      W   �   o   �   0       }      \   m   j   �   �               �          k   V   |   	   C   '   �           G   l       p      #   7   %       �   ?       h   *         c   �       q       F       2   {                        <       d   T   .   H   :   v   z   Q       �           ,   e       &           t              r   +   _   /       �   �   ~       �       3   E   i   M                     A      B   1   x   �   �   6           About Wicd Activate Internet Connection Sharing Add a new profile Add a new wired profile Advanced Settings All controls are case sensitive Always show wired interface Always switch to wired connection when available Anonymous Identity Authentication Automatic (recommended) Automatic Reconnection Automatically connect to this network Automatically reconnect on connection loss Brought to you by: Can't connect to the daemon, trying to start it automatically... Cancel Changes to your backend won't occur until the daemon is restarted. Channel Check if using madwifi/atheros drivers Choose from the networks below: Configure Selected Network Configuring preferences for wired profile "$A" Configuring preferences for wireless network "$A" ($B) Configuring wireless interface... Connect Connect to selected network Connected to $A at $B (IP: $C) Connected to wired network (IP: $A) Connecting Connecting to daemon... Connection Cancelled Connection Failed: Bad password Connection Failed: No DHCP offers received. Connection Failed: Unable to Get IP Address Connection established Connection failed: Could not contact the wireless access point. Could not connect to wicd's D-Bus interface. Check the wicd log for error messages. Could not find a graphical sudo program.  The script editor could not be launched.  You'll have to edit scripts directly your configuration file. Create an Ad-Hoc Network DBus failure! This is most likely caused by the wicd daemon stopping while wicd-curses is running. Please restart the daemon, and then restart wicd-curses. DHCP Client DNS DNS domain DNS server Debugging Disconnect from all networks Disconnected Disconnecting active connections... Display notifications about connection status Display this help dialog Done connecting... ESSID EXCEPTION! Please report this to the maintainer and file a bug report with the backtrace below: Enable debug mode Establishing connection... External Programs Flushing the routing table... For more detailed help, consult the wicd-curses(8) man page. Gateway General Settings Generating PSK... Generating WPA configuration file... Global DNS has not been enabled in general preferences. Global DNS servers Hidden Network Hidden Network ESSID IP Identity Invalid address in $A entry. Key Netmask Network Interfaces No wireless networks found. Not connected Notifications OK Obtaining IP address... Password Path to PAC File Preferences Preferences dialog Press ESC to cancel Press F8 or Q to quit. Prompt for profile on wired autoconnect Properties Putting interface down... Putting interface up... Refresh network list Removing old connection... Rename wired profile Required encryption information is missing. Resetting IP address... Route Table Flushing Run script after connect Run script before connect Scan Scan for hidden networks Scanning Scanning networks... stand by... Scripts Search domain Secured Select Hidden Network ESSID Select or create a wired profile to connect with Select scripts Set up Ad-hoc network Setting broadcast address... Setting encryption info Setting static DNS servers... Setting static IP addresses... Stop Showing Autoconnect pop-up temporarily Stop a network connection in progress Terminated by user The wicd daemon has shut down. The UI will not function properly until it is restarted. The wicd daemon is unavailable, so your request cannot be completed This network requires encryption to be enabled. To avoid various complications, wicd-curses does not support directly editing the scripts directly.  However, you can edit them manually.  First, (as root)", open the "$A" config file, and look for the section labeled by the $B in question.  In this case, this is: To connect to a wired network, you must create a network profile.  To create a network profile, type a name that describes this network, and press Add. To connect to a wired network, you must create a network profile. To create a network profile, type a name that describes this network, and press Add. Unable to connect to wicd daemon DBus interface. This typically means there was a problem starting the daemon. Check the wicd log for more information. Unable to contact the Wicd daemon due to an access denied error from DBus.  Please check your DBus configuration. Unsecured Use Encryption Use Encryption (WEP only) Use Static DNS Use Static IPs Use as default profile (overwrites any previous default) Use dBm to measure signal strength Use default profile on wired autoconnect Use global DNS servers Use last used profile on wired autoconnect Use these settings for all networks sharing this essid Username Validating authentication... Verifying access point association... WPA Supplicant WPA Supplicant Driver Wicd Curses Interface Wicd daemon unreachable Wicd needs to access your computer's network cards. Wired Autoconnect Settings Wired Interface Wired Link Detection Wired Network Wired Networks Wired connection detected Wireless Interface Wireless Kill Switch Enabled Wireless Networks You can also configure the wireless networks by looking for the "[<ESSID>]" field in the config file. You must enter your password to configure scripts You should almost always use wext as the WPA supplicant driver use urwid's raw screen controller wicd-curses does not support deleting the last wired profile.  Try renaming it ('F2') Content-Type: text/plain; charset=UTF-8
 Om wicd Aktivera delning av Internetanslutning Skapa en ny profil Skapa ny tråbunden nätverksprofil Avancerade inställningar Alla kontroller är skiftlägeskänsliga Visa alltid kabelnätverk Byt alltid till trådbunden anslutning om sådan finns tillgänglig Anonym identitet Autentisering Automatiskt (rekommenderas) Återanslut automatiskt Anslut automatiskt till detta nätverk Återanslut automatiskt vid frånkoppling Gjordes tillgänglig till dig av: Kan inte ansluta till bakgrundsprocessen, försöker starta den automatiskt... Avbryt Ändringar av dina serverinställningar verkställs inte förens du startat om bakgrundsprocessen Kanal Kontrollera om madwifi/atheros drivrutiner används Välj från nätverken nedan: Konfigurera valt nätverk Konfigurerar egenskaper för trådbunden nätverksprofil "$A" Konfigurerar inställningarna för trådlöst nätverk "$A" ($B): Konfigurerar trådlös anslutning... Anslut Anslut till valt nätverk Ansluten till $A med signal $B (IP: $C) Ansluten till lokalt nätverk (IP: $A) Ansluter Ansluter till bakgrundsprocessen Anslutningen avbruten Anslutningen misslyckades: Felaktigt lösenord Anslutningen misslyckades: erhöll inga DHCP erbjudanden. Anslutningen misslyckades: Fick ingen IP-adress Anslutningen upprättades Anslutningen misslyckades: Kunde inte erhålla kontakt med den trådlösa anslutnings punkten. Kunde inte ansluta till wicd:s D-Bus gränssnitt. Kontrollera wicd:s loggfil efter felmeddelanden. Kunde inte finna ett grafiskt sudo program så skript-redigeraren kunde inte startas. Du måste redigera skript direkt i konfigurationsfilen. Skapa ett Ad-Hoc nätverk DBus fel. Detta orsakas förmodligen av att wicd demonen stoppats medan wicd-curses kör. Starta om demonen och wicd-curses. DHCP-klient DNS DNS-domän DNS server Felsökning Koppla ner från samtliga anslutningar Nedkopplad Kopplar ner aktiva anslutningar... Visa kungörelser om anslutningens status Visa hjälpfönster Ansluting klar... ESSID UNDANTAG! Vorgod och rapportera detta till programmets utvecklare samt skriv en buggrapport med bakåtspårningen nedanför Aktivera debug-läge Upprättar anslutning... Externa program Tömmer routningstabellen... För en mer detaljerad hjälp läs wicd-curses(8) manualsidan. Gateway Generella Inställningar Genererar PSK... Genererar WPA-konfigureringsfil... Global DNS har inte aktiverats i de generella inställningarna Globala DNS-servrar Dolt nätverk Dolt ESSID IP Identitet Felaktig adress i $A Nyckel Nätmask Nätverskort: Inga trådlösa nätverk funna. Ej ansluten Notifikeringar OK Väntar på IP-adress... Lösenord Sökväg till PAC-fil Egenskaper Egenskapsrutan: Tryck ESC för att avbryta Tryck F8 eller Q för att avsluta. Fråga om profil för automatisk trådbunden anslutning Egenskaper: Kopplar ner ansluting... Kopplar upp anslutning... Uppdatera nätverkslistan Tar bort den gamla anslutningen... Byt namn på trådbunden nätverksprofil Nödvändig krypteringsinformation saknas. Återställer IP-adress... Nollställning av routningstabell Kör skript efter anslutning Kör skript före anslutning Sök Sök efter dolda nätverk Söker Söker efter nätverk... vargod dröj... Skript Sök efter domän Krypterat Välj dolt nätverks-ESSID Välj eller skapa en kabelanslutningsprofil Välj skript Ställ in Ad-hoc nätverk Sätter broadcast-adress... Ställer in krypteringsinformation Sätter statisk DNS-server... Sätter statisk IP-adress... Sluta tillfälligt att automatisk visa anslutnings-popup Avbryt upprättande av pågående nätverksanslutning Dödad av användaren wicd:s bakgrundsprocess har avslutats. Användargränssnittet kommer inte att fungera förens den startats igen wicd bakgrundsprocessen är inte tillgänglig så åtgärden kunde inte slutföras Detta nätverk kräver att kryptering är aktiverat. För att undvika komplikationer, stöder wicd-curses inte direkt editering av script. Istället kan du editera dem manuellt. öppna först "$A" konfigureringsfil som (root) och leta efter sektionen med text från $B i frågan. I detta fallet är det: För att ansluta till ett trådbundet nätverk måste du skapa en profil. För att skapa en profil, ge ett (beskrivande) namn åt nätverket och klicka sedan på Lägg till. För att ansluta till ett trådbundet nätverk måste du först skapa en nätverksprofil.
För att skapa en nätverksprofil skriv ett namn som beskriver det nätverket och tryck "skapa nytt" Oförmögen att ansluta till DBus gränssnittet. Detta betyder vanligtvis att det uppstod problem när demonen skulle startas. Kontrollera wicd loggfil för djupare information. Oförmögen att upprätta kontakt med wicd:s bakgrundsprocess på grund av ett "access denied error" från DBus. Vargod och kontrollera din DBus konfiguration. Okrypterat Använd kryptering Använd kryptering (endast WEP) Använd statisk DNS Använd fasta IP-adresser Använd som standardprofil (skriver över tidigare standardprofil) Använd dBm för att mäta signalstyrka Använd standardprofil för automatisk kabelanslutning Använd globala DNS-servrar Använd senast använda profil för automatisk trådbunden anslutning Använd dessa inställningar för alla nätverk med detta ESSID Användarnamn Validerar autentisering Verifierar tillhörighet till accesspunkten... WPA Supplicant WPA-stödjande drivrutin wicd curses-gränsnitt wicd:s bakgrundsprocess gick inte att hitta Wicd behöver komma åt din dators nätverkskort Inställningar för automatisk anslutning av trådbundet nätverk Trådbundna nätverk Avkänning av trådbunden anslutning Trådbundet nätverk Trådbundna nätverk En trådbunden anslutning upptäcktes Trådlöst nätverk Trådlös radio avstängd Trådlösa nätverk Du kan även konfigurera trådlösa nätverk genom att leta efter "[<ESSID>]" avsnittet i konfigurationsfilen Du måste ange ditt lösenord för att anpassa skript Du rekommenderas att oftast använda wext som WPA supplicant drivrutin Använd "urwid's raw screen controller" wicd-curses stödjer int bort tagning av den sista trådbundna nätverksprofilen. Byt namn på den istället ('F2') 