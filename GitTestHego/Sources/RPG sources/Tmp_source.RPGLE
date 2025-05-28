**Free
      Begsr CalcBarema;
                  // OPHALEN BEDRAGEN BAREMA & STOCKEREN IN HULPBEDRAGEN HVBAR&HHBAR
                 If #1GWNB >= BYEINB; //HUIDIGE TABEL
                   If #1A1CD = '05' OR #1A1CD = '57';
         SITUAT = 'NIE';           // //3            NIEUWE
                   Endif;
                 ELSE;
                   If #1GWNB >= BYEHNB; //OUDSTE TABEL
                     If #1A1CD = '05' OR #1A1CD = '57';
         SITUAT = 'OUD';           // //3            NIEUWE
                     Endif;
                   ENDIF; //OUDSTE TABEL
                 ENDIF; //HUIDIGE TABEL

         TAB3PO = BARACL;           // //3            B01/B02/....
                 //REF.MND
                 //TYPE
                 //TABBEL
                 //BAREMA

         TAB3PO = BARVW5;           // //3            B01/B02/....
         TYTPTY = '05';           // //2
                 VVLOE5 = 0;
                 HVLOE5 = 0;
                 //REF.MND
                 //TYPE
                 //TABBEL
                 //BAREMA
                  //  DISPO ==> TABEL B30
                 MDVLOER(#1GWNB:TYTPTY:TAB3PO:BARC10:VVLOE5:HVLOE5:FOUTKO);
                   If TYPCON = 'Y';
                   If #1GWNB >= 200906;
     C                   GOTO      GNDIS
                   ENDIF;
                 ENDIF;
                 If WUYLCF = 'Y'; //DISPO ACTIEF
         ABN = *BLANK;              // //1
         FTGEZI = *BLANK;           // //1
                   //GEZINSSIT.GN OPHALEN
                   //BAREMA
                   //GEZINSTOESTAND

                   MDDISPGZ(BARC10:ABN:FTGEZI);
                     If FTGEZI = '1';
         WUXXXX = '?';
         BARACL = *BLANK;
                   ELSE; //GEEN FOUT IN GEZINS
                     If ABN = 'A';
         C' = 'B30;      // //BARACL
                     ELSE;
                       If ABN = 'N';
         D' = 'B30;      // //BARACL
                       ELSE;
         P' = 'B10;      // //BARACL
                       ENDIF; //N
                     ENDIF; //A
                   ENDIF; //FTGEZI=1
                 ENDIF; //WUYLCF=Y
     C     GNDIS         TAG
                 SETLL (#1GWNB) @MZREBU; //MAAND BAREMA
                 READ @MZREBU ;
       *in50 = %eof();
                 If *In50;
                   MNDBAR = BYEINB;
                 Endif;
                 If *In50;
                   HVBAR = 0;
                 Endif;
                 If *In50;
                   HHBAR = 0;
                 Endif;
     C   50              GOTO      ENDBRM
                 If NOT *In50;
                   MNDBAR = MZHDDM;
                 Endif;
                 CHAIN (MNDBAR:BARACL) @MZREEA ;
       *in50 = (%found() = *Off); //MND/TABEL
                 If *In50;
                   HVBAR = 0;
                 Endif;
                 If *In50;
                   HHBAR = 0;
                 Endif;
                 If *In50;
                   HVBAR = VVLOER;
                 Endif;
                 If *In50;
                   HHBAR = HVLOER;
                 Endif;
                 If *In50;
                   If VVLOER = 0;
                 Endif;
     EvalR   WUAGCD = '1';                        // //SW102
     C                   GOTO      ENDBRM
                 ENDIF;
                 If NOT *In50;
                   HVBAR = MZMZ02;
                 Endif;
                 If NOT *In50;
                   HHBAR = MZMZ03;
                 Endif;
                 If NOT *In50;
                   If WUYLCF = 'Y';
                 Endif;
                 ELSE;
                   If NOT *In50;
                     If HVBAR < VVLOER;
                   Endif;
                     HVBAR = VVLOER;
                   ENDIF;
                   If NOT *In50;
                     If HHBAR < HVLOER;
                   Endif;
                     HHBAR = HVLOER;
                   ENDIF;
                 ENDIF;
                 If NOT *In50;
                   If #1A1CD = '33';
                 Endif;
                   HVBAR = MZMZ03;
                   HHBAR = 0;
                 Endif;
                 If #1A1CD = '52';
         BARFOR = BARACL;
                 ENDIF;
                 CHAIN (MNDBAR:BARFOR) @MZREEA ;
       *in50 = (%found() = *Off); //MND/TABEL
                 If *In50;
                   HVFOR = 0;
                 Endif;
                 If *In50;
                   HHFOR = 0;
                 Endif;
     C   50              MOVE      '1'           WUAGCD                         SW102
     C   50              GOTO      ENDBRM
                 If NOT *In50;
                   HVFOR = MZMZ02;
                 Endif;
                 If NOT *In50;
                   HHFOR = MZMZ03;
                 Endif;
                 CHAIN (MNDBAR:BARVW5) @MZREEA ;
       *in50 = (%found() = *Off); //MND/TABEL
                 If *In50;
                   HV501 = 0;
                 Endif;
                 If *In50;
                   HH501 = 0;
                 Endif;
                  //        50          MOVE '1'       WUAGCD           SW102
                  //        50          GOTO ENDBRM
                 If *In50;
                   HV501 = VVLOE5;
                 Endif;
                 If *In50;
                   HH501 = HVLOE5;
                 Endif;
                 If *In50;
                   If VVLOE5 = 0;
                 Endif;
     EvalR   WUAGCD = '1';                        // //SW102
     C                   GOTO      ENDBRM
                 ENDIF;
                 If NOT *In50;
                   HV501 = MZMZ02;
                 Endif;
                 If NOT *In50;
                   HH501 = MZMZ03;
                 Endif;
     C     ENDBRM        TAG
                 If #1A1CD = '05' OR #1A1CD = '57';
                   If P55 = '3';
                     LFTT05 = 40;
         B15 = *BLANK;              // //5
         B15 = P14;
     EvalR   B15 = '2';
         BARTW = B15;            // //7
     EvalR   BARTW = P67;
                     If P45 = 'P3';
         B15 = P14;
     EvalR   B15 = '.';
         BARTW = B15;
     EvalR   BARTW = P67;
                     ENDIF;
         BBEE = 'E';             // //1
                     DDD1 = 0;
                     DDD2 = 0;
                     DDD3 = 0;
         LFTCOD = '0';           // //1
         BRDOK = *BLANK;            // //2
                     BVLID = 0;
                     BDBVOL = 0;
                     BDBHAL = 0;
                     BDEVOL = 0;
                     BDEHAL = 0;
         T0502 = '02';            // //2
                     //BDRG C3.2 GN OPHALEN
                     //BAREMA A2/N2/...
                     //TYPEWKL
                     //REFMND BAREM
                     //DAGBEDRAG
                     //DAGBEDRAG EU
                     //DAGBEDRAG F9
                     //BEF OF EURO ?
                     //ANC.CODE
                     //BEROEP 09
                     //BEROEPSVERLE
                     //VOL BAREMABD
                     //IDEM IN EURO
                     //HALF BAREMA
                     //IDEM IN EURO
                     POSBARF9(#1AACD:#1AFNB:LFTT05:BARTW:T0502:MNDBAR:DDD1:DDD2:DDD3:BBEE:LFTCOD:BRD
                       If #1GWNB <= 200111;
                       HH501 = BDBHAL;
                       HV501 = BDBVOL;
                     ELSE;
                       HH501 = BDEHAL;
                       HV501 = BDEVOL;
                     ENDIF;
                   ENDIF;
       ENDSR;