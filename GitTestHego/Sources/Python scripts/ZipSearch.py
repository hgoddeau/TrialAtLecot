import zipfile
import os

def zoek_in_zip(zip_bestand, zoekterm):
    doelmap = r"C:\Users\hgoddeau\unzipped"
    with zipfile.ZipFile(zip_bestand, 'r') as z:
        for bestandsnaam in z.namelist():
            try:
                with z.open(bestandsnaam) as bestand:
                    inhoud = bestand.read().decode(errors='ignore')  # Decodeer als tekst
                    if zoekterm in inhoud:
                        print(f"'{zoekterm}' gevonden in {bestandsnaam}")

                        # Pad waar het bestand opgeslagen zal worden
                        doelpad = os.path.join(doelmap, os.path.basename(bestandsnaam))

                        # Schrijf de originele bytes opnieuw naar bestand
                        with open(doelpad, 'wb') as output_file:
                            output_file.write(inhoud.encode('utf-8', errors='ignore'))
                        
                        print(f"Bestand opgeslagen als: {doelpad}")                        
            except Exception as e:
                print(f"Kon {bestandsnaam} niet lezen: {e}")

# Gebruik het script
os.chdir(r"\\CIVI5P20\xb400\xml\PRD\CTW")
zip_pad = "CTW_2025-05-07.zip"  # Pas dit aan met de juiste ZIP-bestandspad
zoekterm = "03A039XYBDNCZ"
zoek_in_zip(zip_pad, zoekterm)
