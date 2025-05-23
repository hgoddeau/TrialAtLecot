import os
import re

def zoek_in_map(map_pad, zoekterm):
    # Loop door alle bestanden in de map
    print(map_pad)
    for bestandsnaam in sorted(os.listdir(map_pad), key=lambda f: os.path.splitext(f)[1]):
        patroon = re.compile(r"\.(xml)$", re.IGNORECASE) 
        if patroon.search(bestandsnaam):
            bestandspad = os.path.join(map_pad, bestandsnaam)

            # Controleer of het een bestand is (geen map)
            if os.path.isfile(bestandspad):
                try:
                    # lijn nodig?
                    #with open(bestandspad, 'r', encoding='utf-8', errors='ignore') as bestand:
                    #    for regelnummer, regel in enumerate(bestand, start=1):
                    #        if zoekterm in regel:
                    #            print(f"Match in {bestandsnaam} op regel {regelnummer}: {regel.strip()}")
                    with open(bestandspad, 'r', encoding='utf-8', errors='ignore') as bestand:
                        inhoud = bestand.read()
                        if zoekterm in inhoud:
                            print(f"'{zoekterm}' gevonden in {bestandsnaam}")
                except Exception as e:
                    print(f"Kon bestand {bestandsnaam} niet lezen: {e}")
        else:
            delen = bestandsnaam.rsplit(".", 1)
            if len(delen)>1:
                if (delen[1].lower()) > "xml":
                    break
    print("Done")

# Gebruik de functie
#map_pad = r"\\CIVI5P20\xb400\xml\PRD\CTW"  # Vervang dit met de map die je wilt doorzoeken
map_pad = r"\\CIVI5P20\xml\in\cw01\2025\03"  # Vervang dit met de map die je wilt doorzoeken
zoekterm = r"SocialActionReasonUnemployment"  # Vervang met de tekst die je zoekt

zoek_in_map(map_pad, zoekterm)
