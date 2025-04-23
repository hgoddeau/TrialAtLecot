def zoek_in_bestand(bestandsnaam, zoek_tekst, vervolg_tekst):
    with open(bestandsnaam, 'r', encoding='utf-8') as bestand:
        regels = bestand.readlines()
    
    for i, regel in enumerate(regels):
        if zoek_tekst in regel:
            # Controleer de volgende 5 regels
            for j in range(1, 6):
                if i + j < len(regels) and vervolg_tekst in regels[i + j]:
                    print(f"Match gevonden! '{zoek_tekst}' op regel {i+1}, gevolgd door '{vervolg_tekst}' op regel {i+j+1}")
                    break  # Stop met zoeken in deze set van 5 regels

# Gebruik het script
bestandspad = "bestand.txt"  # Vervang met jouw bestandspad
zoekterm = "eerste zoektekst"  # Vervang met jouw zoektekst
vervolgterm = "tweede zoektekst"  # Vervang met de tekst die in de volgende 5 regels moet staan

zoek_in_bestand(bestandspad, zoekterm, vervolgterm)
