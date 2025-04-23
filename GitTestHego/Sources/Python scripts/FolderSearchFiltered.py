import os
import re
import fnmatch

def zoek_in_map(folder_path, file_filter, zoekterm):
    # Loop door alle bestanden in de map
    print(folder_path)
    for bestandsnaam in [entry.name for entry in os.scandir(folder_path) if entry.is_file() and '.' not in entry.name and fnmatch.fnmatch(entry.name, file_filter)]:
        #print(bestandsnaam)
        bestandspad = os.path.join(map_pad, bestandsnaam)

        # Controleer of het een bestand is (geen map)
        try:
            with open(bestandspad, 'r', encoding='utf-8', errors='ignore') as bestand:
                #inhoud = bestand.readlines()
                #if any(zoekterm in regel for regel in inhoud):
                for regelnummer, regel in enumerate(bestand, start=1):
                    if zoekterm in regel:
                        print(f"Match in bestand {bestandsnaam} op regel {regelnummer}: {regel.strip()}")
        except Exception as e:
            print(f"Kon bestand {bestandsnaam} niet lezen: {e}")
    print("Done")

# Gebruik de functie
#map_pad = r"\\CIVI5P20\xb400\xml\PRD\CTW"  # Vervang dit met de map die je wilt doorzoeken
map_pad = r"\\CIVI5P20\aclvb\c9"
file_filter = r"c925*"
zoekterm = r"700125216"  

zoek_in_map(map_pad, file_filter, zoekterm)
