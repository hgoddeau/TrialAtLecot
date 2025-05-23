       BEGSR DCVLDL;
          //================================================================
          // Validate details
          //================================================================
          // Set screen conditioning indicators
         EXSR GBDSAD;
          // Initialise virtual fields
         EXSR MEIZ#1;
          // Validate Geen uren ged. wkl.
         W0RTN = *BLANK;
         W0NSRQ = #1ISCD;           // //1            Geen uren ged.
          // Name search required?
         If W0NSRQ = '?';
           //Geen uren ged.
            // Defer confirm
          W0DCF = 'Y';            
         Endif;

         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           @I1(34) = '1';
           *In99 = *On;
         Endif;
          // Validate Afh1 datum and convert to internal.
          // Check datum mm/ccjj MAIN
          // Check datum eeuw/jr./mnd. - *Field attribute types  *
         UEDTM = V1G0NB;
         UDTM1 = UDTMCC;
         UDTM2 = UDTMYY;
         UDTM3 = UDTMMM;
         WUEMCD = '0';
         If UIDTM <> 0;
           EXSR UDMBEG;
           WUEMCD = UDMMIS;
         Endif;
         #1G0NB = UIDTM;
          // CASE: WRK.Return code2 is niet leeg
         If WUEMCD = '1'; //*IF
            // Setup message data for message
           ZA0031 = V1G0NB; //DTM External
            // Send message 'Maand/jaar is foutief !!!'
           ZAMSID = 'USR0226';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Afh2 datum and convert to internal.
          // Check datum mm/ccjj MAIN
          // Check datum eeuw/jr./mnd. - *Field attribute types  *
         UEDTM = V1G2NB;
         UDTM1 = UDTMCC;
         UDTM2 = UDTMYY;
         UDTM3 = UDTMMM;
         WUEMCD = '0';
         If UIDTM <> 0;
           EXSR UDMBEG;
           WUEMCD = UDMMIS;
         Endif;
         #1G2NB = UIDTM;
          // CASE: WRK.Return code2 is niet leeg
         If WUEMCD = '1'; //*IF
            // Setup message data for message
           ZA0032 = V1G2NB; //DTM External
            // Send message 'Maand/jaar is foutief !!!'
           ZAMSID = 'USR0226';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Afh3 datum and convert to internal.
          // Check datum mm/ccjj MAIN
          // Check datum eeuw/jr./mnd. - *Field attribute types  *
         UEDTM = V1G4NB;
         UDTM1 = UDTMCC;
         UDTM2 = UDTMYY;
         UDTM3 = UDTMMM;
         WUEMCD = '0';
         If UIDTM <> 0;
           EXSR UDMBEG;
           WUEMCD = UDMMIS;
         Endif;
         #1G4NB = UIDTM;
          // CASE: WRK.Return code2 is niet leeg
         If WUEMCD = '1'; //*IF
            // Setup message data for message
           ZA0033 = V1G4NB; //DTM External
            // Send message 'Maand/jaar is foutief !!!'
           ZAMSID = 'USR0226';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Afh4 datum and convert to internal.
          // Check datum mm/ccjj MAIN
          // Check datum eeuw/jr./mnd. - *Field attribute types  *
         UEDTM = V1G6NB;
         UDTM1 = UDTMCC;
         UDTM2 = UDTMYY;
         UDTM3 = UDTMMM;
         WUEMCD = '0';
         If UIDTM <> 0;
           EXSR UDMBEG;
           WUEMCD = UDMMIS;
         Endif;
         #1G6NB = UIDTM;
          // CASE: WRK.Return code2 is niet leeg
         If WUEMCD = '1'; //*IF
            // Setup message data for message
           ZA0034 = V1G6NB; //DTM External
            // Send message 'Maand/jaar is foutief !!!'
           ZAMSID = 'USR0226';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Afh5 datum and convert to internal.
          // Check datum mm/ccjj MAIN
          // Check datum eeuw/jr./mnd. - *Field attribute types  *
         UEDTM = V1HENB;
         UDTM1 = UDTMCC;
         UDTM2 = UDTMYY;
         UDTM3 = UDTMMM;
         WUEMCD = '0';
         If UIDTM <> 0;
           EXSR UDMBEG;
           WUEMCD = UDMMIS;
         Endif;
         #1HENB = UIDTM;
          // CASE: WRK.Return code2 is niet leeg
         If WUEMCD = '1'; //*IF
            // Setup message data for message
           ZA0035 = V1HENB; //DTM External
            // Send message 'Maand/jaar is foutief !!!'
           ZAMSID = 'USR0226';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Afh6 datum and convert to internal.
          // Check datum mm/ccjj MAIN
          // Check datum eeuw/jr./mnd. - *Field attribute types  *
         UEDTM = V1HGNB;
         UDTM1 = UDTMCC;
         UDTM2 = UDTMYY;
         UDTM3 = UDTMMM;
         WUEMCD = '0';
         If UIDTM <> 0;
           EXSR UDMBEG;
           WUEMCD = UDMMIS;
         Endif;
         #1HGNB = UIDTM;
          // CASE: WRK.Return code2 is niet leeg
         If WUEMCD = '1'; //*IF
            // Setup message data for message
           ZA0036 = V1HGNB; //DTM External
            // Send message 'Maand/jaar is foutief !!!'
           ZAMSID = 'USR0226';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Kateg jjmm and convert to internal.
          // Check datum mm/ccjj MAIN
          // Check datum eeuw/jr./mnd. - *Field attribute types  *
         UEDTM = V1E9NB;
         UDTM1 = UDTMCC;
         UDTM2 = UDTMYY;
         UDTM3 = UDTMMM;
         WUEMCD = '0';
         If UIDTM <> 0;
           EXSR UDMBEG;
           WUEMCD = UDMMIS;
         Endif;
         #1E9NB = UIDTM;
          // CASE: WRK.Return code2 is niet leeg
         If WUEMCD = '1'; //*IF
            // Setup message data for message
           ZA0037 = V1E9NB; //DTM External
            // Send message 'Maand/jaar is foutief !!!'
           ZAMSID = 'USR0226';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Wkl datum laatste stempel and convert to internal.
          // Check datum 8 lang MAIN
          // Check datum 8 lang - *Field attribute types  *
         UEDTD = V1AKDD;
         UDTD1 = UDTDCC;
         UDTD2 = UDTDYY;
         UDTD3 = UDTDMM;
         UDTD4 = UDTDDD;
         WUDACD = '0';
         If UIDTD <> 0;
           EXSR UDDBEG;
           WUDACD = UDDMIS;
         Endif;
         #1AKDD = UIDTD;
          // CASE: WRK.Return code is niet leeg
         If WUDACD = '1'; //*IF
            // Setup message data for message
           ZA0038 = V1AKDD; //DTD External
            // Send message 'Datum is foutief !!!'
           ZAMSID = 'USR0155';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Geen bedrag wklh
         W0RTN = *BLANK;
         W0NSRQ = #1BDST;           // //1            Geen bedrag wkl
          // Name search required?
         If W0NSRQ = '?';
           //*
           //Geen bedrag wkl
            // Defer confirm
           W0DCF = 'Y';            // //1
         Endif;

         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // Validate Geen dagen/bedrag BZ
         W0RTN = *BLANK;
         W0NSRQ = #1BCST;           // //1            Geen dagen/bedr
          // Name search required?
         If W0NSRQ = '?';
           //*
           //Geen dagen/bedr
            // Defer confirm
           W0DCF = 'Y';            // //1
         Endif;

         If W0RTN <> *BLANK;
           W0RTN = *BLANK;
           *In99 = *On;
         Endif;
          // USER: Validate detail screen fields
          // Fetch Niveau User/Toep - Toepassingen-Machtigingen  *
         EXSR SBRVGN;
          // CASE: WRK.Wrk veld TB- macht. num is niet 10
         If WUC1NG <> 10; //*IF
            // TB-, TG- niet toegelaten bij SWT (Guy/Pieter) jira3093
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Type wklh. kode is 09 : conv brugp voltijds
            //   !- c2    : DTL.Type wklh. kode is 10 : conv brugp deeltijds
            //   '-
           If #1A1CD = '09' OR #1A1CD = '10'; //*IF
              // CASE:
              //  - c1ORc2ORc3ORc4ORc5ORc6
              //   !- c1    : DTL.Afh1 kode is = TB-
              //   !- c2    : DTL.Afh2 kode is = TB-
              //   !- c3    : DTL.Afh3 kode is = TB-
              //   !- c4    : DTL.Afh4 kode is = TB-
              //   !- c5    : DTL.Afh5 kode is = TB-
              //   !- c6    : DTL.Afh6 kode is = TB-
              //   '-
             If #1DVCD = 'TB-' OR #1DWCD = 'TB-' OR #1DXCD = 'TB-' OR #1DYCD = 'TB-'
               OR #1EDCD = 'TB-' OR #1EECD = 'TB-';
                // Send message 'TB-, TG- niet toegelaten'
               ZAMSID = 'USR7255';
               EXSR ZASNMS;
               *In99 = *On;
             Endif; //*FI
              // CASE:
              //  - c1ORc2ORc3ORc4ORc5ORc6
              //   !- c1    : DTL.Afh1 kode is = TG-
              //   !- c2    : DTL.Afh2 kode is = TG-
              //   !- c3    : DTL.Afh3 kode is = TG-
              //   !- c4    : DTL.Afh4 kode is = TG-
              //   !- c5    : DTL.Afh5 kode is = TG-
              //   !- c6    : DTL.Afh6 kode is = TG-
              //   '-
             If #1DVCD = 'TG-' OR #1DWCD = 'TG-' OR #1DXCD = 'TG-' OR #1DYCD = 'TG-'
               OR #1EDCD = 'TG-' OR #1EECD = 'TG-';
                // Send message 'TB-, TG- niet toegelaten'
               ZAMSID = 'USR7255';
               EXSR ZASNMS;
               *In99 = *On;
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // Check bouwcode vnf10/2017 - Wkl betaling  *
         OUINON = 'N';           // //1
         BZBW = #1A4CD;             // //2
         MDBW001(BZBW:OUINON);
         WUS5CL = OUINON;
          // CASE: DTL.BZ kode is C2
         If #1A4CD = 'C2'; //*IF
           WUS5CL = 'N';                        // //Switch bouw 102
         Endif; //*FI
          // CASE: DTL.Kateg kode is JC
         If #1CLCD = 'JC'; //*IF
            // Send message 'Kategorie bijdrage SA/SE'
           ZAMSID = 'USR6797';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
          // Controles via POPUP - Wkl betaling  *
         CLEAR   PXRC;
         PXAACD = #1AACD;
         PXAFNB = #1AFNB;
         PXGWNB = #1GWNB; //Datum achtersta
         PXCLCD = #1CLCD;
         PXE9NB = #1E9NB; //Kateg jjmm
         PXARNB = #1ARNB;
         PXEGCD = #1EGCD;
         PXN8CE = #1N8CE;
         PXN9CE = #1N9CE;
         PXGGNB = #1GGNB; //VD5
         PXGHNB = #1GHNB; //HD5
         PXGINB = #1GINB; //Uren ged.wkl.
         PXISCD = #1ISCD;
         PXGJNB = #1GJNB; //Y
         PXGKNB = #1GKNB; //Yft
         PXGRNB = #1GRNB; //VW
         PXGSNB = #1GSNB; //Min
         PXGTNB = #1GTNB; //Z+A
         PXGUNB = #1GUNB; //C3.2
         PXJJNB = #1JJNB; //Volle BZ C3.2
         PXJKNB = #1JKNB; //Halve BZ C3.2
         PXGVNB = #1GVNB; //Uren BV
         PXGLNB = #1GLNB; //VD6
         PXGMNB = #1GMNB; //HD6
         PXGNNB = #1GNNB; //Volle dagen ver
         PXJLNB = #1JLNB; //Halve dagen ver
         PXGONB = #1GONB; //Volle dagen vor
         PXJMNB = #1JMNB; //Halve dagen vor
         PXGPNB = #1GPNB; //Volle dagen BZ
         PXJNNB = #1JNNB; //Halve dagen BZ
         PXMINB = #1MINB; //Volle dagen BZ2
         PXMJNB = #1MJNB; //Halve dagen BZ2
         PXG7NB = #1G7NB; //Volle dagen BV
         PXJONB = #1JONB; //Halve dagen BV
         PXGXNB = #1GXNB; //Dagen kbf sankt
         PXHPNB = #1HPNB; //Bedrag wkl
         PXBDST = #1BDST;
         PXGYNB = #1GYNB; //Bedrag BZ
         PXBCST = #1BCST;
         PXHCNB = #1HCNB; //Taks
         PXJQNB = #1JQNB; //X2
         PXJRNB = #1JRNB; //RWP
         PXLPNB = #1LPNB; //BC aantal
         PXLQNB = #1LQNB; //BC bedrag
         PXT4NB = #1T4NB; //Taks wkl
         PXT5NB = #1T5NB; //Taks BZ
         PXGQNB = #1GQNB; //Netto
         PXT6NB = #1T6NB; //Netto wkl
         PXT7NB = #1T7NB; //Netto BZ
         PXDVCD = #1DVCD;
         PXGZNB = #1GZNB; //Afh1 bedrag
         PXG0NB = #1G0NB; //Afh1 datum
         PXOYCD = #1OYCD;
         PXO5CD = #1O5CD;
         PXDWCD = #1DWCD;
         PXG1NB = #1G1NB; //Afh2 bedrag
         PXG2NB = #1G2NB; //Afh2 datum
         PXOZCD = #1OZCD;
         PXO6CD = #1O6CD;
         PXDXCD = #1DXCD;
         PXG3NB = #1G3NB; //Afh3 bedrag
         PXG4NB = #1G4NB; //Afh3 datum
         PXO0CD = #1O0CD;
         PXO7CD = #1O7CD;
         PXDYCD = #1DYCD;
         PXG5NB = #1G5NB; //Afh4 bedrag
         PXG6NB = #1G6NB; //Afh4 datum
         PXO1CD = #1O1CD;
         PXO8CD = #1O8CD;
         PXEDCD = #1EDCD;
         PXHDNB = #1HDNB; //Afh5 bedrag
         PXHENB = #1HENB; //Afh5 datum
         PXO2CD = #1O2CD;
         PXO9CD = #1O9CD;
         PXEECD = #1EECD;
         PXHFNB = #1HFNB; //Afh6 bedrag
         PXHGNB = #1HGNB; //Afh6 datum
         PXO3CD = #1O3CD;
         PXPACD = #1PACD;
         PXHJNB = #1HJNB; //DOK periode
         PXWUCD = #1WUCD;
         PXIYNB = #1IYNB; //BZ1 dagen
         PXJHNB = #1JHNB; //BZ1 bedrag
         PXL0CD = #1L0CD;
         PXIZNB = #1IZNB; //BZ2 dagen
         PXJGNB = #1JGNB; //BZ2 bedrag
         PXL8CD = #1L8CD;
         PXI0NB = #1I0NB; //BZ3 dagen
         PXJFNB = #1JFNB; //BZ3 bedrag
         PXL9CD = #1L9CD;
         PXI1NB = #1I1NB; //BZ4 dagen
         PXJENB = #1JENB; //BZ4 bedrag
         PXL1CD = #1L1CD;
         PXI2NB = #1I2NB; //BZ5 dagen
         PXI8NB = #1I8NB; //BZ5 bedrag
         PXL2CD = #1L2CD;
         PXA7ST = #1A7ST;
         PXKBCD = #1KBCD;
         PXKCCD = #1KCCD;
         PXKDCD = #1KDCD;
         PXKECD = #1KECD;
         PXA5DM = #1A5DM; //RVA indieningsm
         PXLONB = #1LONB; //RVA UI-afdeling
         PXBIST = #1BIST;
         PXMCCD = #1MCCD;
         PXMNCD = #1MNCD; //RVA identificat
         PXMDCD = #1MDCD;
         PXMBCD = #1A1CD;
         PXMECD = #1MECD;
         PXRQCD = #1RQCD;
         PXMFCD = #1MFCD;
         PXMGCD = #1MGCD; //Complement
         PXMOCD = #1MOCD;
         PXT5CD = #1T5CD;
         PXT6CD = #1T6CD;
         PXT7CD = #1T7CD;
         PXT8CD = #1T8CD;
         PXMICD = #1MICD;
         PXMJCD = #1MJCD;
         PXMKCD = #1MKCD;
         PXVCCD = #1VCCD;
         PXMLCD = #1MLCD;
         PXMMCD = #1MMCD; //Wkl banknr begu
         PXMUCD = #1MUCD;
         PXV6CD = #1V6CD;
         PXLJNB = #1LJNB; //Wkl INDIR-indie
         PXLKNB = #1LKNB; //Wkl INDIR-UI-af
         PXM4CD = #1M4CD;
         PXLLNB = #1LLNB; //Wkl INDIR-GWB-n
         PXLMNB = #1LMNB; //Wkl INDIR-ident
         PXLNNB = #1LNNB; //Wkl INDIR-maand
         PXAKDD = #1AKDD; //Wkl datum laats
         PXBANR = #1BANR; //Wkl Yuur
         PXBBNR = #1BBNR; //Wkl n-verg. n-g
         PXBKCE = #1BKCE;
         PXBLCE = #1BLCE;
         PXBMCE = #1BMCE;
         PXBNCE = #1BNCE;
         PXBOCE = #1BOCE;
         PXBCNR = #1BCNR; //Wkl inhoudingsp
         PXBDNR = #1BDNR; //Wkl dagbedrag
         PXBENR = #1BENR; //Wkl gemiddeld m
         PXBFNR = #1BFNR; //Wkl Q
         PXBGNR = #1BGNR; //Wkl S
         PXBPCE = #1BPCE;
         PXBQCE = #1BQCE;
         PXBRCE = #1BRCE;
         PXBSCE = #1BSCE;
         PXM7DD = #1M7DD; //Wkl datum begin
         PXM8DD = #1M8DD; //Wkl laatst verg
         PXM9DD = #1M9DD; //Wkl laatst geco
         PXBTCE = #1BTCE;
         PXNADD = #1NADD; //Wkl begindatum
         PXNBDD = #1NBDD; //Wkl einddatum s
         PXBUCE = #1BUCE;
         PXNCDD = #1NCDD; //Wkl begindatum
         PXNDDD = #1NDDD; //Wkl einddatum s
         PXPICD = #1PICD;
         PXASDD = #1ASDD; //Wkl add-datum
         PXALTM = #1ALTM; //Wkl add-time
         PXCA01 = #1CA01;
         PXY4NB = #1Y4NB; //Wkl bet Uitv.da
         PXFXNR = #1FXNR; //Wkl bet NBR vri
         PXFYNR = #1FYNR; //Wkl bet NBR vri
         PXFZNR = #1FZNR; //Wkl bet NBR vri
         PXF0NR = #1F0NR; //Wkl bet NBR vri
         PXF1NR = #1F1NR; //Wkl bet NBR vri
         PXMOCE = #1MOCE;
         PXMPCE = #1MPCE;
         PXMQCE = #1MQCE;
         PXMRCE = #1MRCE;
         PXIVDM = #1IVDM; //Wkl bet DTM vri
         PXIWDM = #1IWDM; //Wkl bet DTM vri
         PXPWDD = #1PWDD; //Wkl bet DTD vri
         PXPXDD = #1PXDD; //Wkl bet DTD vri
         PXGDCE = #1GDCE;

         MDCTLBET01(PXRC:YL0014:YL0015:WQ0214);
         If %Error();
            // Call to program ended in error
           W0RTN = 'Y2U0032';
           W0CLPG = 'MDCTLBET';          // //10
           W0CLPG = '01';
            // Send message '*Error occured on CALL...'
           ZAMSID = 'Y2U0032';
           ZAMSGF = 'Y2USRMSG';
           ZAMSDA = W0CLPG;                        // //Message data
           EXSR ZASNMS;
           *In99 = *On;
           *In35 = *On;
           *In36 = *On;
           *In33 = *On;
           *In34 = *On;
           *In31 = *On;
           *In32 = *On;
           *In37 = *On;
           *In38 = *On;
         Endif;
          // CASE: LCL.wrk error tekst is Niet blanco
         If YL0014 <> *BLANK; //*IF
            // Setup message data for message
           ZA0039 = YL0014;                        // //wrk error tekst
              // Send message 'Variabele tekst'
           ZAMSID = 'USR6324';
           EXSR ZASNMS;
           *In99 = *On;
         Endif; //*FI
          // CASE: DTL.Kateg kode is UR
         If #1CLCD = 'UR'; //*IF
            // CASE: DTL.Datum laatste bijdr is >= 201507
           If #1AEDD >= 201507; //*IF
              // Send message 'Kategorie kode UR nt toeg'
             ZAMSID = 'USR6756';
             EXSR ZASNMS;
             *In99 = *On;
           Endif; //*FI
         Endif; //*FI
          // CASE:
          //  - c1ORc2
          //   !- c1    : DTL.Type wklh. kode is vraagtekenX
          //   !- c2    : DTL.Barema RVAkode is vraagtekenX
          //   '-
         If #1A1CD = '?X' OR #1DOCD = @CN(031); //*IF
            // Send message 'Geen geldig type/barema'
           ZAMSID = 'USR6392';
           EXSR ZASNMS;
           *In99 = *On;

         Endif; //*FI
          // CASE:
          //  - c1ORc2ORc3ORc4
          //   !- c1    : DTL.BZ kode is ES
          //   !- c2    : DTL.BZ kode is CS
          //   !- c3    : DTL.BZ kode is FS
          //   !- c4    : DTL.BZ kode is PS
          //   '-
         If #1A4CD = 'ES' OR #1A4CD = 'CS' OR #1A4CD = 'FS' OR #1A4CD = 'PS'; //*IF
            // CASE: DTL.Datum achterstal is > 201506
           If #1GWNB > 201506; //*IF
              // CASE:
              //  - c1ORc2ORc3
              //   !- c1    : DTL.Volle dagen BZ is niet 0
              //   !- c2    : DTL.Halve dagen BZ is niet 0
              //   !- c3    : DTL.Bedrag BZ is niet 0
              //   '-
             If #1GPNB <> *ZERO OR #1JNNB <> *ZERO OR #1GYNB <> *ZERO; //*IF
                // Send message 'Bz kode bestaat nt meer'
               ZAMSID = 'USR5284';
               EXSR ZASNMS;
               *In99 = *On;
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // Type 00,70,71,72,73,97==>typeC10=00 afhoudingen worden op nul gep
          // CASE:
          //  - c1ORc2ORc3
          //   !- c1    : DTL.Type wklh. kode is 00 : niet toelaatbaar
          //   !- c2    : DTL.Type wklh. kode is 70-73
          //   !- c3    : DTL.Type wklh. kode is 97
          //   '-
         If #1A1CD = '00' OR #1A1CD >= '70' AND #1A1CD <= '73' OR #1A1CD = '97'; //*IF
           #1DVCD = *BLANK;                        // //Afh1 kode
           #1GZNB = *ZERO; //Afh1 bedrag
           #1G0NB = *ZERO; //Afh1 datum
           #1OYCD = *BLANK;                        // //Afh1 kode TV
           #1DWCD = *BLANK;                        // //Afh2 kode
           #1G1NB = *ZERO; //Afh2 bedrag
           #1G2NB = *ZERO; //Afh2 datum
           #1OZCD = *BLANK;                        // //Afh2 kode TV
           #1DXCD = *BLANK;                        // //Afh3 kode
           #1G3NB = *ZERO; //Afh3 bedrag
           #1G4NB = *ZERO; //Afh3 datum
           #1O0CD = *BLANK;                        // //Afh3 kode TV
           #1DYCD = *BLANK;                        // //Afh4 kode
           #1G5NB = *ZERO; //Afh4 bedrag
           #1G6NB = *ZERO; //Afh4 datum
           #1O1CD = *BLANK;                        // //Afh4 kode TV
           #1EDCD = *BLANK;                        // //Afh5 kode
           #1HDNB = *ZERO; //Afh5 bedrag
           #1HENB = *ZERO; //Afh5 datum
           #1O2CD = *BLANK;                        // //Afh5 kode TV
           #1EECD = *BLANK;                        // //Afh6 kode
           #1HFNB = *ZERO; //Afh6 bedrag
           #1HGNB = *ZERO; //Afh6 datum
           #1O3CD = *BLANK;                        // //Afh6 kode TV
         Endif; //*FI
         WUKTCJ = 'N';                        // //Switch blanko o
         WUYRCI = '0';                        // //switch sancties
         WUERCK = '0';                        // //Wrk F1 na F24
         WUUZCF = *BLANK;                        // //Wrk gekozen ASR
          // Werkhervatting metaal ? techniek
          // CASE:
          //  - c1ORc2ORc3
          //   !- c1    : DTL.Wkl bet CDE vrij3 is vraagteken1
          //   !- c2    : DTL.Wkl bet CDE vrij3 is vraagteken2
          //   !- c3    : DTL.Wkl bet CDE vrij3 is vraagteken3
          //   '-
         If #1MQCE = '?' OR #1MQCE = ' ?' OR #1MQCE = '  ?'; //*IF
            // Select Metaal codes werkh - Metaal codes werkhervatti  *
           LXT4SRR(W0RTN:#1MQCE);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = *BLANKS;          // //10
             W0CLPG = 'LXT4SRR';
              // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
           Endif;
            // Error detected?
           If W0RTN <> *BLANK;
             *In99 = *On;
           Endif;
         Endif; //*FI
         ZQ = *ZERO;
         WUCACO = #1AKNB + '' + #1FGNB; //Wrk veld 9 posi
         ZQ = *ZERO;
         WUAPCF = WUCACO + '' + #1FHNB; //Wrk veld 11 pos
         WURZCJ = 'N';                        // //Switch type bet
          // Betaalkalender tonen? - Wkl betaling  *
         //TYPE
         //BZ
         //BAREMA
         MDK020(#1A1CD:#1A4CD:#1DOCD:WURZCJ);
         If WUYZCG = 'I';
           WURZCJ = 'Y';
         ENDIF;
          // CASE: DTL.Type wklh. kode is = 16
         If #1A1CD = '16'; //*IF
            // CASE: DTL.Bedrag wkl is = 247,89
           If #1HPNB = 247.89; //*IF
              // Betaalkalender tonen? - Wkl betaling  *
             MDK020(#1A1CD:#1A4CD:#1DOCD:WURZCJ);
             If WUYZCG = 'I';
               WURZCJ = 'Y';
             ENDIF;
           Endif; //*FI
         Endif; //*FI
          // Cmd4 = BZ metaal overzicht attesten
          // CASE: DTL.*CMD key is CF04
         If *IN04 = '1'; //*IF
            // CASE:
            //  - c1ORc2ORc3ORc4
            //   !- c1    : DTL.BZ kode is NA
            //   !- c2    : DTL.BZ kode is DA
            //   !- c3    : DTL.BZ kode is 29
            //   !- c4    : DTL.BZ kode is 79
            //   '-
           If #1A4CD = 'NA' OR #1A4CD = 'DA' OR #1A4CD = '29' OR #1A4CD = '79'; //*IF
              // Overzicht op INSZ - Metaal BP Inh  *
             LYLODFR(W0RTN:WUAPCF);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LYLODFR';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
         Endif; //*FI
          // Cmd2 = A950
          // CASE: DTL.*CMD key is CF02
         If *IN02 = '1'; //*IF
           WUO3NC = WUAPCF;                        // //A950-INSS
           WURHNC = #1GWNB; //Wrk number 6 A9
           WUICCH = WURHNC;                        // //Wrk code 6 lang
            // Display A950 1 INSZ(par3) - A950  *
           LYBGDFR(W0RTN:WUO3NC:WUICCH:#1AACD:#1AFNB);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = *BLANKS;          // //10
             W0CLPG = 'LYBGDFR';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
           Endif;
            // Error detected?
           If W0RTN <> *BLANK;
             *In99 = *On;
           Endif;
         Endif; //*FI
          // Cmd5=ASR's overzicht
          // CASE: DTL.*CMD key is CF05
         If *IN05 = '1'; //*IF
            // Overz.1lid/1RM alle+par - MFA WECH update  *
           LXJJDFR(W0RTN:#1AACD:#1AFNB:#1GWNB:WUW1CF:WUUZCF);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = *BLANKS;          // //10
             W0CLPG = 'LXJJDFR';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
           Endif;
            // Error detected?
           If W0RTN <> *BLANK;
             *In99 = *On;
           Endif;
         Endif; //*FI
          // Cmd7=L500
          // CASE: DTL.*CMD key is CF07
         If *IN07 = '1'; //*IF
            // CASE: WRK.Sl15 lang L500 is ingevuld
           If WUXDCG <> *BLANK; //*IF
              // Detail ons antwoord(groep - L500 historiek  *
             LXP5D3R(W0RTN:WUXDCG);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LXP5D3R';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
         Endif; //*FI
          // Cmd8=Brief
          // CASE: DTL.*CMD key is CF08
         If *IN08 = '1'; //*IF
         YL0016 = *BLANK;                        // //Wrk refertemaan
         YL0016 = #1GWNB;                        // //Wrk refertemaan
           ZQ = *ZERO;
           YL0017 = #1AACD + '' + #1AFNB; //Param256
           ZQ = *ZERO;
           YL0017 = YL0017 + '' + #1AKNB; //Param256
           ZQ = *ZERO;
           YL0017 = YL0017 + '' + #1FGNB; //Param256
           ZQ = *ZERO;
           YL0017 = YL0017 + '' + #1FHNB; //Param256
           ZQ = *ZERO;
           YL0017 = YL0017 + '' + YL0016; //Param256
            // Call afd brief ALGM RPGLE - Brief verlof omslag5  *
           MDBRIEFWKL(WQ0227:YL0017:@CN(032));
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = 'MDBRIEFWKL';          // //10
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
         Endif; //*FI
          // Cmd6=overzicht extra F4 naargelang type50/51/29
          // CASE: DTL.*CMD key is CF06
         If *IN06 = '1'; //*IF
            // CASE: DTL.Type wklh. kode is 51
           If #1A1CD = '51'; //*IF
              // Overzicht crisispremie - Werkloze kinderopvang  *
             LYI6DFR(W0RTN:#1AACD:#1AFNB);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LYI6DFR';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
            // CASE: DTL.Type wklh. kode is 29 = werkhervatting
           If #1A1CD = '29'; //*IF
              // Overzicht werkhervattings - Werkloze kinderopvang  *
             LYEJDFR(W0RTN:#1AACD:#1AFNB);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LYEJDFR';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
            // CASE: DTL.Type wklh. kode is 50
           If #1A1CD = '50'; //*IF
              // Overzicht kinderopvangtoe - Werkloze kinderopvang  *
             LYC6DFR(W0RTN:#1AACD:#1AFNB);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LYC6DFR';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
            // CASE: DTL.Type wklh. kode is 53
           If #1A1CD = '53'; //*IF
              // Overzicht OCV T53 - Werkloze kinderopvang  *
             LZKDDFR(W0RTN:#1AACD:#1AFNB);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LZKDDFR';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
         Endif; //*FI
          // Cmd10=ASR's overzicht
          // CASE: DTL.*CMD key is CF10
         If *IN10 = '1'; //*IF
            // CASE: DTL.Type wklh. kode is 12 :171bis beschutte werk
           If #1A1CD = '12'; //*IF
              // Overz.1lid/1RM Wechxxx - MFA WECH update  *
             LXOXDFR(W0RTN:#1AACD:#1AFNB:#1GWNB:@CN(033));
           If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LXOXDFR';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
         Endif; //*FI
          // Cmd14 = S44-C66 verblijfsbewijs
          // CASE: DTL.*CMD key is CF14
         If *IN14 = '1'; //*IF
            // Overzicht S44/C66 op INSZ - S44 verblijfsbewijs  *
           LYY1DFR(W0RTN:WUAPCF:#1AACD:#1AFNB:#1AMTX);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = *BLANKS;          // //10
             W0CLPG = 'LYY1DFR';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
           Endif;
            // Error detected?
           If W0RTN <> *BLANK;
             *In99 = *On;
           Endif;
         Endif; //*FI
          // Cmd16 = Status EC3 invullen
          // CASE: DTL.*CMD key is CF16
         If *IN16 = '1'; //*IF
           YRSW00 = 3;
           ZQ = 1;
           If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00020 OR ZQ > 00020;
             W0RTN = 'Y2U0510';
           ELSE;
             WUBBCL = %Subst(WUW5CF:ZQ:YRSW00); //Wrk veld 3 posi
           Endif;
           YRSW00 = 3;
           ZQ = 1;
           If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00020 OR ZQ > 00020;
             W0RTN = 'Y2U0510';
           ELSE;
             WUBCCL = %Subst(WUW6CF:ZQ:YRSW00); //Wrk veld 3 posi
           Endif;
            // CASE: WRK.Wrk veld 3 posities EC3-1 is EC3
           If WUBBCL = 'EC3'; //*IF
              // Update reden verwerkt+dtm - MFA WECH update  *
             CLEAR   PYRC;
             PYZ8CC = WUW5CF;
             PYY2CC = 'EC3';

             //Update reden ve
             LXEAE3R(W0RTN:PYRC);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LXEAE3R';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           ELSE;
              // CASE: *OTHERWISE
              // CASE: WRK.Wrk veld 3 posities EC3-2 is EC3
             If WUBCCL = 'EC3'; //*IF
                // Update reden verwerkt+dtm - MFA WECH update  *
               CLEAR   PYRC;
               PYZ8CC = WUW6CF;
               PYY2CC = 'EC3';

               //Update reden ve
               LXEAE3R(W0RTN:PYRC);
               If %Error();
                  // Call to program ended in error
                 W0RTN = 'Y2U0032';
                 W0CLPG = *BLANKS;          // //10
                 W0CLPG = 'LXEAE3R';
                          // Send message '*Error occured on CALL...'
                 ZAMSID = 'Y2U0032';
                 ZAMSGF = 'Y2USRMSG';
                 ZAMSDA = W0CLPG;                        // //Message data
                 EXSR ZASNMS;
               Endif;
                // Error detected?
               If W0RTN <> *BLANK;
                 *In99 = *On;
               Endif;
             ELSE;
                // CASE: *OTHERWISE
                // Update reden verwerkt+dtm - MFA WECH update  *
               CLEAR   PYRC;
               PYZ8CC = WUW5CF;
               PYY2CC = 'ASR';

               //Update reden ve
               LXEAE3R(W0RTN:PYRC);
               If %Error();
                  // Call to program ended in error
                 W0RTN = 'Y2U0032';
                 W0CLPG = *BLANKS;          // //10
                 W0CLPG = 'LXEAE3R';
                          // Send message '*Error occured on CALL...'
                 ZAMSID = 'Y2U0032';
                 ZAMSGF = 'Y2USRMSG';
                 ZAMSDA = W0CLPG;                        // //Message data
                 EXSR ZASNMS;
               Endif;
                // Error detected?
               If W0RTN <> *BLANK;
                 *In99 = *On;
               Endif;
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // Cmd19=Med.werkhervatting
          // CASE: DTL.*CMD key is CF19
         If *IN19 = '1'; //*IF
            // Opvragen A052 - WKL - A052  *
           CLEAR   PZRC;
           PZAACD = #1AACD;
           PZAFNB = #1AFNB;

           //Opvragen A052 -
           LYANE1R(W0RTN:PZRC);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = *BLANKS;          // //10
             W0CLPG = 'LYANE1R';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
           Endif;
            // Error detected?
           If W0RTN <> *BLANK;
             *In99 = *On;
           Endif;
         Endif; //*FI
          // Cmd24=Meerdere barema's
          // CASE:
          //  - c1ANDc2
          //   !- c1    : DTL.*CMD key is CF24
          //   !- c2    : DTL.Datum achterstal is >=201211
          //   '-
         Y0CX01 = '0';           // //1
         If *IN24 = '1'; //*IF
           If #1GWNB >= 201211; //*IF
             Y0CX01 = '1';
           Endif; //*FI
         Endif; //*FI
         If Y0CX01 = '1'; //*IF
           WUTPCK = 'N';                        // //C105 bestaat al
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
           AAAACD = #1AACD;
           AAAFNB = #1AFNB;
           AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
           AAY1CJ = @CN(034);
           AAY2CJ = 'C105';

           //Test Doc BD bes
           MDCLCBAR08(AARC:WUYXCJ:WQ0247:WQ0248:WUTPCK);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = 'MDCLCBAR08';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
           WUTRCK = 'N';                        // //C110A bestaat a
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
           AAAACD = #1AACD;
           AAAFNB = #1AFNB;
           AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
           AAY1CJ = @CN(034);
           AAY2CJ = 'C110A';

           MDCLCBAR08(AARC:WUYXCJ:WQ0251:WQ0252:WUTRCK);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = 'MDCLCBAR08';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
            // CASE: WRK.Wrk f24 gebruikt is N
           If WUYBCJ = 'N'; //*IF
             WUZGCJ = #1MPCE;                        // //Wrk BD old
           Endif; //*FI
           WUGVNR = 0; //wrk bedrag resu
            // Record bestaat? EEF - Wkl betaling meerdere bar  *
           CLEAR   ABRC;
           ABAACD = #1AACD;
           ABAFNB = #1AFNB;
           ABRNCJ = WUWUBE;
           ABQADM = #1GWNB; //Wkl bet meer RM
           ABQBDM = WUZKNR; //Wkl bet meer IM

           //Record bestaat?
           LZCUXFR(W0RTN:ABRC:WURTCJ);

           #1AACD = ABAACD;                        // //Afdeling nr
           #1AFNB = ABAFNB;                        // //Lid nr
           WUWUBE = ABRNCJ;                        // //Wkl bet meer be
           #1GWNB = ABQADM; //Wkl bet meer RM
           WUZKNR = ABQBDM; //Wkl bet meer IM

           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = *BLANKS;          // //10
             W0CLPG = 'LZCUXFR';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
           Endif;
            // Error detected?
           If W0RTN <> *BLANK;
             *In99 = *On;
           Endif;
           WUYEND = #1AKDT; //Wrk s04 beginda
            // Betaling meerdere baremas - Wkl betaling meerdere bar  *
           CLEAR   ACRC;
           ACAACD = #1AACD;
           ACAFNB = #1AFNB;
           ACRNCJ = WUWUBE;
           ACQADM = #1GWNB; //Wkl bet meer RM
           ACQBDM = WUZKNR; //Wkl bet meer IM

           //Betaling meerde
           LZCRE3R(W0RTN:ACRC:WURTCJ:WUGVNR:#1A1CD:WUU4ND:WUYEND:WUX1CJ);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = *BLANKS;          // //10
             W0CLPG = 'LZCRE3R';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
           Endif;
            // Error detected?
           If W0RTN <> *BLANK;
             *In99 = *On;
           Endif;
           #1HPNB = WUGVNR; //Bedrag wkl
           #DGVNR = WUGVNR; //wrk bedrag resu
            // CASE: DTL.Bedrag wkl is > 0
           If #1HPNB > *ZERO; //*IF
             WUYBCJ = 'Y';                        // //Wrk f24 gebruik
              // Opsplitsen dagen F24 naar - Wkl betaling  *
             F24DGN = %int(WUX1CJ);
             #1GLNB = F24R6;
             #1GMNB = F24HR6;
             #1G7NB = F24BV;
             #1JONB = F24HBV;
             #1GNNB = F24V;
             #1JLNB = F24HV;
              // Ophalen beslagen na F24 - Wkl betaling  *
             O01 = #1DVCD;              // //3
             CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
             If %found() and BOBVCD = 'B';
               #1GZNB = BOG9NB;
             ENDIF;
             O01 = #1DWCD;              // //3
             CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
             If %found() and BOBVCD = 'B';
               #1G1NB = BOG9NB;
             ENDIF;
             O01 = #1DXCD;              // //3
             CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
             If %found() and BOBVCD = 'B';
               #1G3NB = BOG9NB;
             ENDIF;
             O01 = #1DYCD;              // //3
             CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
             If %found() and BOBVCD = 'B';
               #1G5NB = BOG9NB;
             ENDIF;
             O01 = #1EDCD;              // //3
             CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
             If %found() and BOBVCD = 'B';
               #1HDNB = BOG9NB;
             ENDIF;
             O01 = #1EECD;              // //3
             CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
             If %found() and BOBVCD = 'B';
               #1HFNB = BOG9NB;
             ENDIF;
           Endif; //*FI
           WUPFCD = '1';                        // //Switch bedrag W
            // Check Documenten - Documenten BD meerdere  *
           EXSR SCRVGN;
            // CASE: LCL.WRK record found is Yes
           If YL0018 = 'Y'; //*IF
             #1MPCE = *BLANK;                        // //Wkl bet CDE vri
             #1MPCE = 'Y';                        // //Wkl bet CDE vri
           ELSE;
              // CASE: *OTHERWISE
             #1MPCE = *BLANK;                        // //Wkl bet CDE vri
           Endif; //*FI
           WUZGCJ = #1MPCE;                        // //Wrk BD old
         Endif; //*FI
          // Controle na F24 mag men niets meer wijzigen
          // CASE: WRK.Wrk f24 gebruikt is Y
         If WUYBCJ = 'Y'; //*IF
           WUTQCK = 'N';                        // //C105 bestaat al
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
           AAAACD = #1AACD;
           AAAFNB = #1AFNB;
           AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
           AAY1CJ = @CN(034);
           AAY2CJ = 'C105';

           MDCLCBAR08(AARC:WUYXCJ:WQ0262:WQ0263:WUTQCK);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = 'MDCLCBAR08';          // //10
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
           WUTSCK = 'N';                        // //C110A bestaat a
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
           AAAACD = #1AACD;
           AAAFNB = #1AFNB;
           AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
           AAY1CJ = @CN(034);
           AAY2CJ = 'C110A';

           MDCLCBAR08(AARC:WUYXCJ:WQ0266:WQ0267:WUTSCK);
           If %Error();
              // Call to program ended in error
             W0RTN = 'Y2U0032';
             W0CLPG = 'MDCLCBAR08';
                  // Send message '*Error occured on CALL...'
             ZAMSID = 'Y2U0032';
             ZAMSGF = 'Y2USRMSG';
             ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
            // controle na F24 - Wkl betaling  *
           WUYCCJ = 'N';
           If #1GLNB <> F24R6;
             WUYCCJ = 'Y';
           ENDIF;
           If #1GMNB <> F24HR6;
             WUYCCJ = 'Y';
           ENDIF;
           If #1G7NB <> F24BV;
             WUYCCJ = 'Y';
           ENDIF;
           If #1JONB <> F24HBV;
             WUYCCJ = 'Y';
           ENDIF;
           If #1GNNB <> F24V;
             WUYCCJ = 'Y';
           ENDIF;
           If #1JLNB <> F24HV;
             WUYCCJ = 'Y';
           ENDIF;
            //          #1MPCE    IFNE WUZGCJ
            //                    MOVEL'Y'       WUYCCJ
            //                    ENDIF
           If WUTPCK <> WUTQCK;
             WUYCCJ = 'Y';
           ENDIF;
           If WUTRCK <> WUTSCK;
             WUYCCJ = 'Y';
           ENDIF;
            // CASE: WRK.Wijziging na f24 is Y
           If WUYCCJ = 'Y'; //*IF
              // Send message 'F24 gebruikt!'
             ZAMSID = 'USR6380';
             EXSR ZASNMS;
             *In99 = *On;
           Endif; //*FI
         Endif; //*FI
         WUCA77 = '0';                        // //Wrk hidden zett
          // CASE: WRK.Wrk switch dispo testen is 2
         If WUYMCF = '2'; //*IF
            // Testen bedrag wkl berekenen, zelf ingevuld, manueel gewijzigd
            // CASE: WRK.Switch bedrag Wklh is =0 : 1ste maal in program
           If WUPFCD = '0'; //*IF
              // CASE: DTL.Bedrag wkl is = 0
             If #1HPNB = *ZERO; //*IF
                // Send message 'Dispo. U dient zelf bedra'
               ZAMSID = 'USR5123';
               EXSR ZASNMS;
               *In99 = *On;

             ELSE;
                // CASE: *OTHERWISE
               WUPFCD = '1';                        // //Switch bedrag W
               WUMLNB = #1HPNB; //wrk bedrag Wklh
             Endif; //*FI
           ELSE;
              // CASE: *OTHERWISE
              // CASE: WRK.Switch bedrag Wklh is =3 :bedr wkl comput.berek
             If WUPFCD = '3'; //*IF
                // dit betekent 1 maal progr.doorlopen en computer bedrag bepaald
                // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag Wklh
               If #1HPNB = WUMLNB; //*IF
                 #1HPNB = *ZERO; //Bedrag wkl
                  // Send message 'Dispo. U dient zelf bedra'
                 ZAMSID = 'USR5123';
                 EXSR ZASNMS;
                 *In99 = *On;
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: DTL.Bedrag wkl is niet 0
                 If #1HPNB <> *ZERO; //*IF
                   WUPFCD = '1';                        // //Switch bedrag W
                   WUMLNB = #1HPNB; //wrk bedrag Wklh
                 ELSE;
                    // CASE: *OTHERWISE
                   WUPFCD = '0';                        // //Switch bedrag W
                    // Send message 'Dispo. U dient zelf bedra'
                   ZAMSID = 'USR5123';
                   EXSR ZASNMS;
                   *In99 = *On;
                 Endif; //*FI
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Switch bedrag Wklh is =1 :bedr wklh was ingevul
               If WUPFCD = '1'; //*IF
                  // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag Wklh
                 If #1HPNB = WUMLNB; //*IF
                 ELSE;
                    // CASE: *OTHERWISE
                    // CASE: DTL.Bedrag wkl is niet 0
                   If #1HPNB <> *ZERO; //*IF
                     WUMLNB = #1HPNB; //wrk bedrag Wklh
                   ELSE;
                      // CASE: *OTHERWISE
                     WUPFCD = '0';                        // //Switch bedrag W
                      // Send message 'Dispo. U dient zelf bedra'
                     ZAMSID = 'USR5123';
                     EXSR ZASNMS;
                     *In99 = *On;
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // Switch Bz v kred aftrekke - Wkl betaling  *
         SWBZVJ = '0';           // //1
         EvalR   MMIIII = BYEENB;           // //2 0
         JJIIII = BYEENB;           // //4 0
         JJIII1 = JJIIII - 1;
         If WUJRJR = JJIII1;
           If MMIIII = 01; //ENKEL IN JANUARI
             If BYAYST = 'A'; //ACHTERSTAL
               SWBZVJ = '1';           // //1
             ENDIF;
           ENDIF;
         ENDIF;
          // !!! Wrk hidden zetten calcul=0 : controles
          // CASE: WRK.Wrk hidden zetten calcul is 0
         If WUCA77 = '0'; //*IF
            // Contr GB/type bij achters - Wkl betaling  *
           WUW207 = '0';           // //1
           JRGBTY = BYEENB;           // //4 0
           EvalR   MDGBTY = BYEENB;           // //2 0
           If MDGBTY > 5;
             MDGBTY = MDGBTY - 5;
           ELSE;
             JRGBTY = JRGBTY - 1;
             If MDGBTY = 5;
               MDGBTY = 12;
             ELSE;
               If MDGBTY = 4;
                 MDGBTY = 11;
               ELSE;
                 If MDGBTY = 3;
                   MDGBTY = 10;
                 ELSE;
                   If MDGBTY = 2;
                     MDGBTY = 9;
                   ELSE;
                     If MDGBTY = 1;
                       MDGBTY = 8;
                     Endif; //END MND=1
                   Endif; //END MND=2
                 Endif; //END MND=3
               Endif; //END MND=4
             Endif; //END MND=5
           Endif; //END MND>5
           JRTYGB = JRGBTY;           // //6 0
           EvalR   JRTYGB = MDGBTY;
            //          #1GWNB    IFLE JRTYGB                     MEER DN 5 MND ACHTERS
            // WKL3537 : IGU TOELATEN ALS BIJP NA BETALING TW
            // VOOR ALLE MAANDEN, NIET ENKEL 5 MAAND GELEDEN
           If #1GWNB <= BYEENB; //MEER DN 5 MND ACHTER
              //- TESTEN ALS ACHTERSTAL OF BIJPASSING IS,ZO JA WIJZIGT GB-NR EN/OF TYPE?
             GNC12N = '0000';           // //4
             C10KKK = '0';           // //1
             GBKKKK = 0;
             SETLL (#1AACD:#1AFNB:#1GWNB:#1GWNB:#1GWNB:GNC12N:C10KKK:GBKKKK) @BZREFY;
             READ @BZREFY ;
             If %eof();
               *InLR = *On;
             Else;
              If #1AACD = BZAACD AND #1AFNB = BZAFNB; //AFD
               If #1GWNB = BZK5NB AND #1GWNB = BZBJDM AND GNC12N = BZCGCD; //REFMND
                 If BZCDCD <> #1A1CD; //TYPE VERSCH.
                   WUW207 = '1';
                 Else;
                   EvalR   GBTSTN = '00';           // //2
                   EvalR   GBTSTN = BZK3NB;
                   If GBTSTN <> #1A2CD; //GB-NR VERSCH
                     WUW207 = '2';
                   ENDIF;
                 EndIf;
               ENDIF; //ZELFDE REF.M
             ENDIF; //ZELFDE LIDNR
             READ @BZREFY ;
             If %Eof();
               *InLR = *On;
             Endif;
            Endif;
           ENDIF; //GWNB<LP.MD-5
            // Switch207=1:Type wklh. verschilt met oorspronkelijke betaling.
            // CASE: WRK.switch207 is 1
           If WUW207 = '1'; //*IF
              // Send message 'Type wklh. verschilt met'
             ZAMSID = 'USR2036';
             ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;
           Endif; //*FI
            // Switch207=2:GB-nr verschilt met oorspronkelijke betaling
            // CASE: WRK.switch207 is 2
           If WUW207 = '2'; //*IF
              // Send message 'GB-nr verschilt met 1ste'
             ZAMSID = 'USR2035';
             ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;
           Endif; //*FI
            // Cmd23 --> Display wkl controlerecord
            // CASE: DTL.*CMD key is CF23
           If *IN23 = '1'; //*IF
              // Display Wkl controlerecor - Wkl controle  *
             //Display Wkl con

             LVO6D1R(W0RTN);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LVO6D1R';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
             W0DCF = 'Y';                         // //*Defer confirm
           Endif; //*FI
           WUC6CD = *BLANK;                        // //blanko
           WULNCD = 'N';                        // //Sw type 02/04
           WULOCD = 'N';                        // //Sw type01/03/08
           WULQCD = 'N';                        // //Sw type 09/10
           WULPCD = 'N';                        // //Sw type 13/14
           WUTY18 = 'N';                        // //Switch type 18
           WUCC18 = *BLANK;                        // //WRK controle 18
           WUPSCD = '0';                        // //Switch berekeni
           WUCA75 = '0';                        // //Wrk switch hidd
           WUCA40 = '0';                        // //Regime 6 - 5 BA
            // vraagteken in BD veld (betaaldossier)
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Wkl bet CDE vrij2 is vraagteken1
            //   !- c2    : DTL.Wkl bet CDE vrij2 is vraagteken2
            //   '-
           If #1MPCE = '?' OR #1MPCE = ' ?'; //*IF
              // Overzicht documenten BD - Documenten Betaaldossier  *
             CLEAR   ADRC;
             ADYVCJ = @CN(034);
             ADYXCJ = WUYXCJ;
             CLEAR   AERC;
             AEAACD = #1AACD;
             AEAFNB = #1AFNB;
             AEY0CJ = WUWUBE;
             AEQLDM = #1GWNB; //Doc BD meer RM
             AEQMDM = WUZKNR; //Doc BD meer IM
             AEY1CJ = @CN(034);
             AEY2CJ = *BLANK;
             AEW3TN = *BLANK;
             AEY3CJ = #1EGCD;
             AEQ4DE = WUQ4DE; //Doc BD meer dtm
             AEQNDM = #1HJNB; //Doc BD meer dok
             AEY4CJ = 'D';

             //Overzicht docum
             LZGWEFR(W0RTN:ADRC:AERC:YL0020:YL0021);
             If %Error();
                // Call to program ended in error
               W0RTN = 'Y2U0032';
               W0CLPG = *BLANKS;          // //10
               W0CLPG = 'LZGWEFR';
                      // Send message '*Error occured on CALL...'
               ZAMSID = 'Y2U0032';
               ZAMSGF = 'Y2USRMSG';
               ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
              // Check Documenten - Documenten BD meerdere  *
             EXSR SCRVGN;
              // CASE: LCL.WRK record found is Yes
             If YL0018 = 'Y'; //*IF
               #1MPCE = 'Y';                        // //Wkl bet CDE vri
             ELSE;
                // CASE: *OTHERWISE
               #1MPCE = *BLANK;                        // //Wkl bet CDE vri
             Endif; //*FI
           ELSE;
              // CASE: *OTHERWISE
              // Test veld BD  (Karina)
              // CASE:
              //  - NOTc1 AND NOT c2
              //   !- c1    : DTL.Wkl bet CDE vrij2 is Y
              //   !- c2    : DTL.Wkl bet CDE vrij2 is Blanco
              //   '-
             Y0CX01 = '0';           // //1
             If #1MPCE = 'Y'; //*IF
             ELSE;
               If #1MPCE = *BLANK; //*IF
               ELSE;
                 Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
                // Setup message data for message
               ZA0040 = #1MPCE;                        // //Wkl bet CDE vri
               ZA0041 = @CN(035);                        // //Wrk veld 15 lan
                // Send message 'Waarde moet &2 zijn'
               ZAMSID = 'USR6029';
               EXSR ZASNMS;
               *In99 = *On;

                // *Set Cursor: DTL.Wkl bet CDE vrij2  (*Override=*YES)
               W0ROW1 = 015;
               W0COL1 = 068;
               W0OVR1 = '1';                        // //*YES
               WUPSCD = '1';                        // //Switch berekeni
             ELSE;
                // CASE: *OTHERWISE
                // Check Documenten - Documenten BD meerdere  *
               EXSR SCRVGN;
                // CASE:
                //  - c1 AND c2
                //   !- c1    : DTL.Wkl bet CDE vrij2 is Y
                //   !- c2    : LCL.WRK record found is No
                //   '-
               Y0CX01 = '0';           // //1
               If #1MPCE = 'Y'; //*IF
                 If YL0018 = 'N'; //*IF
                   Y0CX01 = '1';
                 Endif; //*FI
               Endif; //*FI
               If Y0CX01 = '1'; //*IF
                  // Setup message data for message
                 ZA0042 = #1MPCE;                        // //Wkl bet CDE vri
                  // Send message 'Geen documenten BD'
                 ZAMSID = 'USR6400';
                 EXSR ZASNMS;
                 *In99 = *On;

                  // *Set Cursor: DTL.Wkl bet CDE vrij2  (*Override=*YES)
                 W0ROW1 = 015;
                 W0COL1 = 068;
                 W0OVR1 = '1';                        // //*YES
                 WUPSCD = '1';                        // //Switch berekeni
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE:
                  //  - c1 AND c2
                  //   !- c1    : DTL.Wkl bet CDE vrij2 is Blanco
                  //   !- c2    : LCL.WRK record found is Yes
                  //   '-
                 Y0CX01 = '0';           // //1
                 If #1MPCE = *BLANK; //*IF
                   If YL0018 = 'Y'; //*IF
                     Y0CX01 = '1';
                   Endif; //*FI
                 Endif; //*FI
                 If Y0CX01 = '1'; //*IF
                    // Setup message data for message
                   ZA0043 = #1MPCE;                        // //Wkl bet CDE vri
                    // Send message 'Er zijn documenten BD'
                   ZAMSID = 'USR6401';
                   EXSR ZASNMS;
                   *In99 = *On;

                    // *Set Cursor: DTL.Wkl bet CDE vrij2  (*Override=*YES)
                   W0ROW1 = 015;
                   W0COL1 = 068;
                   W0OVR1 = '1';                        // //*YES
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // OCV +barema ICLD
            // CASE:
            //  - c1ANDc2
            //   !- c1    : DTL.Type wklh. kode is 53
            //   !- c2    : DTL.Barema RVAkode is ..ICLD.
            //   '-
         Y0CX01 = '0';           // //1
           If #1A1CD = '53'; //*IF
             If #1DOCD = @CN(003); //*IF
         Y0CX01 = '1';
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
             WUGENE = WUX8ND / 100; //Wrk eindmaand t
              // CASE: DTL.Datum achterstal EQ WRK.Wrk eindmaand type53
             If #1GWNB = WUGENE; //*IF
                // CASE: DTL.VD6 GT WRK.Aantal dgn R6 OCV te bet
               If #1GLNB > WUGHNE; //*IF
                  // Setup message data for message
                 ZA0044 = WUPYCK;                        // //Wrk dtm 10 lang
                  // Send message 'Aantal dagn OCV ICLD te g'
                 ZAMSID = 'USR6701';
                 EXSR ZASNMS;
                 *In99 = *On;

                 WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // BZ=BA regime 5 dagen of 6 dagen naargelang codes ingevuld
            // CASE: DTL.BZ kode is BA
           If #1A4CD = 'BA'; //*IF
              // CASE: DTL.Beroep kode is 09 : Dok A'pen
             If #1BACD = '09'; //*IF
         WUCA40 = '5';                        // //Regime 6 - 5 BA
             ELSE;
                // CASE: *OTHERWISE
         WUCA40 = '6';                        // //Regime 6 - 5 BA
             Endif; //*FI
           Endif; //*FI
            // Alle TV'en passief en minstens 1 met saldo>0: info
            // CASE: WRK.Switch205 is 1
           If WUW205 = '1'; //*IF
              // Send message 'Geen enkele Tv aktief,wel'
         ZAMSID = 'USR1858';
         ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;

           Endif; //*FI
            // Opv hulpzones vr betaling - Wkl betaling  *
     EvalR   PD1AL = #1AINB;            // //6 0          1E DL PENS.NR
         BARACL = *BLANK;           // //5
         BARVW5 = *BLANK;           // //5
         BARFOR = *BLANK;           // //5
         POST1 = *BLANK;            // //1
           If WUW002 = '0'; //TYPE02,F1
             HVD6 = 0; //VD6
             HHD6 = 0; //HD6
           Endif;
           If WUW002 <> 'D'; //TYPE02,F1
             HVD5 = 0; //VD5
             HHD5 = 0; //HD5
           ENDIF;
           HUREN = 0; //UREN P GED W
           HVBZ = 0; //VBZ
           HHBZ = 0; //HBZ
           HVBZ1B = 0; //VBZ1
           HHBZ1B = 0; //HBZ1
           HVBZ2B = 0; //VBZ2
           HHBZ2B = 0; //HBZ2
           HVVOR = 0; //VVORST
           HHVOR = 0; //HVORST
           HVVERL = 0; //VVERLOF
           HHVERL = 0; //HVERLOF
           HVBV = 0; //VBVERLOF
           HHBV = 0; //HBVERLOF
           HWKL = 0; //WKLH
           HBEDBZ = 0; //BEDR BZ
           BZINH = 0; //BEDR BZINH BP
           HTAKS = 0; //TAKS
           HTAKSW = 0; //TAKS WKL
           HTAKSB = 0; //TAKS BZ
           NET = 0; //NETTO
           HNET = 0; //NETTO TV
           HNET1 = 0;
           HNET2 = 0;
           RWP = 0; //RWP
           HX2 = 0; //X2 BEDR
           HBEDBC = 0; //BEDRAG BC
           HBEDB1 = 0;
           HBEDB2 = 0;
           BCAAN1 = 0;
           BCAAN2 = 0;
           BCAAAA = 0;
           AFDBD1 = 0;
           AFDBD2 = 0;
           HY = 0; //Y
           HYFT = 0; //YFT
           HUBV = 0; //UREN BET VER
           HVW = 0; //VW
           HMIN = 0; //MIN
           HZA = 0; //Z+A
           HC32 = 0; //C3.2
           VMHAL = 0; //HALVE VOOR KUMULDGN
            //                    Z-ADD0         DAGB1   84       COMPL TEXTIE
           HQX4 = #1F3NB; //QX4
           HVBAR = 0; //BEDR BAR.VOL
           HHBAR = 0; //BEDR BAR.HAL
           HVBARB = 0; //T09 BAR.VOL
           HHBARB = 0; //T18 BAR.HAL
           HVFOR = 0; //BAR.VOL FORF
           HHFOR = 0; //BAR.HAL FORF
           HV05 = 0; //BDR.BARVOL05
           HH05 = 0; //BDR.BARHAL05
           HVBAR5 = 0; //BEDR BAR.VOL
           HHBAR5 = 0; //BEDR BAR.HAL
           HV501 = 0; //BEDR 01VOLLE
           HH501 = 0; //BEDR 01HALVE
           VVLOER = 0; //VLOERBEDRAG VOL
           HVLOER = 0; //VLOERBEDRAG HALF
         FOUTKO = '0';           // //1
           HBEDVO = 0; //BEDR VORST
           HBBVO = 0; //BEDR VORST BB
           SOMBVO = 0;
           PROD = 0;
           DEEL = 0;
           DECIM = 0;
           HOOFD = 0;
           HVTOT6 = 0;
           HHTOT6 = 0;
           HVAL6 = 0;
           HHAL6 = 0;
           DELVOR = 0;
           VORST2 = 0;
           DECIMV = 0;
           HOOFDV = 0;
           DELWKL = 0;
           DELW27 = 0;
         SWT27 = *blanks;
           MIN = 0;
           GPNBVR = 0;
           GPNBNA = 0;
           HHAL6 = 0;
           DELBZ = 0;
           SOMBZ = 0;
           SOMBZV = 0;
           DELVER = 0;
           DELV = 0;
           DELBV = 0;
           DELWK2 = 0;
           PRODY = 0;
           FORM1 = 0;
           DELY = 0; //?
           DECIMY = 0; //?
           DECBVY = 0; //?
           AFTREK = 0;
           PROBVY = 0;
           DELBVY = 0;
           HHDBV = 0;
           SOM = 0;
           SOM2 = 0;
           SOM3 = 0;
           VERS1 = 0;
           VERS2 = 0;
           RESULT = 0;
           S0010 = 0;
           S00BED = 0;
           BAFH1 = 0;
           BAFH2 = 0;
           BAFH3 = 0;
           BAFH4 = 0;
           BAFH5 = 0;
           BAFH6 = 0;
           HAFH1B = 0;
           HAFH2B = 0;
           HAFH3B = 0;
           HAFH4B = 0;
           HAFH5B = 0;
           HAFH6B = 0;
           VERSC3 = 0;
           VERSC2 = 0;
           DEEL25 = 0;
           DEEL27 = 0;
           DEEL33 = 0;
           TOTBZ = 0;
           TOTBZX = 0;
           TOTBZY = 0;
           TOTBOU = 0;
           HKRBZ = 0;
           HHBZHU = 0;
           HVBZD1 = 0;
           HKRRES = 0;
           RESUL2 = 0;
           KUMLM = 0;
           KUMVM = 0;
           KUMHAL = 0;
           JJAACH = 0;
           MMAACH = 0;
           JJMACH = 0;
           JBIJDR = 0;
           MBIJDR = 0;
           MAXAAN = 0;
           JBCJBC = 0;
           JWKLJ = 0;
           MWKLM = 0;
           XXKBF = 0;
           XXNTV = 0; //NIET-VERGOEDBAAR
           LEEFT = 0;
           LEEFTT = 0;
           HHHHBZ = 0;
           DATFO = #1A6DM;
           DGNLM = 0;
           DAGHS = 0;
           HDAGHS = 0;
           HALFHS = 0;
           VOLHS = 0;
           HHD6T1 = 0;
           HVD6T1 = 0;
           HHD6T2 = 0;
           HVD6T2 = 0;
           HHBZ1 = 0;
           HVBZ1 = 0;
           HHBZ2 = 0;
           HVBZ2 = 0;
           RES = 0;
           RES1 = 0;
           RES2 = 0;
           VERM1 = 0;
           VERM11 = 0;
           VERM2 = 0;
           VERM22 = 0;
           HUV = 0; //?
           HYUUR = 0;
           ARBURN = 0;
           ARBUR = 0;
           NAKOM = 0;
           YNETB = 0;
           YNET = 0;
           VOORH = 0;
           DAGT = 0;
         SITUAT = *BLANK;           // //3
           VOLBED = 0;
           HALBED = 0;
           C32NK = 0;
           HWKL1 = 0;
           HWKL2 = 0;
           DEC05 = 0;
           DEC05V = 0;
           DEC05N = 0;
           HHD605 = 0;
           HVD605 = 0;
           NEGTAK = 0;
           TOTPLU = 0;
           NEGPOS = 0;
           HVD6T2 = 0;
           HHD6T2 = 0;
           HBED02 = 0;
           BV12MD = 0; //BV DGN 12E MND
         CATBC = *BLANK;            // //2
           JRCATB = 0;
           MDKAT = 0;
           WYZKAT = 0;
           S18TOT = 0;
           T02IND = 0;
           T02REF = 0;
         WULECF = *BLANK;           // //1            T27
           ZPLA = 0;
           ZDLA = 0;
           WKREG = 0;
     EvalR   W1MA = #1ALST;             // //1 0
     EvalR   W1DI = #1AMST;             // //1 0
     EvalR   W1WO = #1ANST;             // //1 0
     EvalR   W1DO = #1AOST;             // //1 0
     EvalR   W1VR = #1APST;             // //1 0
     EvalR   W1ZA = #1AQST;             // //1 0
           WKREG = WKREG + W1MA;
           WKREG = WKREG + W1DI;
           WKREG = WKREG + W1WO;
           WKREG = WKREG + W1DO;
           WKREG = WKREG + W1VR;
           WKREG = WKREG + W1ZA;
            // Veld geen uren ged.wkl opvullen als blank is
            // CASE: DTL.Geen uren ged. wkl. EQ WRK.blanko
           If #1ISCD = WUC6CD; //*IF
         #1ISCD = 'Y';                        // //Geen uren ged.
           Endif; //*FI
            // Veld geen bedrag BZ opvullen als blank is
            // CASE: DTL.Geen bedrag wklh EQ WRK.blanko
           If #1BDST = WUC6CD; //*IF
         #1BDST = 'Y';                        // //Geen bedrag wkl
           Endif; //*FI
            // Veld geen dagen/bedrag BZ opvullen als blank is
            // CASE: DTL.Geen dagen/bedrag BZ EQ WRK.blanko
           If #1BCST = WUC6CD; //*IF
         #1BCST = 'Y';                        // //Geen dagen/bedr
           Endif; //*FI
            // Controle 12e mnd en V/BV - Wkl betaling  *
     EvalR   WUWU57 = '0';           // //1            SWITCH157
           If MNDACH = 12;
             If #1A1CD <> '02' AND #1A1CD <> '04' AND #1A1CD <> '06' AND #1A1CD <> '50' AND #1A1CD <
               If #DMTNB <> *ZERO; //BV
                 BV12MD = #1JONB / 2; //HBV/2
                 BV12MD = BV12MD + #1G7NB; //+VOLLE BV
                 If BV12MD < #DMTNB; //INGEBRACHTE
     EvalR   WUWU57 = '1';                        // //BV<BV F13-SCHER
                 ENDIF; //BV12MD<F13BV
               Endif; //NOG BV DAGEN
             Endif; //NT 02/NT04/NT06
           Endif; //12E MAAND
           If #1A4CD = '35' OR #1A4CD = '85' OR #1A4CD = 'BA' OR #1A4CD = 'FZ' OR #1A4CD = 'PZ';
     EvalR   WUWU57 = '0';                        // //BV<BV F13-SCHER
           ENDIF; //BV12MD<F13BV
            // CASE: DTL.Datum achterstal is < 201401
           If #1GWNB < 201401; //*IF
              // 12e maand en er zijn nog V / BV dagen : error bericht
              // CASE: WRK.Switch157 is 1
             If WUWU57 = '1'; //*IF
                // Send message 'Opgelet : nog BV dagen'
         ZAMSID = 'USR1261';
         ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;

             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Switch157 is 2
               If WUWU57 = '2'; //*IF
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Switch157 is 3
                 If WUWU57 = '3'; //*IF
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Eerst BV, dan V uitputten : 071995
            // CASE: DTL.Wkl Kr.BV is > 0
           If #DMTNB > *ZERO; //*IF
              // CASE:
              //  - c1ORc2
              //   !- c1    : DTL.Volle dagen verlof is niet 0
              //   !- c2    : DTL.Halve dagen verlof is niet 0
              //   '-
             If #1GNNB <> *ZERO OR #1JLNB <> *ZERO; //*IF
               WUCA80 = *ZERO; //Wrk delen halve
               WUCA80 = #1JONB / 2; //Wrk delen halve
               WUCA80 = WUCA80 + #1G7NB; //Wrk delen halve
                // CASE: WRK.Wrk delen halve dagen LT DTL.Wkl Kr.BV
               If WUCA80 < #DMTNB; //*IF
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Controle afhouding IR,IR- - Wkl betaling  *
     EvalR   WUW1CD = '0';
           If #1A1CD <> '15'; //TYPE 15
             If #1DVCD = 'IR ' OR #1DVCD = 'IR-' OR #1DWCD = 'IR ' OR #1DWCD = 'IR-' OR #1DXCD = 'IR
     EvalR   WUW1CD = '1';
             Endif; //AFH KODES
           Endif; //NT 13,14,15
            // swIR = 1 --> IR en IR- enkel mogelijk bij type 13, 14 en 15
            // CASE: WRK.swIR is 1
           If WUW1CD = '1'; //*IF
              // Send message 'IR & IR- : type 13,14,15!'
         ZAMSID = 'USR0764';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Controle wijziging afh. - Wkl bet  *
           If RESULT >= 0;
     EvalR   WUPRCD = '0';
         AFHP1 = #1DVCD;            // //1            POS1 AFHKODE
         WAFHP1 = WUPJCD;           // //1
             If #1DVCD <> WUPJCD; //AFH1 KODE
               EXSR AFHWYZ;
               If WUPRCD = '2';
     EvalR   #1OYCD = *BLANK;                        // //AFH1 KODE TV
     EvalR   WUPJCD = *BLANK;
               Endif;
             Endif;
         AFHP1 = #1DWCD;            // //1
         WAFHP1 = WUPKCD;           // //1
             If #1DWCD <> WUPKCD; //AFH2 KODE
               EXSR AFHWYZ;
               If WUPRCD = '2';
     EvalR   #1OZCD = *BLANK;                        // //AFH2 KODE TV
     EvalR   WUPKCD = *BLANK;
               Endif;
             Endif;
         AFHP1 = #1DXCD;            // //1
         WAFHP1 = WUPLCD;           // //1
             If #1DXCD <> WUPLCD; //AFH3 KODE
               EXSR AFHWYZ;
               If WUPRCD = '2';
     EvalR   #1O0CD = *BLANK;                        // //AFH3 KODE TV
     EvalR   WUPLCD = *BLANK;
               Endif;
             Endif;
         AFHP1 = #1DYCD;            // //1
         WAFHP1 = WUPMCD;           // //1
             If #1DYCD <> WUPMCD; //AFH4 KODE
               EXSR AFHWYZ;
               If WUPRCD = '2';
     EvalR   #1O1CD = *BLANK;                        // //AFH4 KODE TV
     EvalR   WUPMCD = *BLANK;
               Endif;
             Endif;
         AFHP1 = #1EDCD;            // //1
         WAFHP1 = WUPNCD;           // //1
             If #1EDCD <> WUPNCD; //AFH5 KODE
               EXSR AFHWYZ;
               If WUPRCD = '2';
     EvalR   #1O2CD = *BLANK;                        // //AFH5 KODE TV
     EvalR   WUPNCD = *BLANK;
               Endif;
             Endif;
         AFHP1 = #1EECD;            // //1
         WAFHP1 = WUPOCD;           // //1
             If #1EECD <> WUPOCD; //AFH6 KODE
               EXSR AFHWYZ;
               If WUPRCD = '2';
     EvalR   #1O3CD = *BLANK;                        // //AFH6 KODE TV
     EvalR   WUPOCD = *BLANK;
               Endif;
             Endif;
           Endif;
            // Swafh=1:O01,..,S01,.. en TV werden gewijzigd door bediende-->erro
            // CASE: WRK.swafh is 1
           If WUPRCD = '1'; //*IF
              // Send message 'Wijzig.afh kodes nt toege'
         ZAMSID = 'USR0464';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Contr TV's&TB-'s omwissel - Wkl betaling  *
     EvalR   WUWUTV = '0';           // //1
         LET1 = *BLANK;             // //1
         LET11 = *BLANK;            // //1
         LET1 = #1DVCD;
         LET11 = #1OYCD;
           EXSR OMWIS;
         LET1 = #1DWCD;
         LET11 = #1OZCD;
           EXSR OMWIS;
         LET1 = #1DXCD;
         LET11 = #1O0CD;
           EXSR OMWIS;
         LET1 = #1DYCD;
         LET11 = #1O1CD;
           EXSR OMWIS;
         LET1 = #1EDCD;
         LET11 = #1O2CD;
           EXSR OMWIS;
         LET1 = #1EECD;
         LET11 = #1O3CD;
           EXSR OMWIS;
            // SwTV=1: TV kodes G. zonder kode T01, T02, .... --> error
            // CASE: WRK.Wrk controle TV's is 1
           If WUWUTV = '1'; //*IF
              // Send message 'Wijzig.afh kodes nt toege'
         ZAMSID = 'USR0464';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Contr data barema,vrijst4 - Wkl betaling  *
     EvalR   WUF9CD = '0';                        // //SW10 DGN>MAX
     EvalR   WUGACD = '0';                        // //SW11 DGN>MAX
     EvalR   WUGCCD = '0';                        // //SW13 BV>MAX
     EvalR   WUGECD = '0';                        // //SW15 BZ>MAX
     EvalR   WUGXCD = '0';                        // //SW16 VO>MAX
     EvalR   WUGYCD = '0';                        // //SW17 KBF>MA
     EvalR   WUGZCD = '0';                        // //SW18 ZELF BEREK
     EvalR   WUG0CD = '0';           // //1            SW19 0-KODE
     EvalR   WUG1CD = '0';           // //1            SW20 VERBLI
     EvalR   WUG2CD = '0';                        // //SW21 SANKTI
     EvalR   WUG4CD = '0';           // //1            SW23 ARBEID
     EvalR   WUG5CD = '0';                        // //SW24 PENSIOEN
     EvalR   WUG6CD = '0';           // //1            SW25 Y,YFT
     EvalR   WUHXCD = '0';                        // //SW26 TB-,IR-
     EvalR   WUJHCD = '0';           // //1            SW40 BZ ZEL
     EvalR   WUJICD = '0';           // //1            SW41 BZ=B
     EvalR   WUOWCD = '0';                        // //SW80 ACHT
     EvalR   WUW194 = '0';                        // //SW194 ..T...
            // 6-DAGENSTELSEL
           SOM6DD = #1GMNB / 2; //HD6/2
           SOMVD = #1JLNB / 2; //HVERL/2
           If #1JONB >= 0;
             SOMBVD = #1JONB / 2; //HBV/2
           ENDIF;
           SOM6D = SOM6DD + SOMBVD; //HD6/2+HV/2
           SOM6D = SOM6D + SOMVD; //SOM6D+HBV/2
           SOM6D = SOM6D + #1GLNB; //SOM+VD6
           SOM6D = SOM6D + #1GNNB; //SOM+V
           If #1G7NB >= 0;
             SOM6D = SOM6D + #1G7NB; //SOM+BV
           ENDIF;
           DELBZ = #1JNNB / 2;
           DELVOR = #1JMNB / 2;
           DELBZ = DELBZ + #1GPNB;
           DELVOR = DELVOR + #1GONB;
           DELBZ = DELBZ + DELVOR;
            // 5-DAGENSTELSEL : DOK NIET A'PEN EN RIVIERARBEIDERS
           DELDOK = #1GHNB / 2;
           DELDOK = DELDOK + #1GGNB;

           If #1GWNB = BYEENB; //ACHT=LOP MND
              // VD6 + HD6 + V + HV + BV + HBV MOET <= AAN MAX VD6/WKLMAAND
             If SOM6D > BYD6NB;
     EvalR   WUF9CD = '1';
               If #1A1CD = '12';
         WUF9CD = '0';
                 If SOM6D > 30;
         WUF9CD = '1';
                 ENDIF; //30DAGEN
               ENDIF; //TYPE 12
               If #1A1CD = '27';
         WUF9CD = '0';
               ENDIF; //TYPE 27
               If #1A1CD = '05' OR #1A1CD = '57';
         WUF9CD = '0';
                 If SOM6D > 33;
         WUF9CD = '1';
                 ENDIF; //33DAGEN
               ENDIF; //TYPE 05/57
             ELSE;
               SOMKBF = 0;
               SOMKBF = SOM6D + #1GXNB; //+KBF
               SOMKBF = SOMKBF + #1BBNR; //+KBF
               If SOMKBF > BYD6NB;
     EvalR   WUF9CD = '1';
                 If #1A1CD = '12';
         WUF9CD = '0';
                   If SOMKBF > 30;
         WUF9CD = '1';
                   ENDIF; //30DAGEN
                 ENDIF; //TYPE 12
                 If #1A1CD = '27';
         WUF9CD = '0';
                 ENDIF; //TYPE 27
                 If #1A1CD = '05' OR #1A1CD = '57';
         WUF9CD = '0';
                   If SOMKBF > 33;
         WUF9CD = '1';
                   ENDIF; //33DAGEN
                 ENDIF; //TYPE 05/57
               Endif;
             Endif;
              // DAGEN VD5 + HD5 KLEINER OF GELIJK AAN MAXIMUM
             If DELDOK > BYD7NB;
     EvalR   WUGACD = '1';
             ELSE;
               If DELDOK > 0;
                 SOMKBF = 0;
                 SOMKBF = DELDOK + #1GXNB; //+KBF
                 SOMKBF = SOMKBF + #1BBNR; //+KBF
                 If SOMKBF > BYD7NB;
     EvalR   WUGACD = '1';
                 Endif;
               Endif;
             Endif;
              //  DAGEN BZ+HBZ+VORST+HVORST KLEINER OF GELIJK AAN MAXIMUM VD6
             If #1A1CD <> '02';
               If #1A1CD <> '05';
                 If #1A1CD <> '57';
                   If #1A1CD <> '12';
                     If DELBZ > BYEANB;
     EvalR   WUGECD = '1';
                     Endif;
                   ELSE; //TYPE 12
                     If DELBZ > 30;
     EvalR   WUGECD = '1';
                     Endif; //END 30
                   ENDIF; //TYPE 12
                 ELSE; //TYPE 57
                   If DELBZ > 28;
     EvalR   WUGECD = '1';
                   Endif; //END 28
                 Endif; //END TYPE 57
               ELSE; //TYPE 05
                 If DELBZ > 28;
     EvalR   WUGECD = '1';
                 Endif; //END 28
               Endif; //END TYPE 05
             ELSE; //TYPE 02
               If DELBZ > 31;
                 If #1A4CD = 'B ';
                   If DELVOR > 0;
                     DELBZ = DELBZ - DELVOR;
                     If DELBZ > 31;
     EvalR   WUGECD = '1';
                       DELBZ = DELBZ + DELVOR;
                     ELSE; //<= 28 DAGEN
                       DELBZ = DELBZ + DELVOR;
                     ENDIF; //END > 28
                   ELSE; //DELVOR=0
     EvalR   WUGECD = '1';
                   ENDIF; //END DELVOR>0
                 ELSE; //BZ <> B
     EvalR   WUGECD = '1';
                 ENDIF; //GEEN BOUW
               Endif; //END 28
             Endif; //END TYPE 02
              // DGN KBF SANKTIE/DGN NT VERGOEDBAAR KLEINER OF GELIJK AAN MAXIMUM VD6
             If #1GXNB > BYD6NB OR #1BBNR > BYD6NB;
     EvalR   WUGYCD = '1';
             Endif;

           ELSE; //ACHT<WKLMAAND
             If SOM6D > 27;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>27
               If #1A1CD = '12';
     EvalR   WUOWCD = '0';
                 If SOM6D > 30;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>30
                 ENDIF; //30DAGEN
               ENDIF; //TYPE 12
               If #1A1CD = '02';
     EvalR   WUOWCD = '0';
                 If SOM6D > 31;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>28
                 ENDIF; //28DAGEN
               ENDIF; //TYPE 02
               If #1A1CD = '27';
     EvalR   WUOWCD = '0';
                 If SOM6D >= 28;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>27,5
                 ENDIF; //28DAGEN
               ENDIF; //TYPE 27
               If #1A1CD = '05' OR #1A1CD = '57';
     EvalR   WUOWCD = '0';
                 If SOM6D > 33;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>33
                 ENDIF; //33DAGEN
               ENDIF; //TYPE 05/57
             ELSE;
               SOMKBF = 0;
               SOMKBF = SOM6D + #1GXNB; //+KBF
               SOMKBF = SOMKBF + #1BBNR; //+NT VERGOEDBAAR
               If SOMKBF > 27;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>27
               Endif;
               If #1A1CD = '27';
     EvalR   WUOWCD = '0';
                 If SOMKBF >= 28;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>27,5
                 Endif;
               ENDIF; //TYPE 27
             Endif;
             If DELBZ > 27;
     EvalR   WUOWCD = '1';                        // //ACHT BZ>27
               If #1A1CD = '27';
     EvalR   WUOWCD = '0';
                 If DELBZ >= 28;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>27,5
                 Endif;
               ENDIF; //TYPE 27
             Endif;
             If DELDOK > 23;
     EvalR   WUOWCD = '1';                        // //ACHT DOK>25
             ELSE;
               If DELDOK > 0;
                 SOMKBF = 0;
                 SOMKBF = DELDOK + #1GXNB;
                 SOMKBF = SOMKBF + #1BBNR; //+NT VERGOEDBAAR
                 If SOMKBF > 23;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>23
                 Endif; //END>23
               Endif; //END DELDOK<>
             Endif; //END DELDOK23
             If #1A1CD = '02';
     EvalR   WUOWCD = '0';                        // //ACHT DGN>32 IPV 27
     EvalR   WUGECD = '0';                        // //ACHT DGN>28,5
               DELBZ = DELBZ - DELVOR;
               If SOM6D > 31;
     EvalR   WUOWCD = '1';                        // //ACHT DGN>28,5
               ENDIF;
               If DELBZ > 31;
     EvalR   WUGECD = '1';                        // //ACHT DGN>28,5
               ENDIF;
               DELBZ = DELBZ + DELVOR;
             ENDIF;
           Endif; //ACHT=WKLMND
            //  DAGEN BV + HBV EN V + HV KLEINER OF GELIJK AAN 24
           DELBV = #1JONB / 2;
           DELBV = DELBV + #1G7NB;
           If DELBV > 24;
     EvalR   WUGCCD = '1';
           Endif;
           DELV = #1JLNB / 2;
           DELV = DELV + #1GNNB;
           If DELV > 24;
     EvalR   WUGCCD = '1';
           Endif;
            // VOOR 199707 WKLH EN BZ ZELF INBRENGEN
           If #1GWNB < 199707 AND #1GYNB = *ZERO AND #1HPNB = *ZERO; //ACK<KL DATUM
     EvalR   WUGZCD = '1';
           ENDIF;
           If #1GWNB >= BYEHNB;
             If #1GKNB <> *ZERO; //YFT NT NUL
               If #1GJNB = *ZERO; //Y=0
     EvalR   WUG6CD = '2';                        // //SWITCH25
               Endif;
             Endif;
           Endif;
            //  DATUM 0-KODE <= DATUM WKLHMAAND
         JJMMBV = #1AEDT;           // //6 0          JJJJMM 0-KODE
            //  DATUM VERBLIJFSVERG <= DATUM WKLHMAAND, BEDRAG BZ EN WKL = 0
           EXTBDR = #1HPNB;
           EXTBZ = #1GYNB;
           RMPAR = #1GWNB;
           T02IND = BYEENB;
           //AFD.
           //LIDNR
           //REF.MND
           //IM.MND
           //SWITCH20
            //  DATUM ARBEIDSVERGUNNING <= DATUM WKLHMAAND
         JJMMBV = #1AIDT;           // //6 0          JJJJMM ARBVE
           If JJMMBV <> *ZERO;
             If JJMMBV <= BYEENB AND JJMMBV < #1GWNB AND #1HPNB = *ZERO AND #1GYNB = *ZERO;
     EvalR   WUG4CD = '1';
             Endif;
           Endif;
            // DATUM EINDE SANKTIE >= WKLHMAAND ==> NT BETALEN/ZELF BEDR INVUL
         JJMMBV = #1ALDT;           // //6 0          BEGIN SANKTI
         JJMMVR = #1AMDT;           // //6 0          EIND SANKTIE
           If JJMMVR <> *ZERO; //EIND NT 0
             If #1GWNB >= JJMMBV AND #1GWNB <= JJMMVR; //ACH>BEG SANK
               If #1HPNB = *ZERO AND #1GYNB = *ZERO AND #1GXNB = *ZERO AND #1BBNR = *ZERO; //BEDR WK
                 If #1A1CD <> '00' AND #1A1CD <> '21' AND #1A1CD <> '22'; //NT TYPE 00
     EvalR   WUG2CD = '1';
                 Endif;
               Endif;
             Endif;
           Endif;
           If JJMMVR = *ZERO; //EIND=0
             If JJMMBV <> *ZERO; //BEGIN INGEV.
               If #1GWNB >= JJMMBV AND #1HPNB = *ZERO AND #1GYNB = *ZERO AND #1GXNB = *ZERO AND #1BB
                 If #1A1CD <> '00' AND #1A1CD <> '21' AND #1A1CD <> '22';
     EvalR   WUG2CD = '1';
                 Endif;
               Endif;
             Endif;
           Endif;
            // DATUM EINDE SANKTIE >= WKLHMAAND ==> NT BETALEN/ZELF BEDR INVUL
         JJMMBV = #1MBDD;           // //6 0          BEGIN SANKTI
         JJMMVR = #1MCDD;           // //6 0          EIND SANKTIE
           If JJMMVR <> *ZERO; //EIND NT 0
             If #1GWNB >= JJMMBV AND #1GWNB <= JJMMVR; //ACH>BEG SANK
               If #1HPNB = *ZERO AND #1GYNB = *ZERO AND #1GXNB = *ZERO AND #1BBNR = *ZERO; //BEDR WK
                 If #1A1CD <> '00' AND #1A1CD <> '21' AND #1A1CD <> '22'; //NT TYPE 00
     EvalR   WUG2CD = '1';
                 Endif;
               Endif;
             Endif;
           Endif;
           If JJMMVR = *ZERO; //EIND=0
             If JJMMBV <> *ZERO; //BEGIN INGEV.
               If #1GWNB >= JJMMBV AND #1HPNB = *ZERO AND #1GYNB = *ZERO AND #1GXNB = *ZERO AND #1BB
                 If #1A1CD <> '00' AND #1A1CD <> '21' AND #1A1CD <> '22';
     EvalR   WUG2CD = '1';
                 Endif;
               Endif;
             Endif;
           Endif;
            //PD1AL=EERSTE DL PENS.NR)/PD1AL+6500 (MAN)OF +6000 VR <= REFMND ==>PENSIOE
            //          WUVE01    IFEQ '64,2,2'
            //          WUVE02    OREQ '64,2,2'
            //          WUVE03    OREQ '64,2,2'
            //          WUVE04    OREQ '64,2,2'
            //          WUVE05    OREQ '64,2,2'
            //          WUVE06    OREQ '64,2,2'
            //                    MOVE '0'       WUG5CD           SW24 PENSIOEN
            //                    CALL 'MDPENS5'
            //                    PARM           #1ATNB
            //                    PARM           PD1AL
            //                    PARM           RMPARM
            //                    PARM           WUG5CD
            //                    ENDIF
            // GEBOORTEDTM+18 JR <= REFMND EN OVERBRUGGINGSUITK. WEIGERING VNF 18 JAAR
         BOVERB = *BLANKS;
         BOVERB = #1DOCD;           // //3            BAREMA      R
     EvalR   T = BOVERB;                // //1            OVERBRUGGINGR
           If T = 'T';
             If #1A1CD <> '29';
         JRGEBT = #1AINB;           // //4 0          JR GEBOORTE R
     EvalR   MNDGBT = #1AINB;           // //2 0          MAAND GEBOORR
                //IEMAND DIE 18 WORDT IN MEI1996 HEEFT RECHT TOT30/06/1196//VNF 072010 25JR
               JR18JR = 25 + JRGEBT;
               If JR18JR < JRACHT; //REEDS 18 JR
                 If MNDGBT <= 08;
     EvalR   WUW194 = '1';
                 ELSE; //SEPTEMBER->DEC
                   JR19JR = JR18JR + 1;
                   If JR19JR = JRACHT; //1995=1995
                     If MNDACH >= 07; //VNF JULI GEEN
     EvalR   WUW194 = '1';                        // //GEBOREN VR SEPT
                     Endif; //END 07
                   Endif; //END JR18
                 Endif; //END 08
               ELSE; //END<=ACHT
                 If JR18JR = JRACHT; //1995=1995
                   If MNDACH >= 07; //VNF JULI GEEN
                     If MNDGBT <= 08; //RECHT MEER ALS
     EvalR   WUW194 = '1';                        // //GEBOREN VR SEPT
                     Endif; //END 08 AUGUS
                   Endif; //END 07
                 Endif; //END = JR18
               Endif; //END < JR18
             ENDIF;
           Endif; //END T
            //KODES TB-/IR-/TG- >= MAX.BDR==>ERROR/ MAXIMUM BDRG IN CONTR.RECORD BYA4NR
         CODINH = #1DVCD;           // //3
           BDRINH = #1GZNB;
           EXSR CHKINH;
         CODINH = #1DWCD;           // //3
           BDRINH = #1G1NB;
           EXSR CHKINH;
         CODINH = #1DXCD;           // //3
           BDRINH = #1G3NB;
           EXSR CHKINH;
         CODINH = #1DYCD;           // //3
           BDRINH = #1G5NB;
           EXSR CHKINH;
         CODINH = #1EDCD;           // //3
           BDRINH = #1HDNB;
           EXSR CHKINH;
         CODINH = #1EECD;           // //3
           BDRINH = #1HFNB;
           EXSR CHKINH;
            // Sw18=1-->err:acht.<kleinste baremadatum+WIE WKLH/BZ BETAALD
            // CASE: WRK.switch18 is 1
           If WUGZCD = '1'; //*IF
              // Send message 'Datum acht.<dat. kl.barem'
         ZAMSID = 'USR0284';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           ELSE;
              // CASE: *OTHERWISE
              // Testen bedrag wkl ingevuld, comp.berekend of gewijzigd
              // CASE: DTL.Type kode is <> 24
             If #1A1CD <> '24'; //*IF
                // Testen bedrag wkl berekenen, zelf ingevuld, manueel gewijzigd
                // CASE: WRK.Switch bedrag Wklh is =0 : 1ste maal in program
               If WUPFCD = '0'; //*IF
                  // CASE: DTL.Bedrag wkl is niet 0
                 If #1HPNB <> *ZERO; //*IF
                    // CASE:
                    //  - c8ORc9
                    //   !- c8    : DTL.Type wklh. kode is G.
                    //   !- c9    : DTL.Type wklh. kode is 29 = werkhervatting
                    //   '-
                   If #1A1CD = 'G.' OR #1A1CD = '29'; //*IF
                      // CASE: DTL.Type wklh. kode is 29 = werkhervatting
                     If #1A1CD = '29'; //*IF
                        // CASE: DTL.Bedrag wkl EQ WRK.Bedrag type29
                       If #1HPNB = WUC5NU; //*IF
         WUPFCD = '3';                        // //Switch bedrag W
                       ELSE;
                          // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                       Endif; //*FI
                     ELSE;
                        // CASE: *OTHERWISE
                        // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag activering
                       If #1HPNB = WUMT09; //*IF
         WUPFCD = '3';                        // //Switch bedrag W
                       ELSE;
                          // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                       Endif; //*FI
                     Endif; //*FI
                   ELSE;
                      // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                     WUMLNB = #1HPNB; //wrk bedrag Wklh
                   Endif; //*FI
                 Endif; //*FI
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Switch bedrag Wklh is =3 :bedr wkl comput.berek
                 If WUPFCD = '3'; //*IF
                    // dit betekent 1 maal progr.doorlopen en computer bedrag bepaald
                    // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag Wklh
                   If #1HPNB = WUMLNB; //*IF
                     #1HPNB = *ZERO; //Bedrag wkl
                   ELSE;
                      // CASE: *OTHERWISE
                      // CASE: DTL.Bedrag wkl is niet 0
                     If #1HPNB <> *ZERO; //*IF
                        // CASE:
                        //  - c8ORc9
                        //   !- c8    : DTL.Type wklh. kode is G.
                        //   !- c9    : DTL.Type wklh. kode is 29 = werkhervatting
                        //   '-
                       If #1A1CD = 'G.' OR #1A1CD = '29'; //*IF
                          // CASE: DTL.Type wklh. kode is 29 = werkhervatting
                         If #1A1CD = '29'; //*IF
                            // CASE: DTL.Bedrag wkl EQ WRK.Bedrag type29
                           If #1HPNB = WUC5NU; //*IF
         WUPFCD = '3';                        // //Switch bedrag W
                           ELSE;
                              // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                           Endif; //*FI
                         ELSE;
                            // CASE: *OTHERWISE
                            // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag activering
                           If #1HPNB = WUMT09; //*IF
         WUPFCD = '3';                        // //Switch bedrag W
                           ELSE;
                              // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                           Endif; //*FI
                         Endif; //*FI
                       ELSE;
                          // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                         WUMLNB = #1HPNB; //wrk bedrag Wklh
                       Endif; //*FI
                     ELSE;
                        // CASE: *OTHERWISE
         WUPFCD = '0';                        // //Switch bedrag W
                     Endif; //*FI
                   Endif; //*FI
                 ELSE;
                    // CASE: *OTHERWISE
                    // CASE: WRK.Switch bedrag Wklh is =1 :bedr wklh was ingevul
                   If WUPFCD = '1'; //*IF
                      // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag Wklh
                     If #1HPNB = WUMLNB; //*IF
                     ELSE;
                        // CASE: *OTHERWISE
                        // CASE: DTL.Bedrag wkl is niet 0
                       If #1HPNB <> *ZERO; //*IF
                          // CASE:
                          //  - c7ORc8ORc9
                          //   !- c7    : DTL.Type wklh. kode is F.
                          //   !- c8    : DTL.Type wklh. kode is G.
                          //   !- c9    : DTL.Type wklh. kode is 29 = werkhervatting
                          //   '-
                         If #1A1CD = 'F.' OR #1A1CD = 'G.' OR #1A1CD = '29'; //*IF
                            // CASE: DTL.Type wklh. kode is 29 = werkhervatting
                           If #1A1CD = '29'; //*IF
                              // CASE: DTL.Bedrag wkl EQ WRK.Bedrag type29
                             If #1HPNB = WUC5NU; //*IF
         WUPFCD = '3';                        // //Switch bedrag W
                             ELSE;
                                // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                             Endif; //*FI
                           Endif; //*FI
                            // CASE:
                            //  - c1ORc2
                            //   !- c1    : DTL.Type wklh. kode is F.
                            //   !- c2    : DTL.Type wklh. kode is G.
                            //   '-
                           If #1A1CD = 'F.' OR #1A1CD = 'G.'; //*IF
                              // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag activering
                             If #1HPNB = WUMT09; //*IF
         WUPFCD = '3';                        // //Switch bedrag W
                             ELSE;
                                // CASE: *OTHERWISE
         WUPFCD = '1';                        // //Switch bedrag W
                             Endif; //*FI
                           Endif; //*FI
                         ELSE;
                            // CASE: *OTHERWISE
                           WUMLNB = #1HPNB; //wrk bedrag Wklh
                         Endif; //*FI
                       ELSE;
                          // CASE: *OTHERWISE
         WUPFCD = '0';                        // //Switch bedrag W
                       Endif; //*FI
                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE:
                //  - c1ORc2
                //   !- c1    : DTL.Subberoep kode is F
                //   !- c2    : DTL.Subberoep kode is W
                //   '-
               If #1BCCD = 'F' OR #1BCCD = 'W'; //*IF
                  // Testen bedrag wkl berekenen, zelf ingevuld, manueel gewijzigd
                  // CASE: WRK.Switch bedrag Wklh is =0 : 1ste maal in program
                 If WUPFCD = '0'; //*IF
         WUPFCD = '1';                        // //Switch bedrag W
                   WUMLNB = #1HPNB; //wrk bedrag Wklh
                 ELSE;
                    // CASE: *OTHERWISE
                    // CASE: WRK.Switch bedrag Wklh is =3 :bedr wkl comput.berek
                   If WUPFCD = '3'; //*IF
                      // dit betekent 1 maal progr.doorlopen en computer bedrag bepaald
                      // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag Wklh
                     If #1HPNB = WUMLNB; //*IF
                       #1HPNB = *ZERO; //Bedrag wkl
                     ELSE;
                        // CASE: *OTHERWISE
                        // CASE: DTL.Bedrag wkl is niet 0
                       If #1HPNB <> *ZERO; //*IF
         WUPFCD = '1';                        // //Switch bedrag W
                         WUMLNB = #1HPNB; //wrk bedrag Wklh
                       ELSE;
                          // CASE: *OTHERWISE
         WUPFCD = '0';                        // //Switch bedrag W
                       Endif; //*FI
                     Endif; //*FI
                   ELSE;
                      // CASE: *OTHERWISE
                      // CASE: WRK.Switch bedrag Wklh is =1 :bedr wklh was ingevul
                     If WUPFCD = '1'; //*IF
                        // CASE: DTL.Bedrag wkl EQ WRK.wrk bedrag Wklh
                       If #1HPNB = WUMLNB; //*IF
                       ELSE;
                          // CASE: *OTHERWISE
                          // CASE: DTL.Bedrag wkl is niet 0
                         If #1HPNB <> *ZERO; //*IF
                           WUMLNB = #1HPNB; //wrk bedrag Wklh
                         ELSE;
                            // CASE: *OTHERWISE
         WUPFCD = '0';                        // //Switch bedrag W
                         Endif; //*FI
                       Endif; //*FI
                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               ELSE;
                  // CASE: *OTHERWISE
         WUPFCD = '2';                        // //Switch bedrag W
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Sw10=1 --> message : # ingebrachte dgn VD6 of HD6 > max dgn wklhm
            // CASE: WRK.switch10 is 1
           If WUF9CD = '1'; //*IF
              // CASE:
              //  - c1ORc2ORc3
              //   !- c1    : DTL.Type wklh. kode is 03 :vrijw.deeltijds 171.9
              //   !- c2    : DTL.Type wklh. kode is 10 : conv brugp deeltijds
              //   !- c3    : DTL.Type wklh. kode is 14 : brugp textiel deelti
              //   '-
             If #1A1CD = '03' OR #1A1CD = '10' OR #1A1CD = '14'; //*IF
                // Setup message data for message
               ZA0045 = #1GMNB; //HD6
               ZA0046 = #1JLNB; //Halve dagen ver
                // Send message 'Wklhdagen>maximum type03'
         ZAMSID = 'USR0495';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             ELSE;
                // CASE: *OTHERWISE
                // Setup message data for message
               ZA0047 = #1GLNB; //VD6
               ZA0048 = #1GMNB; //HD6
               ZA0049 = #1GNNB; //Volle dagen ver
               ZA0050 = #1JLNB; //Halve dagen ver
                // Send message 'Werkloosheidsdgn>maximum'
         ZAMSID = 'USR0364';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: DTL.Type wklh. kode is <> 03
             If #1A1CD <> '03'; //*IF
                // CASE: DTL.Type kode is <> 10
               If #1A1CD <> '10'; //*IF
                  // CASE: DTL.Type kode is <> 14
                 If #1A1CD <> '14'; //*IF
                    // Setup message data for message
                   ZA0051 = #1GLNB; //VD6
                   ZA0052 = #1GMNB; //HD6
                   ZA0053 = #1GNNB; //Volle dagen ver
                   ZA0054 = #1JLNB; //Halve dagen ver
                    // Send message 'Werkloosheidsdgn>maximum'
         ZAMSID = 'USR0364';
                   EXSR ZASNMS;
                   *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
                 ELSE;
                    // CASE: *OTHERWISE
                    // Setup message data for message
                   ZA0055 = #1GMNB; //HD6
                   ZA0056 = #1JLNB; //Halve dagen ver
                    // Send message 'Wklhdagen>maximum type03'
         ZAMSID = 'USR0495';
                   EXSR ZASNMS;
                   *In99 = *On;
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
               ELSE;
                  // CASE: *OTHERWISE
                  // Setup message data for message
                 ZA0057 = #1GMNB; //HD6
                 ZA0058 = #1JLNB; //Halve dagen ver
                  // Send message 'Wklhdagen>maximum type03'
         ZAMSID = 'USR0495';
                 EXSR ZASNMS;
                 *In99 = *On;
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // Setup message data for message
               ZA0059 = #1GMNB; //HD6
               ZA0060 = #1JLNB; //Halve dagen ver
                // Send message 'Wklhdagen>maximum type03'
         ZAMSID = 'USR0495';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Sw11=1 --> message :# ingebrachte dgn VD5 of HD5 > max dgn wklhma
            // CASE: WRK.switch11 is 1
           If WUGACD = '1'; //*IF
              // Setup message data for message
             ZA0061 = #1GGNB; //VD5
             ZA0062 = #1GHNB; //HD5
              // Send message 'Aantal dgn VD5/HD5 > max.'
         ZAMSID = 'USR0282';
             EXSR ZASNMS;
             *In99 = *On;
         @I1(35) = '1';                       // //*
         @I1(36) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw13=1 --> error :BV & V max. 24 ,behalve bij beroep=63=onderwijs
            // CASE: WRK.switch13 is 1
           If WUGCCD = '1'; //*IF
              // Send message 'BV of V > 24'
         ZAMSID = 'USR0281';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw15=1 --> error: # ingebrachte dgn BZ >max dgn BZ wklhmaand
            // CASE: WRK.switch15 is 1
           If WUGECD = '1'; //*IF
              // Send message 'Aantal dgn BZ > max BZ/ma'
         ZAMSID = 'USR0280';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw16=1 --> message : # ingebrachte vorstdgn > max vorstdgn wklhma
            // CASE: WRK.switch16 is 1
           If WUGXCD = '1'; //*IF
              // Send message 'Aantal vorstdgn > max Vd6'
         ZAMSID = 'USR0279';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw17=1 --> message : # ingebrachte kbf dgn > max kbf dgn wklhmaan
            // CASE: WRK.switch17 is 1
           If WUGYCD = '1'; //*IF
              // Send message 'Aantal dgn kbf sanktie>ma'
         ZAMSID = 'USR0278';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Type 00 : codes TB/TB-/TG/TG- onmogelijk
            // CASE: DTL.Type wklh. kode is 00 : niet toelaatbaar
           If #1A1CD = '00'; //*IF
              // Afh1 =TB/TB-/TG/TG-  kan niet voor de indiening belastingen
              // CASE:
              //  - c1ORc2ORc3ORc4
              //   !- c1    : DTL.Afh1 kode is = TB
              //   !- c2    : DTL.Afh1 kode is = TG
              //   !- c3    : DTL.Afh1 kode is = TB-
              //   !- c4    : DTL.Afh1 kode is = TG-
              //   '-
             If #1DVCD = 'TB' OR #1DVCD = 'TG' OR #1DVCD = 'TB-' OR #1DVCD = 'TG-'; //*IF
                // Send message 'Geen  code TB mogelijk'
         ZAMSID = 'USR4395';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
              // Afh2 =TB/TB-/TG/TG-  kan niet voor de indiening belastingen
              // CASE:
              //  - c1ORc2ORc3ORc4
              //   !- c1    : DTL.Afh2 kode is = TB
              //   !- c2    : DTL.Afh2 kode is = TG
              //   !- c3    : DTL.Afh2 kode is = TB-
              //   !- c4    : DTL.Afh2 kode is = TG-
              //   '-
             If #1DWCD = 'TB' OR #1DWCD = 'TG' OR #1DWCD = 'TB-' OR #1DWCD = 'TG-'; //*IF
                // Send message 'Geen  code TB mogelijk'
         ZAMSID = 'USR4395';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
              // Afh3 =TB/TB-/TG/TG-  kan niet voor de indiening belastingen
              // CASE:
              //  - c1ORc2ORc3ORc4
              //   !- c1    : DTL.Afh3 kode is = TB
              //   !- c2    : DTL.Afh3 kode is = TG
              //   !- c3    : DTL.Afh3 kode is = TB-
              //   !- c4    : DTL.Afh3 kode is = TG-
              //   '-
             If #1DXCD = 'TB' OR #1DXCD = 'TG' OR #1DXCD = 'TB-' OR #1DXCD = 'TG-'; //*IF
                // Send message 'Geen  code TB mogelijk'
         ZAMSID = 'USR4395';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
              // Afh4 =TB/TB-/TG/TG-  kan niet voor de indiening belastingen
              // CASE:
              //  - c1ORc2ORc3ORc4
              //   !- c1    : DTL.Afh4 kode is = TB
              //   !- c2    : DTL.Afh4 kode is = TG
              //   !- c3    : DTL.Afh4 kode is = TB-
              //   !- c4    : DTL.Afh4 kode is = TG-
              //   '-
             If #1DYCD = 'TB' OR #1DYCD = 'TG' OR #1DYCD = 'TB-' OR #1DYCD = 'TG-'; //*IF
                // Send message 'Geen  code TB mogelijk'
         ZAMSID = 'USR4395';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
              // Afh5 =TB/TB-/TG/TG-  kan niet voor de indiening belastingen
              // CASE:
              //  - c1ORc2ORc3ORc4
              //   !- c1    : DTL.Afh5 kode is = TB
              //   !- c2    : DTL.Afh5 kode is = TG
              //   !- c3    : DTL.Afh5 kode is = TB-
              //   !- c4    : DTL.Afh5 kode is = TG-
              //   '-
             If #1EDCD = 'TB' OR #1EDCD = 'TG' OR #1EDCD = 'TB-' OR #1EDCD = 'TG-'; //*IF
                // Send message 'Geen  code TB mogelijk'
         ZAMSID = 'USR4395';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
              // Afh6 =TB/TB-/TG/TG-  kan niet voor de indiening belastingen
              // CASE:
              //  - c1ORc2ORc3ORc4
              //   !- c1    : DTL.Afh6 kode is = TB
              //   !- c2    : DTL.Afh6 kode is = TG
              //   !- c3    : DTL.Afh6 kode is = TB-
              //   !- c4    : DTL.Afh6 kode is = TG-
              //   '-
             If #1EECD = 'TB' OR #1EECD = 'TG' OR #1EECD = 'TB-' OR #1EECD = 'TG-'; //*IF
                // Send message 'Geen  code TB mogelijk'
         ZAMSID = 'USR4395';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // ibo sanctie
            // CASE: WRK.Wrk 1pos voor jongerenact is niet J
           If WULCCF <> 'J'; //*IF
              // CASE: WRK.Wrk ibo sanctie aan is 0
             If WUXBCG = '0'; //*IF
                // Sw21=1 --> error: datum einde sanktie >= wklhmaand
                // CASE: WRK.switch21 is 1
               If WUG2CD = '1'; //*IF
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Sw24=1 -->error: pensioenleeftijd bereikt 60jr(Vr)/65jr(Man)
            // CASE: WRK.switch24 is 1
           If WUG5CD = '1'; //*IF
              // CASE:
              //  - c1ORc2ORc3
              //   !- c1    : DTL.Type wklh. kode is 24 : wisselkoerstoeslag
              //   !- c2    : DTL.Type wklh. kode is 25
              //   !- c3    : DTL.Barema RVAkode is ..ICLD.
              //   '-
             If #1A1CD = '24' OR #1A1CD = '25' OR #1DOCD = @CN(003); //*IF
             ELSE;
                // CASE: *OTHERWISE
                // pensioen buitenlanders:hier actief maken en onderste berichten op
                // Fetch RM tem - Buitenlanders niet-gepens  *
               EXSR SFRVGN;
                // CASE: WRK.Wrk RM TEM nbr is 190001
               If WUI7NG = 190001; //*IF
                  // Send message 'Pensioenleeftijd bereikt'
         ZAMSID = 'USR0294';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: DTL.Datum achterstal GT WRK.Wrk RM TEM nbr
                 If #1GWNB > WUI7NG; //*IF
                    // Send message 'Pensioenleeftijd bereikt'
         ZAMSID = 'USR0294';
                   EXSR ZASNMS;
                   *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Sw26=1 --> error: TB- en IR- maximum is 3657Fr
            // CASE: WRK.switch26 is 1
           If WUHXCD = '1'; //*IF
              // Send message 'Afh=TB-/IR- en bedr >2999'
         ZAMSID = 'USR0296';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw80=1 : ingebrachte dagen > 27/23 bij achterstal --> error messa
            // CASE: WRK.Switch80 is = 1
           If WUOWCD = '1'; //*IF
              // CASE: DTL.Beroep kode is Nt 09 : geen dok A'pen
             If #1BACD <> '09'; //*IF
                // CASE:
                //  - c1ORc2ORc3
                //   !- c1    : DTL.Type wklh. kode is 03 :vrijw.deeltijds 171.9
                //   !- c2    : DTL.Type wklh. kode is 10 : conv brugp deeltijds
                //   !- c3    : DTL.Type wklh. kode is 14 : brugp textiel deelti
                //   '-
               If #1A1CD = '03' OR #1A1CD = '10' OR #1A1CD = '14'; //*IF
                  // Setup message data for message
                 ZA0063 = #1GMNB; //HD6
                 ZA0064 = #1JLNB; //Halve dagen ver
                  // Send message 'Achterstal halve dgn < 54'
         ZAMSID = 'USR0498';
                 EXSR ZASNMS;
                 *In99 = *On;
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
               ELSE;
                  // CASE: *OTHERWISE
                  // Setup message data for message
                 ZA0065 = #1GLNB; //VD6
                 ZA0066 = #1GMNB; //HD6
                 ZA0067 = #1GNNB; //Volle dagen ver
                 ZA0068 = #1JLNB; //Halve dagen ver
                  // Send message 'Achterstal dgn < 27'
         ZAMSID = 'USR0448';
                 EXSR ZASNMS;
                 *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // Setup message data for message
               ZA0069 = #1GGNB; //VD5
               ZA0070 = #1GHNB; //HD5
                // Send message 'Achterstal dagen < 23'
         ZAMSID = 'USR0499';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(35) = '1';                       // //*
         @I1(36) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Sw194=1 : barema ..T.... en ouder of 18 jaar : error
            // CASE: WRK.Switch194 is 1
           If WUW194 = '1'; //*IF
              // Send message 'Overbr.uitk. en >= 18jaar'
         ZAMSID = 'USR1632';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Werkhervatting metaal
            // CASE: DTL.Wkl bet CDE vrij3 is ingevuld
           If #1MQCE <> *BLANK; //*IF
              // CASE:
              //  - c1ORc2ORc3ORc4ORc5ORc6ORc7
              //   !- c1    : DTL.Wkl bet CDE vrij3 is 001
              //   !- c2    : DTL.Wkl bet CDE vrij3 is 002
              //   !- c3    : DTL.Wkl bet CDE vrij3 is 003
              //   !- c4    : DTL.Wkl bet CDE vrij3 is 004
              //   !- c5    : DTL.Wkl bet CDE vrij3 is 005
              //   !- c6    : DTL.Wkl bet CDE vrij3 is 006
              //   !- c7    : DTL.Wkl bet CDE vrij3 is 099
              //   '-
             If #1MQCE = '001' OR #1MQCE = '002' OR #1MQCE = '003' OR #1MQCE = '004' OR #1MQCE = '00
             ELSE;
                // CASE: *OTHERWISE
                // Setup message data for message
         ZA0071 = #1MQCE;                        // //Wkl bet CDE vri
                // Send message 'Geen geldige code werkher'
         ZAMSID = 'USR4981';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Contr 0&5 als dec./BC opv - Wkl bet  *
            // CONTROLE DGN KBF : ENKEL 0 & 5 ALS DECIMALEN ZIJN TOEGELATEN
     EvalR   WUHYCD = '0';                        // //SWITCH27
           KBFD2 = 0;
     EvalR   KBFD2 = #1GXNB;            // //1 0
           EXSR NULVYF;
     EvalR   KBFD2 = #1GRNB;            // //1 0          VW TYPE05/07
           EXSR NULVYF;
     EvalR   KBFD2 = #1GUNB;            // //1 0          C3.2 T05/07
           EXSR NULVYF;
     EvalR   KBFD2 = #1GSNB;            // //1 0          MIN TYP05/07
           EXSR NULVYF;
     EvalR   KBFD2 = #1GTNB;            // //1 0          Z+A TYP05/07
           EXSR NULVYF;
     EvalR   KBFD2 = #1BBNR;            // //1 0          NT-VERG.DAGEN
           EXSR NULVYF;
            //BC AANTAL INGEVULD & CATEG.KODE OF MM/JJJJ NIET==>DEZE VAN F7 ->BET.SCHER
           If #1LPNB <> 0; //BC AANT NT 0
             If #1CLCD = *BLANK OR #1E9NB = 0; //KAT KODE BLA
     EvalR   #1CLCD = #1M5CD;                        // //KATEG KODE
     EvalR   #1E9NB = #1ANDM;                            // //MM/JJJJ
             Endif;
           Endif;
            // Sw27=3 -->Dagen kbf/sanktie/type05/ kan enkel  0 & 5 als decimale
            // CASE: WRK.switch27 is 3
           If WUHYCD = '3'; //*IF
              // Send message '0 en 5 na de komma vr dgn'
         ZAMSID = 'USR3996';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // BV/V optellen en controleren met dagen uit verlofscherm
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
             WUF8NB = *ZERO; //Som BV/V
             WUJPNB = *ZERO; //rest deling
             WUF8NB = WUF8NB + #1JLNB; //Som BV/V
             WUF8NB = WUF8NB / 2; //Som BV/V
     C                   MVR                     WUJPNB                         rest deling
             WUF8NB = WUF8NB + #1GNNB; //Som BV/V
              // Som BV/V = ingebrachte verlofdgn > rest krediet verlof  --> error
              // CASE: WRK.Som BV/V GT DTL.Wkl Kr.V
             If WUF8NB > #DMUNB; //*IF
             Endif; //*FI
              // Som BV/V = ingebrachte verlofdagen > rest krediet V --> error mes
              // CASE: WRK.Som BV/V EQ DTL.Wkl Kr.V
             If WUF8NB = #DMUNB; //*IF
                // CASE: WRK.rest deling is = 1
               If WUJPNB = 1; //*IF
               Endif; //*FI
             Endif; //*FI
             WUF8NB = *ZERO; //Som BV/V
             WUJPNB = *ZERO; //rest deling
             WUF8NB = WUF8NB + #1JONB; //Som BV/V
             WUF8NB = WUF8NB / 2; //Som BV/V
     C                   MVR                     WUJPNB                         rest deling
             WUF8NB = WUF8NB + #1G7NB; //Som BV/V
              // Som BV/V = ingebrachte BVdagen > rest krediet BV  --> error messa
              // CASE: WRK.Som BV/V GT DTL.Wkl Kr.BV
             If WUF8NB > #DMTNB; //*IF
             Endif; //*FI
              // Som BV/V = ingebrachte BVdagen > rest krediet BV --> error messag
              // CASE: WRK.Som BV/V EQ DTL.Wkl Kr.BV
             If WUF8NB = #DMTNB; //*IF
                // CASE: WRK.rest deling is = 1
               If WUJPNB = 1; //*IF
               Endif; //*FI
             Endif; //*FI
             WUF8NB = *ZERO; //Som BV/V
             WUJPNB = *ZERO; //rest deling
           Endif; //*FI
            // Dok nt A'pen/BZ=K/BZ dgn of bedr BZ=0 --> error message
            // CASE: DTL.BZ kode is = K : Dok maar niet A'pen
           If #1A4CD = 'K'; //*IF
              // CASE: DTL.Geen dagen/bedrag BZ is Y
             If #1BCST = 'Y'; //*IF
                // CASE: DTL.Bedrag BZ is 0
               If #1GYNB = *ZERO; //*IF
                  // Setup message data for message
                 ZA0072 = #1GPNB; //Volle dagen BZ
                 ZA0073 = #1JNNB; //Halve dagen BZ
                 ZA0074 = #1GYNB; //Bedrag BZ
                  // Send message 'Dagen & bedrag BZ moeten'
         ZAMSID = 'USR0452';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE:
                  //  - c1ANDc2
                  //   !- c1    : DTL.Volle dagen BZ is 0
                  //   !- c2    : DTL.Halve dagen BZ is 0
                  //   '-
         Y0CX01 = '0';           // //1
                 If #1GPNB = *ZERO; //*IF
                   If #1JNNB = *ZERO; //*IF
         Y0CX01 = '1';
                   Endif; //*FI
                 Endif; //*FI
                 If Y0CX01 = '1'; //*IF
                    // Setup message data for message
                   ZA0075 = #1GPNB; //Volle dagen BZ
                   ZA0076 = #1JNNB; //Halve dagen BZ
                   ZA0077 = #1GYNB; //Bedrag BZ
                    // Send message 'Dagen & bedrag BZ moeten'
         ZAMSID = 'USR0452';
                   EXSR ZASNMS;
                   *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Kode BZ=VZ/DZ/FZ/PZ/15 --> zelf bedrag BZ invullen
            // CASE:
            //  - c1ORc2ORc3
            //   !- c1    : DTL.Kode BZ is VZ
            //   !- c2    : DTL.Kode BZ is FZ
            //   !- c3    : DTL.BZ kode is 15
            //   '-
           If #1MOCD = 'VZ' OR #1MOCD = 'FZ' OR #1A4CD = '15'; //*IF
              // CASE:
              //  - c1ANDc2
              //   !- c1    : DTL.Bedrag BZ is 0
              //   !- c2    : DTL.Geen dagen/bedrag BZ is Y
              //   '-
         Y0CX01 = '0';           // //1
             If #1GYNB = *ZERO; //*IF
               If #1BCST = 'Y'; //*IF
         Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
                // Setup message data for message
               ZA0078 = #1GYNB; //Bedrag BZ
         ZA0079 = #1BCST;                        // //Geen dagen/bedr
                // Send message 'Zelf bedrag BZ invul (VZ)'
         ZAMSID = 'USR0410';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           ELSE;
              // CASE: *OTHERWISE
              // CASE:
              //  - c1ORc2
              //   !- c1    : DTL.Kode BZ is DZ
              //   !- c2    : DTL.Kode BZ is PZ
              //   '-
             If #1MOCD = 'DZ' OR #1MOCD = 'PZ'; //*IF
                // CASE:
                //  - c1ANDc2
                //   !- c1    : DTL.Bedrag BZ is 0
                //   !- c2    : DTL.Geen dagen/bedrag BZ is Y
                //   '-
         Y0CX01 = '0';           // //1
               If #1GYNB = *ZERO; //*IF
                 If #1BCST = 'Y'; //*IF
         Y0CX01 = '1';
                 Endif; //*FI
               Endif; //*FI
               If Y0CX01 = '1'; //*IF
                  // Setup message data for message
                 ZA0080 = #1GYNB; //Bedrag BZ
         ZA0081 = #1BCST;                        // //Geen dagen/bedr
                  // Send message 'Zelf bedrag BZ invul (VZ)'
         ZAMSID = 'USR0410';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Geen X2/BC/TA/BR/TF in afh1 : error message
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6ORc7ORc8ORc9ORc10ORc11ORc12ORc13ORc14OR
            //  - c15ORc16ORc17ORc18ORc19ORc20ORc21ORc22ORc23ORc24
            //   !- c1    : DTL.Afh1 kode is = BC
            //   !- c2    : DTL.Afh1 kode is = X2
            //   !- c3    : DTL.Afh1 kode is = BR
            //   !- c4    : DTL.Afh1 kode is = TA
            //   !- c5    : DTL.Afh2 kode is = BC
            //   !- c6    : DTL.Afh2 kode is = X2
            //   !- c7    : DTL.Afh2 kode is = TA
            //   !- c8    : DTL.Afh2 kode is = BR
            //   !- c9    : DTL.Afh3 kode is = BC
            //   !- c10   : DTL.Afh3 kode is = X2
            //   !- c11   : DTL.Afh3 kode is = TA
            //   !- c12   : DTL.Afh3 kode is = BR
            //   !- c13   : DTL.Afh4 kode is = BC
            //   !- c14   : DTL.Afh4 kode is = X2
            //   !- c15   : DTL.Afh4 kode is = TA
            //   !- c16   : DTL.Afh4 kode is = BR
            //   !- c17   : DTL.Afh5 kode is = BC
            //   !- c18   : DTL.Afh5 kode is = X2
            //   !- c19   : DTL.Afh5 kode is = TA
            //   !- c20   : DTL.Afh5 kode is = BR
            //   !- c21   : DTL.Afh6 kode is = BC
            //   !- c22   : DTL.Afh6 kode is = X2
            //   !- c23   : DTL.Afh6 kode is = TA
            //   !- c24   : DTL.Afh6 kode is = BR
            //   '-
           If #1DVCD = 'BC' OR #1DVCD = 'X2' OR #1DVCD = 'BR' OR #1DVCD = 'TA' OR #1DWCD = 'BC' OR #
              // Send message 'Geen X2/BC in afh1-->afh6'
         ZAMSID = 'USR0407';
             EXSR ZASNMS;
             *In99 = *On;

              // Send message 'Geen TA/BR in afh1-->afh6'
         ZAMSID = 'USR0408';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Achterstal voor 06/92, bedrag wklh zelf invullen
            // CASE: DTL.Datum achterstal is < 199206
           If #1GWNB < 199206; //*IF
              // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
             If WUPFCD <> '1'; //*IF
                // Setup message data for message
               ZA0082 = #1HPNB; //Bedrag wkl
                // Send message 'Zelf bedrag wklh opgeven!'
         ZAMSID = 'USR0781';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // wkl-785:niet controleren bij subberoep J,K,P,R,S,T,X==>ik zeg:bij
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Subberoep kode is blank
            //   !- c2    : DTL.Subberoep kode is I
            //   '-
           If #1BCCD = *BLANK OR #1BCCD = 'I'; //*IF
              // CASE: DTL.Datum achterstal is >=201211
             If #1GWNB >= 201211; //*IF
                // Overgang barema->zelf ber - Wkl betaling  *
               RMPAR = #1GWNB;
               DATIN1 = #1AEDT;
               DATIN2 = #1ADDT;
               DATIN3 = #1AHDT;
               DATIN4 = #1AKDT;
         WUR3CJ = 'N';
               //FOUTBERICHT
               MDCHK02(DATIN1:DATIN2:DATIN3:DATIN4:RMPAR:WUR3CJ);
                 If WUR3CJ = 'N';
                 //FOUTBERICHT
               MDCHK03(#1AACD:#1AFNB:#1DOCD:RMPAR:WUR3CJ);
                 ENDIF;
               If #1BDST = 'N';
         WUR3CJ = 'N';
               ENDIF;
                // Datum 1 2 3 wijzigt in loop der maand ==> zelf bdrg wklh invullen
                // CASE: WRK.Switch overgang barema is Y
               If WUR3CJ = 'Y'; //*IF
                  // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                 If WUPFCD <> '1'; //*IF
         WUERCK = '1';                        // //Wrk F1 na F24
                    // CASE: DTL.Geen bedrag wklh is Y
                   If #1BDST = 'Y'; //*IF
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // Dat.forfait : zelf bedrag invullen bij overgang RM
                // CASE: WRK.sw datum forfait is 1
               If WUXGCD = '1'; //*IF
                  // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                 If WUPFCD <> '1'; //*IF
                    // Send message 'Overgang --> forfait'
         ZAMSID = 'USR2097';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
                // Dat.1ste Per.B : zelf bedrag invullen bij overgang RM
                // CASE: WRK.sw datum 0-kode is 1
               If WUXHCD = '1'; //*IF
                  // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                 If WUPFCD <> '1'; //*IF
                    // Send message 'Overgang per1A->per1B'
         ZAMSID = 'USR5262';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
                // Dat.2de Per.C : zelf bedrag invullen bij overgang RM
                // CASE: WRK.sw datum 40% is 1
               If WUXFCD = '1'; //*IF
                 YRSW00 = 2;
                 ZQ = 5;
                 If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00007 OR ZQ > 00007;
         W0RTN = 'Y2U0510';
                 ELSE;
                   WUF1CH = %Subst(#1DOCD:ZQ:YRSW00); //Wrk pos56 barem
     C   90              MOVEL     'Y2U0510'     W0RTN
                 Endif;
                  // CASE:
                  //  - c1ORc2
                  //   !- c1    : WRK.Wrk pos56 barema is 1C
                  //   !- c2    : WRK.Wrk pos56 barema is 1B
                  //   '-
                 If WUF1CH = '1C' OR WUF1CH = '1B'; //*IF
                    // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                   If WUPFCD <> '1'; //*IF
                      // Send message 'Overgang 2de periode 1C'
         ZAMSID = 'USR5267';
                     EXSR ZASNMS;
                     *In99 = *On;

                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
                // overgang periode 1A naar 1B
                // CASE: WRK.Wrk pos6 barema is geen B
               If WUF4CH <> 'B'; //*IF
                  // CASE: WRK.Wrk pos5 barema is 1
                 If WUF3CH = '1'; //*IF
                   WUQJNC = #1AEDT / 100; //Maand om te tes
                    // CASE: WRK.Maand om te testen EQ DTL.Datum achterstal
                   If WUQJNC = #1GWNB; //*IF
                     WUQKNC = WUQJNC * 100; //Wrk datum 8 lan
                     WUQKNC = WUQKNC + 01; //Wrk datum 8 lan
                      // CASE: WRK.Wrk datum 8 lang testen EQ DTL.Datum OP-code
                     If WUQKNC = #1AEDT; //*IF
                        // Send message 'Overgang per1A->per1B'
         ZAMSID = 'USR5262';
                       EXSR ZASNMS;
                       *In99 = *On;

                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         WUACCK = 'N';                        // //C98 bestaat
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = 'C98';

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
           //Test Doc BD bes
           //KEY: Documenten
           //Wrk taal
           //WRK Barema
           //WRK Type wkl. k
           //WRK document BD

           XPG(AARC:WQ0271:WQ0272:WQ0273:WQ0274);
                   If %Error();
              // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
              // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
            // Controle bet.dos. C98 vri - Wkl betaling  *
         WULDCJ = '0';
           If WUACCK = 'Y';
         C98C98 = '06';           // //2
           ELSE;
         C98C98 = *blanks;
           ENDIF;
            // CASE: DTL.GWB nr is 63
           MDVRIJS6(#1AACD:#1AFNB:#1A1CD:C98C98:RMPARM:WULDCJ);
             If #1A2CD = '63';
              // CASE: DTL.Datum achterstal is >= 201901
             If #1GWNB >= 201901; //*IF
                // CASE: DTL.Post nr is 4700-4799
               If #1ADCD >= '4700' AND #1ADCD <= '4799'; //*IF
         WULDCJ = '0';                        // //Switch C98
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // C98
            // CASE: WRK.Switch C98 is 1
           If WULDCJ = '1'; //*IF
              // CASE: DTL.Type wklh. kode is 53
             If #1A1CD = '53'; //*IF
             ELSE;
                // CASE: *OTHERWISE
                // CASE:
                //  - c1ORc2
                //   !- c1    : DTL.Subberoep kode is blank
                //   !- c2    : DTL.Subberoep kode is I
                //   '-
               If #1BCCD = *BLANK OR #1BCCD = 'I'; //*IF
                  // Send message 'BD moet code 11 ijn = C98'
         ZAMSID = 'USR6197';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // C98 deel2
            // CASE: WRK.Wrk switch114&6B is Y
           If WUFECL = 'Y'; //*IF
             WUVPNE = #1GWNB; //MM van RM
              // CASE: WRK.C98 bestaat is N
             If WUACCK = 'N'; //*IF
                // CASE:
                //  - c1ORc2
                //   !- c1    : WRK.MM van RM is 07
                //   !- c2    : WRK.MM van RM is 08
                //   '-
               If WUVPNE = 07 OR WUVPNE = 08; //*IF
               ELSE;
                  // CASE: *OTHERWISE
                  // Send message 'BD moet code 11 ijn = C98'
         ZAMSID = 'USR6197';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // IS C3A verplicht bij kunstwerker? Zo ja, staat deze in BD?
          // CASE: WRK.Wrk C3A verplicht is Y
         If WUM1CN = 'Y'; //*IF
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = 'C3A';

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
           //Test Doc BD bes
           //KEY: Documenten
           //Wrk taal
           //WRK Barema
           //WRK Type wkl. k
           //WRK document BD

           XPG(AARC:WQ0275:WQ0276:WQ0277:WQ0278);
                   If %Error();
              // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
              // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
            // CASE: WRK.C3A bestaat is Y
           If WUM4CN = 'Y'; //*IF
           ELSE;
              // CASE: *OTHERWISE
              // Send message 'kunstwerker:C3A verplicht'
         ZAMSID = 'USR7549';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
         Endif; //*FI
          // Cmd01 kalender automatisch of F1
          // CASE: WRK.Switch toelating Y/N is Y
         If WUYOCI = 'Y'; //*IF
            // Type kode = 01,09,... : oproepen kalender
            // CASE: WRK.Switch type betaalkalende is Y
           If WURZCJ = 'Y'; //*IF
             YRSW00 = 2;
             ZQ = 4;
             If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00007 OR ZQ > 00007;
         W0RTN = 'Y2U0510';
             ELSE;
               WUWRK2 = %Subst(#1DOCD:ZQ:YRSW00); //Wrk veld 2 pos
     C   90              MOVEL     'Y2U0510'     W0RTN
             Endif;
              // CASE:
              //  - c1ORc2ORc3
              //   !- c1    : WRK.Wrk veld 2 pos is A6
              //   !- c2    : WRK.Wrk veld 2 pos is A7
              //   !- c3    : WRK.Wrk veld 2 pos is A8
              //   '-
             If WUWRK2 = 'A6' OR WUWRK2 = 'A7' OR WUWRK2 = 'A8'; //*IF
             ELSE;
                // CASE: *OTHERWISE
                // CASE:
                //  - c1ORc2ORc3ORc4ORc5ORc6ORc7
                //   !- c1    : DTL.VD6 is niet 0
                //   !- c2    : DTL.HD6 is niet 0
                //   !- c3    : DTL.Volle dagen BV is niet 0
                //   !- c4    : DTL.Halve dagen BV is niet 0
                //   !- c5    : DTL.Volle dagen verlof is niet 0
                //   !- c6    : DTL.Halve dagen verlof is niet 0
                //   !- c7    : DTL.Dagen kbf sanktie is ingevuld
                //   '-
               If #1GLNB <> *ZERO OR #1GMNB <> *ZERO OR #1G7NB <> *ZERO OR #1JONB <> *ZERO OR #1GNNB
                  // CASE: WRK.Wrk teller cf01 is 1
                 If WUK7ND = 1; //*IF
         WUW8CI = 'Y';                        // //Wrk F1 oproepen
         WUXICI = 'Y';                        // //Wrk F1 record v
                   WUK7ND = WUK7ND + 1; //Wrk teller cf01
                 ELSE;
                    // CASE: *OTHERWISE
         WUW8CI = 'N';                        // //Wrk F1 oproepen
                 Endif; //*FI
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: DTL.Bedrag wkl is niet 0
                 If #1HPNB <> *ZERO; //*IF
         WUW8CI = 'N';                        // //Wrk F1 oproepen
         WUXICI = 'Y';                        // //Wrk F1 record v
                 ELSE;
                    // CASE: *OTHERWISE
         WUW8CI = 'Y';                        // //Wrk F1 oproepen
                   WUK7ND = WUK7ND + 1; //Wrk teller cf01
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // Contr alle dgn&bedr=0:tst - Wkl betaling  *
     EvalR   WUGDCD = '0';                        // //SWITCH14 ALLES0
         HC7H = '0';             // //1            HULPSWITCH  ES0
         If #1GLNB = *ZERO AND #1GMNB = *ZERO AND #1GYNB = *ZERO AND #1G7NB = *ZERO AND #1JONB = *ZE
           If #1HPNB = *ZERO; //BEDR WKLH
     EvalR   HC7H = '1';                          // //SWITCH14 AAN
             If #1GXNB = *ZERO AND #1BBNR = *ZERO; //DAGEN KBF SANKT
     EvalR   WUGDCD = '1';                        // //SWITCH14 AAN
               If #1DVCD <> *BLANK OR #1DWCD <> *BLANK OR #1DXCD <> *BLANK OR #1DYCD <> *BLANK OR #1
                  //          #1LPNB    ORNE *ZERO                      BCAANTAL
                 EXSR TBTV;
                 If WUGDCD <> '4';
                   If #1A1CD <> '02' AND #1A1CD <> '04' AND #1A1CD <> '06' AND #1A1CD <> '91' AND #1
         #1BCST = 'N';                        // //BEDR BZ
         #1BDST = 'N';                        // //BEDR WKL
         #1ISCD = 'N';                        // //GN UREN GW
                   ENDIF; //END 02/04/06
                 ENDIF; //SW<>4
               Endif; //END AFH ING
                //                                                    DGN KBF ING
             ELSE; //NT 0
               If #1DVCD <> *BLANK OR #1DWCD <> *BLANK OR #1DXCD <> *BLANK OR #1DYCD <> *BLANK OR #1
                 If HC7H = '1';
     EvalR   WUGDCD = '2';                        // //SWITCH14 AAN
                 Endif; //END HC7H
               Endif; //END AFH.EN
               If HC7H = '1';
                 If WUGDCD <> '2';
                   If WUGDCD <> '4';
     EvalR   WUGDCD = '3';                        // //ENKEL KBF DG
                   Endif; //END 4
                 Endif; //END 2
               Endif; //END HC7H
             Endif; //DGN KBF
           Endif; //BDR WKLG
         Endif; //REST DGN
          //---------------------------------------------------------------
          // blanco opdrachtkaart afhoudingen zonder bedragen,....
          // CASE:
          //  - c1ORc2
          //   !- c1    : DTL.*CMD key is CF01
          //   !- c2    : WRK.Wrk F1 oproepen is Y
          //   '-
         If *IN01 = '1' OR WUW8CI = 'Y'; //*IF
         ELSE;
            // CASE: *OTHERWISE
            // Switch14=2 --> error : enkel W3 kaart, geen W1
            // CASE: WRK.switch14 is 2
           If WUGDCD = '2'; //*IF
              // Send message 'Enkel afhoudingen,gn beta'
         ZAMSID = 'USR0741';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Switch14=4 --> error : enkel W3 kaart, geen W1 met beslagen,onder
            // CASE: WRK.switch14 is 4
           If WUGDCD = '4'; //*IF
              // Send message 'Foutieve afhoudingen'
         ZAMSID = 'USR1832';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
         Endif; //*FI
         WUCC18 = *BLANK;                        // //WRK controle 18
          // CASE: WRK.Wrk hidden zetten calcul is 0
         If WUCA77 = '0'; //*IF
            // wrk BV/V ingevuld opvullen met Y of N
            // CASE:
            //  - c1ORc2ORc3ORc4
            //   !- c1    : DTL.Volle dagen BV is niet 0
            //   !- c2    : DTL.Halve dagen BV is niet 0
            //   !- c3    : DTL.Volle dagen verlof is niet 0
            //   !- c4    : DTL.Halve dagen verlof is niet 0
            //   '-
           If #1G7NB <> *ZERO OR #1JONB <> *ZERO OR #1GNNB <> *ZERO OR #1JLNB <> *ZERO; //*IF
         WUJYCH = 'Y';                        // //Wrk BV/V ingevu
           ELSE;
              // CASE: *OTHERWISE
         WUJYCH = 'N';                        // //Wrk BV/V ingevu
           Endif; //*FI
         Endif; //*FI
          // !!! Omzetting uren->dagen wkl->dagen BZ + berekenen wklh/BZ/taks/
          // CASE: WRK.Wrk hidden zetten calcul is 0
         If WUCA77 = '0'; //*IF
            // Type = 01 : switch op Y   (maar gn dok of rivierarbeider)
            // CASE: DTL.Type kode is 01 : volledig werkloos
           If #1A1CD = '01'; //*IF
              // CASE: DTL.Beroep kode is Nt 09 : geen dok A'pen
             If #1BACD <> '09'; //*IF
         WULOCD = 'Y';                        // //Sw type01/03/08
             Endif; //*FI
           Endif; //*FI
            // Type = 03/08/11/12/16/17/23/33/29 : switch op Y
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6ORc7ORc8ORc9ORc10ORc11ORc12ORc13
            //   !- c1    : DTL.Type kode is 03 :vrijw.deeltijds 171.9
            //   !- c2    : DTL.Type wklh. kode is 07
            //   !- c3    : DTL.Type wklh. kode is 08 : E303 invoerrecht
            //   !- c4    : DTL.Type wklh. kode is 11 : beroepsopleiding
            //   !- c5    : DTL.Type wklh. kode is 12 :171bis beschutte werk
            //   !- c6    : DTL.Type wklh. kode is 16 : voltijds opleiding
            //   !- c7    : DTL.Type wklh. kode is 17 : deeltijds opleiding
            //   !- c8    : DTL.Type wklh. kode is 33 : studenten + wklh
            //   !- c9    : DTL.Type wklh. kode is 23
            //   !- c10   : DTL.Type wklh. kode is 29 = werkhervatting
            //   !- c11   : DTL.Type wklh. kode is 27 = opvanguitkering
            //   !- c12   : DTL.Type wklh. kode is 31 : deelt.opl/stage
            //   !- c13   : DTL.Type wklh. kode is 40 : vestigingsuitkering
            //   '-
           If #1A1CD = '03' OR #1A1CD = '07' OR #1A1CD = '08' OR #1A1CD = '11' OR #1A1CD = '12' OR #
         WULOCD = 'Y';                        // //Sw type01/03/08
           Endif; //*FI
            // Type = 05 : switch op Y
            // CASE: DTL.Type wklh. kode is 05
           If #1A1CD = '05'; //*IF
         WUCA11 = 'Y';                        // //Sw type 05
           Endif; //*FI
            // Type = 09/10 : switch op Y
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Type wklh. kode is 09 : conv brugp voltijds
            //   !- c2    : DTL.Type wklh. kode is 10 : conv brugp deeltijds
            //   '-
           If #1A1CD = '09' OR #1A1CD = '10'; //*IF
         WULQCD = 'Y';                        // //Sw type 09/10
           Endif; //*FI
            // Type=34-->39 en 44-->49 en 54/55: switch op Y(zelfde als 01,...)
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6ORc7ORc8ORc9ORc10ORc11ORc12ORc13ORc14
            //   !- c1    : DTL.Type wklh. kode is 34
            //   !- c2    : DTL.Type wklh. kode is 35
            //   !- c3    : DTL.Type wklh. kode is 36
            //   !- c4    : DTL.Type wklh. kode is 37
            //   !- c5    : DTL.Type wklh. kode is 38
            //   !- c6    : DTL.Type wklh. kode is 39
            //   !- c7    : DTL.Type wklh. kode is 44
            //   !- c8    : DTL.Type wklh. kode is 45
            //   !- c9    : DTL.Type wklh. kode is 46
            //   !- c10   : DTL.Type wklh. kode is 47
            //   !- c11   : DTL.Type wklh. kode is 48
            //   !- c12   : DTL.Type wklh. kode is 49
            //   !- c13   : DTL.Type wklh. kode is 54
            //   !- c14   : DTL.Type wklh. kode is 55
            //   '-
           If #1A1CD = '34' OR #1A1CD = '35' OR #1A1CD = '36' OR #1A1CD = '37' OR #1A1CD = '38' OR #
         WULOCD = 'Y';                        // //Sw type01/03/08
           Endif; //*FI
         WUZDCJ = 'N';                        // //C105 bestaat al
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = 'C105';

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
           //Test Doc BD bes
           //KEY: Documenten
           //Wrk taal
           //WRK Barema
           //WRK Type wkl. k
           //WRK document BD

           XPG(AARC:WQ0279:WQ0280:WQ0281:WQ0282);
                   If %Error();
              // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
              // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
         WUAPCK = 'N';                        // //C110A bestaat a
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = 'C110A';

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
           //Test Doc BD bes
           //KEY: Documenten
           //Wrk taal
           //WRK Barema
           //WRK Type wkl. k
           //WRK document BD

           XPG(AARC:WQ0283:WQ0284:WQ0285:WQ0286);
                   If %Error();
              // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
              // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
            // CASE: WRK.C110A bestaat al is Y
           If WUAPCK = 'Y'; //*IF
              // beslag terug verhogen!! - Wkl betaling  *
             If BESL99 <> '0';
               If BESL99 = '1';
                 #1GZNB = 999999;
               ENDIF;
               If BESL99 = '2';
                 #1G1NB = 999999;
               ENDIF;
               If BESL99 = '3';
                 #1G3NB = 999999;
               ENDIF;
               If BESL99 = '4';
                 #1G5NB = 999999;
               ENDIF;
               If BESL99 = '5';
                 #1HDNB = 999999;
               ENDIF;
               If BESL99 = '6';
                 #1HFNB = 999999;
               ENDIF;
             ENDIF;
           Endif; //*FI
         WUHUCN = 'N';                        // //Doc 250.1 besta
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Type wklh. kode is 54
            //   !- c2    : DTL.Type wklh. kode is 55
            //   '-
           If #1A1CD = '54' OR #1A1CD = '55'; //*IF
              // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
             CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
             AAQLDM = #1GWNB; //Doc BD meer RM
             AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = @CN(036);

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
             //Test Doc BD bes
             //KEY: Documenten
             //Wrk taal
             //WRK Barema
             //WRK Type wkl. k
             //WRK document BD

             XPG(AARC:WQ0287:WQ0288:WQ0289:WQ0290);
                     If %Error();
                // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
                // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
               *In99 = *On;
             Endif;
              // CASE: WRK.Doc 250.1 bestaat al is Y
             If WUHUCN = 'Y'; //*IF
             ELSE;
                // CASE: *OTHERWISE
                // Send message 'Document 250.1 toevoegen'
         ZAMSID = 'USR7441';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // CASE: DTL.Datum achterstal is >=201211
           If #1GWNB >= 201211; //*IF
              // Ophalen dagbdrg barema de - Wkl betaling  *
     EvalR   WUAGCD = '0';                        // //SW102
     EvalR   WUF0CD = '0';                        // //SW109
              //                    MOVE '0'       WUF1CD           SW110
     EvalR   WUF2CD = '0';                        // //SW111
         WUW241 = '0';
             RMPAR = #1GWNB;
             LEEFTX = 10;
     EvalR   PD1PD1 = #1AINB;           // //6 0

         LFTDL9 = #1AKNB;           // //9
     EvalR   LFTDL9 = #1FGNB;
         LFTD11 = LFTD11;          // //11
     EvalR   LFTD11 = #1FHNB;
         GEVD11 = 'N';           // //1
             MDGEB01(LFTD11:GEVD11:GEBDAT);
               If GEVD11 = 'Y';
               PD1PD1 = GEBDAT / 100;
             ENDIF;
              //**
             MDLEEF3A(PD1PD1:RMPAR:LEEFTX);
               If #1BCCD <> 'P';
         DOCD7L = #1DOCD;           // //7
               If #1A1CD = '18' AND WUCC18 = '18';
                 If P45 = 'A0';
         DOCD7L = '...E...';
                 ENDIF;
                 If P45 = 'B0';
         DOCD7L = '..GB...';
                 ENDIF;
                 If P45 = 'N0';
         DOCD7L = '..GN...';
                 ENDIF;
               ENDIF;
               If WUAPCK = 'Y';
         XOCD7L = DOCD7L;           // //7
         DOCD7L = XOCD7L;
               ENDIF;
               If P33 = 'J' OR P33 = 'S';
                 If #1A1CD <> '11';
     EvalR   DOCD7L = '.';
                 ENDIF;
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
               BD5VOL = 0;
               BD5HAL = 0;
               BDFVOL = 0;
               BDFHAL = 0;
               RMPAR = #1GWNB;
         BEVOOR = *blanks;
         BEVOOR = WUZDCJ;           // //1
         COM126 = WUCO01;           // //3
                //                    MOVEL'BT'      PBOFBT  2
         BTVER1 = *BLANK;           // //6
         BTVER2 = *BLANK;           // //6
         BTVER3 = *BLANK;           // //6
         BTTOE1 = *BLANK;          // //11
         BTTOE2 = *BLANK;          // //11
         BTTOE3 = *BLANK;          // //11
               //REFMND BAREM
               //DAGBEDRAG
               //DAGBEDRAG EU
               //DAGBEDRAG F9
               //BEF OF EURO ?
               //ANC.CODE
               //BEROEP 09
               //BEROEPSVERLE
               //VOLGNR WERKLOZE BARE
               //ACLVB-RVA (A)
               //VOL BAREMABD
               //IDEM IN EURO
               //HALF BAREMA
               //IDEM IN EURO
               //TYPE5IN EURO
               //TYPE5IN EURO
               //FORF IN EURO
               //FORF IN EURO
               POSBARX9(PBOFBT:#1AACD:#1AFNB:LEEFTX:DOCD7L:#1A1CD:RMPAR:DDD1:DDD2:DDD3:BBEE:LFTCOD:B
                 HVBAR = BDEVOL;
               HHBAR = BDEHAL;
               HVBAR5 = BD5VOL;
               HHBAR5 = BD5HAL;
               HVFOR = BDFVOL;
               HHFOR = BDFHAL;
               If P33 = 'S' AND #1A1CD = '11';
         DOCD7L = '..W';
                 //REFMND BAREM
                 //DAGBEDRAG
                 //DAGBEDRAG EU
                 //DAGBEDRAG F9
                 //BEF OF EURO ?
                 //ANC.CODE
                 //BEROEP 09
                 //BEROEPSVERLE
                 //VOLGNR WERKLOZE BARE
                 //ACLVB-RVA (A)
                 //VOL BAREMABD
                 //IDEM IN EURO
                 //HALF BAREMA
                 //IDEM IN EURO
                 //TYPE5IN EURO
                 //TYPE5IN EURO
                 //FORF IN EURO
                 //FORF IN EURO
                 POSBARX9(PBOFBT:#1AACD:#1AFNB:LEEFTX:DOCD7L:#1A1CD:RMPAR:DDD1:DDD2:DDD3:BBEE:LFTCOD
                   If BDEVOL > HVBAR;
                   HVBAR = BDEVOL;
                   HHBAR = BDEHAL;
                 ENDIF;
               ENDIF; //11+S
             ENDIF; //SUBBEROEP=P
             EXSR TESTIN;
           ELSE;
              // CASE: *OTHERWISE
              // Ophalen barema+bdr 092012 - Wkl betaling  *
             //REFMND
         BARC10 = #1DOCD;
     EvalR   WUAGCD = '0';                        // //SW102
     EvalR   WUF0CD = '0';                        // //SW109
              //                    MOVE '0'       WUF1CD           SW110
     EvalR   WUF2CD = '0';                        // //SW111
         WUW241 = '0';
             LEEFTX = 10;
         FOR40 = A1ADDT;            // //6 0          DAT40%
         FORF = A1AHDT;             // //6 0          DAT.FORFAIT
             VERLL = #1A9NB;
             If #1A9NB = 19;
               If #1BANB >= 156;
                 VERLL = 20;
               ENDIF;
             ENDIF;
             TYPCON = 'N';
             If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06';
               TYPCON = 'Y';
             ENDIF;
             If #1A1CD = '52';
     C                   GOTO      NTAB52
             ENDIF;
             If #1BCCD <> 'P'; //NTS DOEN VR PWATOESL
               If #1A1CD = '01' OR #1A1CD = '03' OR #1A1CD = '33';
                 If P45 = 'B1' OR P45 = 'B2' OR P45 = 'N1' OR P45 = 'N2';
                   If FOR40 = #1GWNB; //DAT.ACHT.
                     If #1BDST <> 'N';
         WUF2CD = '2';                        // //ZELF BER.
                     ENDIF; //SW111
                   ENDIF;
                 ENDIF;
                 If P45 = 'B2' OR P45 = 'P.';
                   If FORF = #1GWNB; //DAT.ACHT.
                     If #1BDST <> 'N';
         WUF2CD = '3';                        // //ZELF BER.
                     ENDIF;
                   ENDIF;
                 ENDIF;
               ENDIF; //01,03,05,33
                //SW110=1:LID MET BAREMA B3,N3,A3/B2,N2,A2/P3/OP3/A8 & JARIG IN DIE MAAND
                //SW111=1:LID MET WACHT-OF OVERBR.UITKERING & JARIG IN DIE MND->ZELF BEREKE
                //VR TYPE 05 IS BEDRAG FORFAIT NODIG==>GAAN CHAINEN NR BAREMA...P...=B10 P
         P' = 'B10;      // //BARFOR            5
                //----------------------------------------------------------------
     EvalR   BARACL = P12;
     EvalR   BARVW5 = P12;
               If P45 = 'A0';
         BARACL = 'B24';           // //5            TAB15
         BARVW5 = 'B24';           // //5            TAB15
               Endif; //END A0
               If P45 = 'N0';
         BARACL = 'B24';           // //5            TAB15
         BARVW5 = 'B24';           // //5            TAB15
               Endif; //END N0
               If P45 = 'B0';
         BARACL = 'B25';           // //5            TAB15
         BARVW5 = 'B25';           // //5            TAB15
               Endif; //END B0

               If P46 = 'B3*';
         BARACL = 'B15';           // //5            TAB15
     EvalR   BARACL = P12;
         BARVW5 = 'B15';           // //5            TAB15
     EvalR   BARVW5 = P12;
                 If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06';
         BARACL = 'B07';                        // //TAB07
                 Endif; //02/04/07
               Endif; //END B3*
               If P46 = 'N3*';
         BARACL = 'B14';                        // //TAB14
     EvalR   BARACL = P12;
         BARVW5 = 'B14';                        // //TAB14
     EvalR   BARVW5 = P12;
                 If TYPCON = 'Y';
                   If #1GWNB < 199904;
         BARACL = 'B05';                        // //TAB05
                   ELSE; //VNF199904
                     If #1GWNB >= 199904 AND #1GWNB <= 200003;
         BARACL = 'B20';                        // //TAB20
                     ELSE; //VNF199904
                       If #1GWNB >= 200004;
         BARACL = 'B21';                        // //TAB21
                       ENDIF; //>=200004
                     ENDIF; //9904-0003
                   ENDIF; //<199904
                 Endif; //02/04/07
                 If #1A1CD = '05';
         BARACL = 'B21';                        // //TAB21
                 ENDIF; //TYPE05
               Endif; //END N3*
               If P46 = 'B3.' OR P46 = 'N3.' OR P46 = 'A3.' OR P46 = 'A3*' OR P46 = 'P3.' OR P46 = '
                 OUD50 = 0;
                 OUD50 = 5000 + PD1AL;
                 OUD55 = 0;
                 OUD55 = 5500 + PD1AL;
                 OUD58 = 0;
                 OUD58 = 5800 + PD1AL;
                 If OUD50 > #1GWNB; //JNGER OF 50
                   LEEFTX = 49;
                 ENDIF;
                 If OUD50 <= #1GWNB; //OUDER OF 50
                   LEEFTX = 50;
                 ENDIF;
                 If OUD55 <= #1GWNB;
                   LEEFTX = 55;
                 ENDIF;
                 If OUD58 <= #1GWNB;
                   LEEFTX = 58;
                 ENDIF;

                 If OUD50 <= #1GWNB; //OUDER OF 50
                   If P46 = 'N3.';
         BARACL = 'B04';                        // //TAB04
     EvalR   BARACL = P12;
         BARVW5 = 'B04';                        // //TAB04
     EvalR   BARVW5 = P12;
                     If TYPCON = 'Y';
                       If #1GWNB < 199904;
         BARACL = 'B05';                        // //TAB05
                       ELSE; //VNF199904
                         If #1GWNB >= 199904 AND #1GWNB <= 200003;
         BARACL = 'B20';                        // //TAB20
                         ELSE; //VNF199904
                           If #1GWNB >= 200004;
         BARACL = 'B21';                        // //TAB21
                           ENDIF; //>=200004
                         ENDIF; //9904-0003
                       ENDIF; //<199904
                     Endif; //02/04/07
                     If #1A1CD = '05';
         BARACL = 'B21';                        // //TAB21
                     ENDIF;
                   Endif; //N3
                 Endif; //> 50 JR
                 If OUD50 > #1GWNB; //JNGER OF 50
                   If VERLL >= 20; //BV > 20JR
                     If P46 = 'N3.';
     EvalR   BARACL = P12;
     EvalR   BARVW5 = P12;
                       If #1GWNB < 199904;
         BARACL = 'B05';                        // //TAB05
         BARVW5 = 'B05';                        // //TAB05
                       ELSE;
                         If #1GWNB >= 199904 AND #1GWNB <= 200003;
         BARACL = 'B20';                        // //TAB20
         BARVW5 = 'B20';                        // //TAB20
                         ELSE;
                           If #1GWNB >= 200004;
         BARACL = 'B21';                        // //TAB21
         BARVW5 = 'B21';                        // //TAB21
                           ENDIF; //>=200004
                         ENDIF; //9904-0003
                       ENDIF; //<199904
                     Endif; //N3
                   Endif; //20 BV
                 Endif; //< 50 JR
                 If OUD55 <= #1GWNB; //OUDER OF 55
                   If P46 = 'N3.';
         BARACL = 'B14';                        // //TAB14
     EvalR   BARACL = P12;
         BARVW5 = 'B14';                        // //TAB14
     EvalR   BARVW5 = P12;
                     If TYPCON = 'Y';
                       If #1GWNB < 199904;
         BARACL = 'B05';                        // //TAB05
                       ELSE; //VNF199904
                         If #1GWNB >= 199904 AND #1GWNB <= 200003;
         BARACL = 'B20';                        // //TAB20
                         ELSE; //VNF199904
                           If #1GWNB >= 200004;
         BARACL = 'B21';                        // //TAB21
                           ENDIF; //>=200004
                         ENDIF; //9904-0003
                       ENDIF; //<199904
                     Endif; //02/04/07
                     If #1A1CD = '05';
         BARACL = 'B21';                        // //TAB21
                     ENDIF;
                   Endif; //N3
                 Endif; //> 55 JR
                  // 01/97
                 If #1GWNB < 199701;
                   If OUD50 <= #1GWNB; //OUDER OF 50
                     If P46 = 'B3.';
         BARACL = 'B06';                        // //TAB06
     EvalR   BARACL = P12;
         BARVW5 = 'B06';                        // //TAB06
     EvalR   BARVW5 = P12;
                       If TYPCON = 'Y';
         BARACL = 'B07';                        // //TAB07
                       Endif; //02/04/07
                       If #1A1CD = '05' AND #1GWNB < 200007;
         BARACL = 'B07';                        // //TAB07
                       ENDIF;
                     Endif; //B3
                   Endif; //> 50 JR
                   If OUD50 > #1GWNB; //JNGER OF 50
                     If VERLL >= 20; //BV > 20JR
                       If P46 = 'B3.';
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
         BARVW5 = 'B07';                        // //TAB07
     EvalR   BARVW5 = P12;
                       Endif; //B3
                     Endif; //20 BV
                   Endif; //< 50 JR
                   If OUD55 <= #1GWNB; //OUDER OF 55
                     If P46 = 'B3.';
         BARACL = 'B15';                        // //TAB15
     EvalR   BARACL = P12;
         BARVW5 = 'B15';                        // //TAB15
     EvalR   BARVW5 = P12;
                       If TYPCON = 'Y';
         BARACL = 'B07';                        // //TAB07
                       Endif; //02/04/07
                       If #1A1CD = '05' AND #1GWNB < 200007;
         BARACL = 'B07';                        // //TAB07
                       ENDIF;
                     Endif; //B3
                   Endif; //> 55 JR
                    // 01/97
                 ELSE; //WEL REF.MND
                   If OUD50 <= #1GWNB; //OUDER OF 50
                     If P46 = 'B3.';
                       If #1GWNB < 199707;
                         If #1ASST = ' '; //NIEUW REGIME
         BARACL = 'B17';                        // //TAB17=45%
     EvalR   BARACL = P12;
         BARVW5 = 'B17';                        // //TAB17=45%
     EvalR   BARVW5 = P12;
                         ELSE; //KODE 1=42,5%
         BARACL = 'B06';                        // //TAB06
     EvalR   BARACL = P12;
         BARVW5 = 'B06';                        // //TAB06
     EvalR   BARVW5 = P12;
                         ENDIF;
                       ELSE; //VANAF 199707
                         If #1ASST = ' ' OR #1ASST = '1' OR #1ASST = '2' OR #1ASST = '3' OR #1ASST =
         BARACL = 'B17';                        // //TAB17=45%
     EvalR   BARACL = P12;
         BARVW5 = 'B17';                        // //TAB17=45%
     EvalR   BARVW5 = P12;
                         ELSE; //KODE 1=42,5%
         BARACL = 'B06';                        // //TAB06
     EvalR   BARACL = P12;
         BARVW5 = 'B06';                        // //TAB06
     EvalR   BARVW5 = P12;
                         ENDIF; //END ASST
                       ENDIF; //END 199707
                       If TYPCON = 'Y';
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
                       Endif; //02/04/07
                       If #1A1CD = '05' AND #1GWNB < 200007;
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
                       ENDIF;
                     Endif; //B3
                   Endif; //> 50 JR
                   If OUD50 > #1GWNB; //JNGER OF 50
                     If VERLL >= 20; //BV > 20JR
                       If P46 = 'B3.';
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
         BARVW5 = 'B07';                        // //TAB07
     EvalR   BARVW5 = P12;
                       Endif; //B3
                     Endif; //20 BV
                   Endif; //< 50 JR
                   If OUD55 <= #1GWNB; //OUDER OF 55
                     If P46 = 'B3.';
                       If #1ASST = ' ' OR #1ASST = '1' OR #1ASST = '2' OR #1ASST = '3' OR #1ASST = '
         BARACL = 'B18';                        // //TABXX:50%
     EvalR   BARACL = P12;
         BARVW5 = 'B18';                        // //TABXX:50%
     EvalR   BARVW5 = P12;
                       ELSE; //WEL 0=60%
         BARACL = 'B15';                        // //TAB15
     EvalR   BARACL = P12;
         BARVW5 = 'B15';                        // //TAB15
     EvalR   BARVW5 = P12;
                       ENDIF;
                       If TYPCON = 'Y';
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
                       Endif; //02/04/07
                       If #1A1CD = '05' AND #1GWNB < 200007;
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
                       ENDIF;
                     Endif; //B3
                   Endif; //> 55 JR
                   If OUD58 <= #1GWNB; //OUDER OF 58
                     If P46 = 'B3.';
                       If #1ASST = ' ' OR #1ASST = '1' OR #1ASST = '2' OR #1ASST = '3' OR #1ASST = '
         BARACL = 'B19';                        // //TABYY:55%
     EvalR   BARACL = P12;
         BARVW5 = 'B19';                        // //TABYY:55%
     EvalR   BARVW5 = P12;
                       ELSE; //WEL 0=60%
         BARACL = 'B15';                        // //TAB15
     EvalR   BARACL = P12;
         BARVW5 = 'B15';                        // //TAB15
     EvalR   BARVW5 = P12;
                       ENDIF;
                       If TYPCON = 'Y';
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
                       Endif; //02/04/07
                       If #1A1CD = '05' AND #1GWNB < 200007;
         BARACL = 'B07';                        // //TAB07
     EvalR   BARACL = P12;
                       ENDIF;
                     Endif; //B3
                   Endif; //> 55 JR
                 ENDIF;
                  //                                                     >=01/97
                 If OUD50 <= #1GWNB; //OUDER OF 50
                   If P46 = 'A3.' OR P46 = 'A3*';
 OR P46 = 'A8*'                      //          P46       OREQ 'A8.'
         BARACL = 'B03';                        // //TAB03
     EvalR   BARACL = P12;
         BARVW5 = 'B03';                        // //TAB03
     EvalR   BARVW5 = P12;
                     If TYPCON = 'Y';
         BARACL = 'B01';                        // //TAB07
                     Endif; //02/04/06/05/
                     If #1A1CD = '05' AND #1GWNB < 200007;
         BARACL = 'B01';                        // //TAB07
         BARVW5 = 'B01';                        // //TAB07
                     ENDIF;
                      //                    END                             B3
                   Endif; //A3,A3*,A8,A8
                 Endif; //> 50 JR
                 If OUD50 > #1GWNB; //JNGER OF 50
                   If VERLL >= 20; //BV > 20JR
                     If P46 = 'A3.' OR P46 = 'A3*';
 OR P46 = 'A8*'                        //          P46       OREQ 'A8.'
         BARACL = 'B01';                        // //TAB01
     EvalR   BARACL = P12;
         BARVW5 = 'B01';                        // //TAB01
     EvalR   BARVW5 = P12;
                     Endif; //A3,A3*,A8,A8
                   Endif; //20 BV
                 Endif; //< 50 JR
                 If P46 = 'A8.';
         BARACL = 'B01';                        // //TAB01
     EvalR   BARACL = P12;
         BARVW5 = 'B01';                        // //TAB01
     EvalR   BARVW5 = P12;
                 Endif; //A8
               Endif; //B3 OF N3 A3
               If OUD50 <= #1GWNB; //OUDER OF 50
                 If P46 = 'P3.';
         BARACL = 'B11';                        // //TAB11
     EvalR   PBARACL = *blanks;
         BARVW5 = 'B11';                        // //TAB11
     EvalR   PBARVW5 = *blanks;
                   If TYPCON = 'Y';
         BARACL = 'B10';                        // //TAB10
         BARVW5 = 'B10';                        // //TAB10
                   Endif; //02/04/07
                   If #1A1CD = '05' AND #1GWNB < 200007;
         BARACL = 'B10';                        // //TAB10
         BARVW5 = 'B10';                        // //TAB10
                   ENDIF;
                 Endif; //P3
               Endif; //> 50 JR
               If OUD50 > #1GWNB; //JNGER OF 50
                 If VERLL >= 20; //BV > 20JR
                   If P46 = 'P3.';
         BARACL = 'B10';                        // //TAB10
     EvalR   PBARACL = *blanks;
         BARVW5 = 'B10';                        // //TAB10
     EvalR   PBARVW5 = *blanks;
                   Endif; //P3
                 Endif; //20 BV
               Endif; //< 50 JR
               If #1BACD = '09'; //BER.=09/DOK
                 If P35 = 'WA6';
     EvalR   BARACL = 'B13CC';
     EvalR   BARVW5 = 'B13CC';
                   If P36 = 'WA6F';
     EvalR   ' = 'B13A;      // //BARACL
     EvalR   ' = 'B13A;      // //BARVW5
                   ENDIF;
                 ELSE;
                   If P45 = 'A6';
                     If #1GWNB <= 200112;
     EvalR   BARACL = 'B1354';
     EvalR   BARVW5 = 'B1354';
                     ELSE; //VANAF 01/2002
                       If #1GWNB <= 200812;
                         If P12 = '70';
     EvalR   BARACL = 'B1370';
     EvalR   BARVW5 = 'B1370';
                         ENDIF;
                         If P12 <= '59';
         ' = 'B13;      // //BARACL
         ' = 'B13;      // //BARVW5
     EvalR   BARACL = P12;
     EvalR   BARVW5 = P12;
                         ENDIF;
                       ELSE; //01/2009
         ' = 'B13;      // //BARACL
         ' = 'B13;      // //BARVW5
     EvalR   BARACL = P12;
     EvalR   BARVW5 = P12;
                       ENDIF; //200812
                     ENDIF; //12/2001
                   ELSE; //GEEN A6
                     If P35 = 'WA0';
     EvalR   BARACL = 'B33CC';
     EvalR   BARVW5 = 'B33CC';
                     ELSE;
         BARACL = 'B33';
         BARVW5 = 'B33';
     EvalR   BARACL = P12;
     EvalR   BARVW5 = P12;
                     ENDIF; //WA0
                   ENDIF; //A6
                 ENDIF; //WA6
               Endif;
               If P36 <> '.B3.';
                 If P36 <> 'WB3.';
                   If P36 <> '.N3.';
                     If P36 <> 'WN3.';
                       If P36 <> '.A3.';
                         If P46 <> 'A3*';
                           If P46 <> 'B3*';
                             If P46 <> 'N3*';
                               If P36 <> '.P3.';
                                 If P36 <> 'WP3.';
                                   If P46 <> 'A8.';
                                     If P46 <> 'A8*';
                                       If #1BACD <> '09';
                                         If #1GWNB <= 201102;
                                           CHAIN #1DOCD @B9REGH ;
       *in50 = (%found() = *Off); //BAREMA RVA
     C   50              MOVE      '1'           WUAGCD
     C   50              GOTO      ENDBRM
         BARACL = B9DUCD;           // //5
         BARVW5 = B9DUCD;
                                         ELSE;
     C     NTAB52        TAG
                                           CHAIN #1DOCD LYD4REL1 ;
       *in50 = (%found() = *Off);
     C   50              MOVE      '1'           WUAGCD
     C   50              GOTO      ENDBRM
         BARACL = D4J7CI;           // //5
         BARVW5 = D4J7CI;
                                           If #1A1CD = '52';
     C                   GOTO      TOCHBD
                                           ENDIF;
                                         ENDIF;
                                         If P45 = 'N2' OR P45 = 'N4' OR P45 = 'N5';
                                           If #1GWNB >= 199904;
         BARACL = 'B20';
         BARVW5 = 'B20';
                                           ELSE;
         BARACL = 'B05';
         BARVW5 = 'B05';
                                           ENDIF;
                                           If #1GWNB >= 200004;
         BARACL = 'B21';
         BARVW5 = 'B21';
                                           ENDIF;
                                         ENDIF; //N2,N4,N5
                                       Endif; //END 09
                                     Endif; //END P3.
                                   Endif; //END N3*
                                 Endif; //END B3*
                               Endif; //END A3*
                             Endif; //END A3.
                           Endif; //END N3.
                         Endif; //END B3.
                       Endif; //END A8*
                     Endif; //END A8.
                   Endif; //END B3.
                 Endif; //END A8*
               Endif; //END A8.
                //200901 BAREMA'S TOT 70 TERWIJL A3,... SLECHTS TOT BEDRAGEN 59 GAAT
               If #1GWNB <= 201102;
                 If P45 = 'A3' OR P45 = 'N3' OR P45 = 'B3';
                   If P12 >= '60';
                     If P12 <> '..';
                       If P35 <> 'WA3';
     EvalR   BARACL = '59';
     EvalR   BARVW5 = '59';
                       ENDIF;
                     ENDIF;
                   ENDIF;
                 ENDIF;
               ELSE;
                 If P45 = 'A3' OR P45 = 'B3';
                   If P12 >= '61';
                     If P12 <> '..';
                       If P35 <> 'WA3';
     EvalR   BARACL = '60';
     EvalR   BARVW5 = '60';
                       ENDIF;
                     ENDIF;
                   ENDIF;
                 ENDIF;
                 If P45 = 'N3';
                   If P35 <> 'WN3';
                     If PD1AL <> *ZERO;
                       LEEFTT = #1GWNB - PD1AL;
                     ENDIF;
                     If LEEFTT >= 5000;
                       If P12 >= '61';
                         If P12 <> '..';
     EvalR   BARACL = '60';
     EvalR   BARVW5 = '60';
                         ENDIF;
                       ENDIF;
                     ELSE;
                       If P12 >= '60';
                         If P12 <> '..';
     EvalR   BARACL = '59';
     EvalR   BARVW5 = '59';
                         ENDIF;
                       ENDIF;
                     ENDIF;
                   ENDIF;
                 ENDIF;
               ENDIF;
               If #1GWNB >= 201209;
                 If P46 = 'N3.' OR P46 = 'B3.' OR P46 = 'A3.' OR P46 = 'P3.';
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
                   RMPAR = #1GWNB; //BEDRAG C3.2 OPHALEN
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
                   //TABEL BAREMA
                   POSBARK9(#1AACD:#1AFNB:LEEFTX:BARC10:#1A1CD:RMPAR:DDD1:DDD2:DDD3:BBEE:LFTCOD:BRDO
                     If BARACL = 'XXXXX';
         WUAGCD = '2';
     C                   GOTO      ENDBRM
                   ENDIF;
                 ENDIF;
               ENDIF;
                //----------------------------------------------------------------
                // BARACL BEPAALD VOOR B3 OF N3 OF A3,A8,DOK,EN NIET B3,N3 OF DOK
                //BARACL BEPALEN VR BAREMA'S T,W,TN,WN,TP,WP + LAATSTE POSITIE=A,B,C,D,E,F
                //----------------------------------------------------------------
               EXSR TESTIN;
               If POS6 = '..T...' OR POS6 = '..W...' OR POS6 = '..WB3.' OR POS6 = '..WB4.' OR POS6 =
                 If LEEFT >= 21;
         1' = 'B09;      // //BARACL
                 ELSE; //GN21JR
                   If LEEFT = 20;
         2' = 'B09;      // //BARACL
                   ELSE; //GN21,20
                     If LEEFT = 19;
         3' = 'B09;      // //BARACL
                     ELSE; //GN21,20,19
                       If LEEFT = 18;
         4' = 'B09;      // //BARACL
                       ELSE; //21,20,19,18
                         If LEEFT = 17;
         5' = 'B09;      // //BARACL
                         ELSE; //21,20,19,18
                           If LEEFT = 16;
         6' = 'B09;      // //BARACL
                           ELSE; //21,20,19,18
         WUF0CD = '1';                        // //< DAN 16
                           Endif; //16 JR
                         Endif; //17 JR
                       Endif; //18 JR
                     Endif; //19 JR
                   Endif; //20 JR
                 Endif; //21 JR
         BARVW5 = BARACL;
               Endif; //..T...,..W..
               If POS6 = '..TN..' OR POS6 = '..WN..' OR POS6 = '..WN3.' OR POS6 = '..WN4.' OR POS6 =
                 If LEEFT >= 25;
                   If #1GWNB >= 200007;
         BARACL = 'B09N8';
                   ELSE; //VNF 200007
                     If #1GWNB >= 199907;
         BARACL = 'B09N7';
                     ELSE; //VNF 200007
         BARACL = 'B09N1';
                     ENDIF; //199907
                   ENDIF; //200007
                 ELSE; //GN21JR
                   If LEEFT >= 21;
         BARACL = 'B09N1';
                   ELSE; //GN21JR
                     If LEEFT = 20;
         BARACL = 'B09N2';
                     ELSE; //GN21,20
                       If LEEFT = 19;
         BARACL = 'B09N3';
                       ELSE; //GN21,20,19
                         If LEEFT = 18;
         BARACL = 'B09N4';
                         ELSE; //21,20,19,18
                           If LEEFT = 17;
         BARACL = 'B09N5';
                           ELSE; //21,20,19,18
                             If LEEFT = 16;
         BARACL = 'B09N6';
                             ELSE; //21,20,19,18
         WUF0CD = '1';                        // //< DAN 16
                             Endif; //16 JR
                           Endif; //17 JR
                         Endif; //18 JR
                       Endif; //19 JR
                     Endif; //20 JR
                   Endif; //21 JR
                 Endif; //25 JR
         BARVW5 = BARACL;
               Endif; //..TN..,..WN.
               If POS6 = '..TP..' OR POS6 = '..WP..' OR POS6 = '..WP3.' OR POS6 = '..WP4.' OR POS6 =
                 If LEEFT >= 21;
         BARACL = 'B09P1';
                 ELSE; //GN21JR
                   If LEEFT = 20;
         BARACL = 'B09P2';
                   ELSE; //GN21,20
                     If LEEFT = 19;
         BARACL = 'B09P3';
                     ELSE; //GN21,20,19
                       If LEEFT = 18;
         BARACL = 'B09P4';
                       ELSE; //21,20,19,18
                         If LEEFT = 17;
         BARACL = 'B09P5';
                         ELSE; //21,20,19,18
                           If LEEFT = 16;
         BARACL = 'B09P6';
                           ELSE; //21,20,19,18
         WUF0CD = '1';                        // //< DAN 16
                           Endif; //16 JR
                         Endif; //17 JR
                       Endif; //18 JR
                     Endif; //19 JR
                   Endif; //20 JR
                 Endif; //21 JR
         BARVW5 = BARACL;
               Endif; //..TN..,..WN.
                //BARACL BEPALEN VOOR TYPE 18 ZONDER TYPE 02 ; //INDIEN TYPE 02 DAN
                // GEWONE BAREMA OPHALEN NAARGELANG A1, B1 OF N1
               If #1A1CD = '18' AND WUCC18 = '18';
                 If #1GWNB <= 200112;
         BARACL = 'B1654';
         BARVW5 = 'B1654';
                 ELSE;
         BARACL = 'B1658';
         BARVW5 = 'B1658';
                 ENDIF;
               Endif; //END 18
                //BARACL BEPALEN VOOR TYPE 23/29/27
               If #1A1CD = '23';
                 If #1GWNB <= 200112;
         BARACL = 'B2254';
         BARVW5 = 'B2254';
                 ELSE;
         BARACL = 'B2258';
         BARVW5 = 'B2258';
                 ENDIF;
               Endif; //END 23
               If #1A1CD = '29';
                 If BARC10 = '.......';
         BARACL = 'B2958';
         BARVW5 = 'B2958';
                 ENDIF;
                 If BARC10 = '..T1...';
         BARACL = 'B29T1';
         BARVW5 = 'B29T1';
                 ENDIF;
                 If BARC10 = '..T2...';
         BARACL = 'B29T2';
         BARVW5 = 'B29T2';
                 ENDIF;
                 If BARC10 = '..T3...';
         BARACL = 'B29T3';
         BARVW5 = 'B29T3';
                 ENDIF;
               Endif; //END 29
               If #1A1CD = '27';
         BARACL = 'B2758';
         BARVW5 = 'B2758';
               Endif; //END 27

               If BARC10 = '.......';
                 HVBAR = 0;
                 HHBAR = 0;
                 If #1A1CD = '23' OR #1A1CD = '29' OR #1A1CD = '27';
     C                   GOTO      TOCHBD
                 ENDIF;
               ELSE; //BAR<>.......
     C     TOCHBD        TAG
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
                 ENDIF;

               Endif; //BAR=.......
                // BIJ TYPE 09, 10, 18 EN DATUM BEGIN WKLH. > OF = 01/05/1994 :
                // VERMINDERING DAGBEDRAG (HVBAR EN HHBAR) ADHV. VERMINDERINGSPCT.
               If #1GWNB < 201004;
                 If #1AKDT >= 19940501;
                   If #1A1CD = '09';
                      //+         #1DDNB    IFEQ 0
                      // HERREKEND BEDRAG VOOR VOLLE DAGEN
                     If #1DDNB > 0;
                       HVBAR = #1DDNB;
                       EVAL(H) HHBAR = #1DDNB / 2;
                       If BYEURO = 'B'; //BELG.FRANK
     EvalR   HHBAR = '0000';
                       ELSE; //EURO
                         If #1GWNB <= 200111;
     EvalR   HHBAR = '0000';
                         ENDIF;
                       ENDIF; //BELG FR
                     ENDIF;
                     HVBARB = HVBAR;
                     MINBP4 = HVBAR * #DVPBP;
                     MINBP4 = MINBP4 / 100;
                     MINBP2 = MINBP4;
                      //          HVBAR     SUB  MINBP2    MINBP  116
                     If BYEURO = 'B'; //BELG.FRANK
                       RES4NK = HVBAR * #DVPBP;
                       RES2NK = RES4NK / 100;
                       MINBP = HVBAR - RES2NK;
                     ELSE; //EURO
                       If #1GWNB <= 200111;
                         RES4NK = HVBAR * #DVPBP;
                         RES2NK = RES4NK / 100;
                         MINBP = HVBAR - RES2NK;
                       ELSE;
                         RES6NK = HVBAR * #DVPBP;
                         RES4NK = RES6NK / 100;
                         MINBP = HVBAR - RES4NK;
                       ENDIF; //200111
                     ENDIF;
                     If BYEURO = 'B'; //BELG.FRANK
                       EVAL(H) RESBF = MINBP;
                       HVBAR = RESBF;
                     ELSE; //EURO
                       If #1GWNB <= 200111;
                         EVAL(H) RESBF = MINBP;
                         HVBAR = RESBF;
                       ELSE;
     EvalR   DECBP = MINBP;            // //4 0
                         If DECBP >= 5000;
                           HVBAR = MINBP + 0.01;
     EvalR   HVBAR = '00';                         // //(4NA DE KOMMA)
                         ELSE;
                           HVBAR = MINBP;
     EvalR   HVBAR = '00';                         // //(4NA DE KOMMA)
                         ENDIF; //END >=50
                       ENDIF; //200111
                     ENDIF; //BELG.FRANK
                      // HERREKEND BEDRAG VOOR EVENTUELE HALVE DAGEN
                     MINBP4 = HHBAR * #DVPBP;
                     MINBP4 = MINBP4 / 100;
                     MINBP2 = MINBP4;
                      //          HHBAR     SUB  MINBP2    MINBP
                     If BYEURO = 'B'; //BELG.FRANK
                       RES4NK = HHBAR * #DVPBP;
                       RES2NK = RES4NK / 100;
                       MINBP = HHBAR - RES2NK;
                     ELSE;
                       If #1GWNB <= 200111;
                         RES4NK = HHBAR * #DVPBP;
                         RES2NK = RES4NK / 100;
                         MINBP = HHBAR - RES2NK;
                       ELSE;
                         RES6NK = HHBAR * #DVPBP;
                         RES4NK = RES6NK / 100;
                         MINBP = HHBAR - RES4NK;
                       ENDIF; //200111
                     ENDIF;
                     If BYEURO = 'B'; //BELG.FRANK
                       EVAL(H) RESBF = MINBP;
                       HHBAR = RESBF;
                     ELSE; //EURO
                       If #1GWNB <= 200111;
                         EVAL(H) RESBF = MINBP;
                         HHBAR = RESBF;
                       ELSE;
     EvalR   DECBP = MINBP;
                         If DECBP >= 5000;
                           HHBAR = MINBP + 0.01;
     EvalR   HHBAR = '00';                         // //4 NA DE KOMMA
                         ELSE;
                           HHBAR = MINBP;
     EvalR   HHBAR = '00';                         // //4 NA DE KOMMA
                         ENDIF; //END >=50
                       ENDIF; //200111
                     ENDIF; //BELG.FRANK
                      // HERREKEND BEDRAG VOOR VOLLE DAGEN / VOOR EVENTUELE HALVE DAGEN
                   ELSE; //ELSE GN 09

                     If #1A1CD = '10'; //TYPE 10
                       If #1DDNB > 0;
                          //                    Z-ADD#1DDNB    HHBAR
                         EVAL(H) HHBAR = #1DDNB / 2;
                         If BYEURO = 'B'; //BELG.FRANK
     EvalR   HHBAR = '0000';
                         ELSE;
                           If #1GWNB <= 200111;
     EvalR   HHBAR = '0000';
                           ENDIF; //200111
                         ENDIF; //BELG FR
                       ENDIF;
                       HHBARB = HHBAR;
                       MINBP4 = HHBAR * #DVPBP;
                       MINBP4 = MINBP4 / 100;
                       MINBP2 = MINBP4;
                        //          HHBAR     SUB  MINBP2    MINBP
                       If BYEURO = 'B'; //BELG.FRANK
                         RES4NK = HHBAR * #DVPBP;
                         RES2NK = RES4NK / 100;
                         MINBP = HHBAR - RES2NK;
                       ELSE;
                         If #1GWNB <= 200111;
                           RES4NK = HHBAR * #DVPBP;
                           RES2NK = RES4NK / 100;
                           MINBP = HHBAR - RES2NK;
                         ELSE;
                           RES6NK = HHBAR * #DVPBP;
                           RES4NK = RES6NK / 100;
                           MINBP = HHBAR - RES4NK;
                         ENDIF; //200111
                       ENDIF;
                       If BYEURO = 'B'; //BELG.FRANK
                         EVAL(H) RESBF = MINBP;
                         HHBAR = RESBF;
                       ELSE; //EURO
                         If #1GWNB <= 200111;
                           EVAL(H) RESBF = MINBP;
                           HHBAR = RESBF;
                         ELSE;
     EvalR   DECBP = MINBP;
                           If DECBP >= 5000;
                             HHBAR = MINBP + 0.01;
     EvalR   HHBAR = '00';                         // //4 POS NA DE KOMMA
                           ELSE;
                             HHBAR = MINBP;
     EvalR   HHBAR = '00';                         // //4 POS NA DE KOMMA
                           ENDIF; //END >=50
                         ENDIF; //200111
                       ENDIF; //BELG.FRANK

                     ELSE; //GN 09,10

                       If #1A1CD = '18'; //TYPE 18
                         If #1DDNB > 0;
                           HVBAR = #1DDNB;
                         ENDIF;
                         HVBARB = HVBAR;
                         MINBP4 = HVBAR * #DVPBP;
                         MINBP4 = MINBP4 / 100;
                         MINBP2 = MINBP4;
                          //          HVBAR     SUB  MINBP2    MINBP
                         If BYEURO = 'B'; //BELG.FRANK
                           RES4NK = HVBAR * #DVPBP;
                           RES2NK = RES4NK / 100;
                           MINBP = HVBAR - RES2NK;
                         ELSE;
                           If #1GWNB <= 200111;
                             RES4NK = HVBAR * #DVPBP;
                             RES2NK = RES4NK / 100;
                             MINBP = HVBAR - RES2NK;
                           ELSE;
                             RES6NK = HVBAR * #DVPBP;
                             RES4NK = RES6NK / 100;
                             MINBP = HVBAR - RES4NK;
                           ENDIF; //200111
                         ENDIF;
                         If BYEURO = 'B'; //BELG.FRANK
                           EVAL(H) RESBF = MINBP;
                           HVBAR = RESBF;
                         ELSE; //EURO
                           If #1GWNB <= 200111;
                             EVAL(H) RESBF = MINBP;
                             HVBAR = RESBF;
                           ELSE;
     EvalR   DECBP = MINBP;
                             If DECBP >= 5000;
                               HVBAR = MINBP + 0.01;
     EvalR   HVBAR = '00';                         // //4 POS NA KOMMA
                             ELSE;
                               HVBAR = MINBP;
     EvalR   HVBAR = '00';                         // //4 POS NA KOMMA
                             ENDIF; //END >=50
                           ENDIF; //200111
                         ENDIF; //BELG.FRANK
                       ENDIF; //END TYPE 18
                     ENDIF; //END TYPE 10
                   ENDIF; //END TYPE 09
                 ENDIF; //END BEGIN WK
               ENDIF; //END 201004
                //BIJ TYPE 05 BAREMA B1 MOET MEN VERMENIGVULDIGEN MET 0.897 DOOR TAKS 10,3
               If #1A1CD = '05' OR #1A1CD = '57';
                 RK897 = 0.8991;
                 If P45 = 'B1';
                   HV05 = HVBAR * RK897;
                   HH05 = HHBAR * RK897;
                   If BYEURO = 'B';
                     HVBAR5 = HV05 + 0.99; //AFRONDEN
                     HHBAR5 = HH05 + 0.99; //HOGERE EENHE
     EvalR   HVBAR5 = '0000';
     EvalR   HHBAR5 = '0000';
                   ELSE; //EURO
                     If #1GWNB <= 200111;
                       HVBAR5 = HV05 + 0.99; //AFRONDEN
                       HHBAR5 = HH05 + 0.99; //HOGERE EENHE
     EvalR   HVBAR5 = '0000';
     EvalR   HHBAR5 = '0000';
                     ELSE;
                       HVBAR5 = HV05 + 0.0099; //AFRONDEN
                       HHBAR5 = HH05 + 0.0099; //HOGERE EENHE
     EvalR   HVBAR5 = '00';
     EvalR   HHBAR5 = '00';
                     ENDIF; //200111
                   ENDIF; //BELG.FRANK
                 ELSE; //A1,A2,B2,N1,
                   HVBAR5 = HVBAR; //N2,...
                   HHBAR5 = HHBAR;
                 Endif; //END B1
               Endif; //END 05
                // BAREMA P, OP, P3 MET EEN CIJFERCODE --> INFO MESSAGE C110A
               If P46 = 'P3.' OR P45 = 'P.' OR P34 = 'OP';
                 If P12 <> '..'; //CIJFERCODE
         WUW241 = '1';
                 ENDIF;
               ENDIF;

             ENDIF; //SUBBEROEP=P

           Endif; //*FI
            // switch102=2 suffix 3 en geen complement  ingevuld
            // CASE: WRK.Switch102 is 2
           If WUAGCD = '2'; //*IF
              // Send message 'Suffix 3 en leeftijd >50'
         ZAMSID = 'USR6284';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Sw241 : code P, OP, P3 : C110A partner : info message
            // CASE: WRK.Switch241 is 1
           If WUW241 = '1'; //*IF
              // Send message 'Code P, OP of P3-->C110A'
         ZAMSID = 'USR2376';
         ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;

           Endif; //*FI
            // Lid met wacht- of overbr.uitk en < 16 jaar : error message
            // CASE: WRK.Switch109 is 1
           If WUF0CD = '1'; //*IF
              // Send message 'Lid<16jaar:wachtuitkering'
         ZAMSID = 'USR0903';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Jarig in mnd v achterstal&wacht-of overbr-->zelf bedr.wklh invull
            // CASE: WRK.Switch111 is 1
           If WUF2CD = '1'; //*IF
              // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
             If WUPFCD <> '1'; //*IF
                // Send message 'Bedrag wkl zelf berekenen'
         ZAMSID = 'USR0904';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Jarig in mnd van B1-->B2, N1-->N2 : zelf bedr.wklh invullen:error
            // CASE: WRK.Switch111 is 2
           If WUF2CD = '2'; //*IF
              // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
             If WUPFCD <> '1'; //*IF
                // Send message 'Overgang periode 1-->2'
         ZAMSID = 'USR2096';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Jarig in mnd van B2-->P forfait : zelf bedr.wklh invullen:error
            // CASE: WRK.Switch111 is 3
           If WUF2CD = '3'; //*IF
              // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
             If WUPFCD <> '1'; //*IF
                // Send message 'Overgang --> forfait'
         ZAMSID = 'USR2097';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Barema komt niet meer voor in RVA-tabellen: vb  1.B1.. --> error
            // CASE: WRK.Switch102 is 1
           If WUAGCD = '1'; //*IF
              // CASE:
              //  - c1ANDc2ANDc3ANDc4ANDc5ANDc6ANDc7ANDc8ANDc9
              //   !- c1    : DTL.Type wklh. kode is <> B.
              //   !- c2    : DTL.Type wklh. kode is <> C.
              //   !- c3    : DTL.Type wklh. kode is <> D.
              //   !- c4    : DTL.Type wklh. kode is <> A.
              //   !- c5    : DTL.Type wklh. kode is <> CA
              //   !- c6    : DTL.Type wklh. kode is <> E.
              //   !- c7    : DTL.Type wklh. kode is <> F.
              //   !- c8    : DTL.Type wklh. kode is <> G.
              //   !- c9    : DTL.Type wklh. kode is <> 27
              //   '-
         Y0CX01 = '0';           // //1
             If #1A1CD <> 'B.'; //*IF
               If #1A1CD <> 'C.'; //*IF
                 If #1A1CD <> 'D.'; //*IF
                   If #1A1CD <> 'A.'; //*IF
                     If #1A1CD <> 'CA'; //*IF
                       If #1A1CD <> 'E.'; //*IF
                         If #1A1CD <> 'F.'; //*IF
                           If #1A1CD <> 'G.'; //*IF
                             If #1A1CD <> '27'; //*IF
         Y0CX01 = '1';
                             Endif; //*FI
                           Endif; //*FI
                         Endif; //*FI
                       Endif; //*FI
                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
                // Send message 'Geen geldig barema!'
         ZAMSID = 'USR0856';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // TYPE 05 :Sw14=3-->TYPE 05:dgn&bedr wklh BEREKENEN+omzetten-->dgn
            // CASE: WRK.switch14 is nt 3
           If WUGDCD <> '3'; //*IF
              // Type kode = 05 : Berekenen wklh en omzetten dagen wkl naar BZ
              // CASE: DTL.Type wklh. kode is 05
             If #1A1CD = '05'; //*IF
                // type 05 oud - Wkl betaling  *
         DAT1 = #1GWNB;             // //4 0          JR ACHTERSTA
         DAT2 = BYEENB;             // //4 0          JR WKLH
                // Send message 'Betalen via type 01'
         ZAMSID = 'USR6302';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Controle S44 - Wkl betaling  *
         WUG4CD = 'N';
           RMPAR = #1GWNB;
           NRS44 = 0;
           AANS44 = 0;
            //                    CALL 'S44003'
            //                    PARM           WUAPCF           AFD
            //                    PARM           RMPAR
            //                    PARM           WUG4CD
           //AFD
           S44003C(WUAPCF:RMPAR:WUG4CD:NRS44:AANS44);
             WUK7NE = NRS44;
           WUK8NE = AANS44;
            // CASE: WRK.switch23 is N
           If WUG4CD = 'N'; //*IF
              // CASE: WRK.Wrk aantal s44 open is 1
             If WUK8NE = 1; //*IF
                // Update datum aanbieding - S44 verblijfsbewijs  *
               CLEAR   AFRC;
     AFLFCJ = WUAPCF;
               AFQ9ND = WUK7NE; //S44 volgnr

               //Update datum aa
               //KEY: S44 verbli
               //WRK Naam
               //WRK Afdeling nr
               //WRK Lid nr

               LYY2E1R(W0RTN:AFRC:WQ0291:WQ0292:WQ0293);
                       If %Error();
                  // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LYY2E1R';
                  // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                 EXSR ZASNMS;
               Endif;
                // Error detected?
               If W0RTN <> *BLANK;
                 *In99 = *On;
               Endif;
             ELSE;
                // CASE: *OTHERWISE
                // Overzicht S44/C66 op INSZ - S44 verblijfsbewijs  *
               //Overzicht S44/C
               //S44 INSZ lid
               //S44 afd
               //S44 lidnr
               //WRK Naam

               LYY1DFR(W0RTN:WQ0294:WQ0295:WQ0296:WQ0297);
                       If %Error();
                  // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LYY1DFR';
                  // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                 EXSR ZASNMS;
               Endif;
                // Error detected?
               If W0RTN <> *BLANK;
                 *In99 = *On;
               Endif;
             Endif; //*FI
           Endif; //*FI
            // Controle S44 - Wkl betaling  *
         WUG4CD = 'N';
           RMPAR = #1GWNB;
           NRS44 = 0;
           AANS44 = 0;
            //                    CALL 'S44003'
            //                    PARM           WUAPCF           AFD
            //                    PARM           RMPAR
            //                    PARM           WUG4CD
           //AFD
           S44003C(WUAPCF:RMPAR:WUG4CD:NRS44:AANS44);
             WUK7NE = NRS44;
           WUK8NE = AANS44;
            // CASE: WRK.switch23 is N
           If WUG4CD = 'N'; //*IF
              // Send message 'S44/C66 niet in orde'
         ZAMSID = 'USR6205';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Cmd01 kalender automatisch of F1
            // CASE: WRK.Switch toelating Y/N is Y
           If WUYOCI = 'Y'; //*IF
              // Type kode = 01,09,... : oproepen kalender
              // CASE: WRK.Switch type betaalkalende is Y
             If WURZCJ = 'Y'; //*IF
               YRSW00 = 2;
               ZQ = 4;
               If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00007 OR ZQ > 00007;
         W0RTN = 'Y2U0510';
               ELSE;
                 WUWRK2 = %Subst(#1DOCD:ZQ:YRSW00); //Wrk veld 2 pos
     C   90              MOVEL     'Y2U0510'     W0RTN
               Endif;
                // Ophalen kalenderscherm type 01,...
                // CASE:
                //  - c1ORc2ORc3
                //   !- c1    : WRK.Switch berekening is 0
                //   !- c2    : WRK.switch sancties is 1
                //   !- c3    : WRK.Wrk F1 na F24 is 1
                //   '-
               If WUPSCD = '0' OR WUYRCI = '1' OR WUERCK = '1'; //*IF
                  // CASE:
                  //  - c1ANDc2
                  //   !- c1    : WRK.Wrk F1 oproepen is Y
                  //   !- c2    : WRK.Wrk f1 oproepen bis is N
                  //   '-
         Y0CX01 = '0';           // //1
                 If WUW8CI = 'Y'; //*IF
                   If WUFBCK = 'N'; //*IF
         Y0CX01 = '1';
                   Endif; //*FI
                 Endif; //*FI
                 If Y0CX01 = '1'; //*IF
         WUW8CI = 'N';                        // //Wrk F1 oproepen
                 Endif; //*FI
                  // F1 oproepen
                  // CASE:
                  //  - c1ORc2
                  //   !- c1    : DTL.*CMD key is CF01
                  //   !- c2    : WRK.Wrk F1 oproepen is Y
                  //   '-
                 If *IN01 = '1' OR WUW8CI = 'Y'; //*IF
         WUXICI = 'Y';                        // //Wrk F1 record v
                   ZQ = *ZERO;
                   WUCACO = #1AKNB + '' + #1FGNB; //Wrk veld 9 posi
                   ZQ = *ZERO;
                   WUAPCF = WUCACO + '' + #1FHNB; //Wrk veld 11 pos
                   WURHNC = #1GWNB; //Wrk number 6 A9
         WUW1CI = 'A';                        // //Wrk add/update
                   WUK6ND = 1; //Wrk volgnr kale
                    // Ophalen volgnr kalender - Wkl betaling  *
                   RMPAR = #1GWNB;
         HISTCD = 'D';           // //1
                    // Opvullen dagen 16 lang - Wkl betaling  *
         P01T16 = '00000000';          // //16
     EvalR   P01T16 = '00000000';
         P01T32 = P01T16;
     EvalR   P01T32 = P01T16;
     EvalR   DG0102 = #1GLNB;
     EvalR   DG0304 = #1GMNB;
     EvalR   DG0506 = #1G7NB;
     EvalR   DG0708 = #1JONB;
     EvalR   DG0910 = #1GNNB;
     EvalR   DG1112 = #1JLNB;
         DG1314 = *BLANK;
         DG1516 = *BLANK;
         DG1718 = *BLANK;
         DG1920 = *BLANK;
         DG2122 = *BLANK;
         DG2324 = *BLANK;
         DG2526 = *BLANK;
         DG2728 = *BLANK;
         DG2930 = *BLANK;
         DG3132 = *BLANK;
         WUXJCI = P01T32;
                    // Check bouwcode vnf10/2017 - Wkl betaling  *
         OUINON = 'N';           // //1
         BZBW = #1A4CD;             // //2
         WUS5CL = OUINON;
                    //          'L0DPUFR' DSPLY'ROSANNE'
                    //          WUGUCG    DSPLY'ROSANNE'                  MEERDERE UREN P
                    //          WUHHCM    DSPLY'ROSANNE'                  F1
                    //          WUDJNU    DSPLY'ROSANNE'                  TELLER
                    // Indien 2de keer F1 duwt bedrag BZ uitblanken
                    // CASE:
                    //  - c1ORc2ORc3ORc4ORc5ORc6ORc7ORc8ORc9ORc10
                    //   !- c1    : WRK.Switch bouw 102017 is Y
                    //   !- c2    : DTL.BZ kode is C
                    //   !- c3    : DTL.BZ kode is E
                    //   !- c4    : DTL.BZ kode is = I
                    //   !- c5    : DTL.BZ kode is NA
                    //   !- c6    : DTL.BZ kode is 29
                    //   !- c7    : DTL.BZ kode is 79
                    //   !- c8    : DTL.BZ kode is DA
                    //   !- c9    : DTL.BZ kode is FA
                    //   !- c10   : DTL.BZ kode is PA
                    //   '-
                   If WUS5CL = 'Y' OR #1A4CD = 'C' OR #1A4CD = 'E' OR #1A4CD = 'I' OR #1A4CD = 'NA'
                      // CASE: DTL.Bedrag BZ is > 0
                     If #1GYNB > *ZERO; //*IF
                        // CASE: DTL.Wie heeft BZ berekend ? is C
                       If #1BLCE = 'C'; //*IF
                         #1GYNB = 0; //Bedrag BZ
                       Endif; //*FI
                     Endif; //*FI
                   Endif; //*FI
                    // Update maandoverzicht - Maandoverzicht  *
                   CLEAR   AGRC;
     AGR7CH = WUAPCF;
                   AGPPDM = WURHNC; //Maandov RM
                   AGJ7ND = WUK6ND; //Maandov volgnr

                   //Update maandove
                   //KEY: Maandoverz
                   //Afdeling nr
                   //Lid nr
                   //Switch add
                   //Wrk afkomst kal
                   //Wrk dagen 32 la
                   //Wrk dtm laatste

                   LYT0E3R(W0RTN:AGRC:WQ0298:WQ0299:WQ0300:WQ0301:WQ0302:WQ0303);
                           If %Error();
                      // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LYT0E3R';
                      // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                     EXSR ZASNMS;
                   Endif;
                    // Error detected?
                   If W0RTN <> *BLANK;
                     *In99 = *On;
                   Endif;
         WUFACK = WUXJCI;                        // //Wrk 32 lang bis
                    // Uitsplitsen dagen na F1 - Wkl betaling  *
         P01T32 = WUXJCI;
     EvalR   #1GLNB = DG0102;
     EvalR   #1GMNB = DG0304;
     EvalR   #1G7NB = DG0506;
     EvalR   #1JONB = DG0708;
     EvalR   #1GNNB = DG0910;
     EvalR   #1JLNB = DG1112;
     EvalR   D1314N = DG1314;           // //2 0
     EvalR   D1516N = DG1516;           // //2 0
                   #1GTNB = D1516N / 2;
                   #1GTNB = #1GTNB + D1314N;
         PPPLST = WUXKCI;           // //8 0
                   If PPPLST <> 20991231;
                     #1AKDD = PPPLST;
                      // WKL3703
                   ELSE;
                     RMPARM = #1GWNB;
                     MDK222(WUKRCN:RMPARM:PP2LST);
                       If PP2LST <> 20991231;
                       #1AKDD = PP2LST;
                     ELSE;
                       #1AKDD = 20771231;
                     ENDIF;
                   ENDIF;
                   WUS3ND = 0;
     EvalR   WUS3ND = DG2122;
                   #DS3ND = 0;
     EvalR   #DS3ND = DG2122;
                    // Cmd24=Meerdere barema's
                    // CASE:
                    //  - c1ANDc2
                    //   !- c1    : WRK.Switch overgang barema is Y
                    //   !- c2    : DTL.Datum achterstal is >=201211
                    //   '-
         Y0CX01 = '0';           // //1
                   If WUR3CJ = 'Y'; //*IF
                     If #1GWNB >= 201211; //*IF
         Y0CX01 = '1';
                     Endif; //*FI
                   Endif; //*FI
                   If Y0CX01 = '1'; //*IF
                      // CASE: WRK.Wrk f24 gebruikt is N
                     If WUYBCJ = 'N'; //*IF
         WUZGCJ = #1MPCE;                        // //Wrk BD old
                     Endif; //*FI
                     WUGVNR = 0; //wrk bedrag resu
                      // Record bestaat? EEF - Wkl betaling meerdere bar  *
                     CLEAR   ABRC;
     ABAACD = #1AACD;
     ABAFNB = #1AFNB;
     ABRNCJ = WUWUBE;
                     ABQADM = #1GWNB; //Wkl bet meer RM
                     ABQBDM = WUZKNR; //Wkl bet meer IM

                     //Record bestaat?
                     //KEY: Wkl betali
                     //Wrk switch sche

         #1AACD = ABAACD;                        // //Afdeling nr
         #1AFNB = ABAFNB;                        // //Lid nr
         WUWUBE = ABRNCJ;                        // //Wkl bet meer be
                     #1GWNB = ABQADM; //Wkl bet meer RM
                     WUZKNR = ABQBDM; //Wkl bet meer IM

                           If %Error();
                        // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LZCUXFR';
                        // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                       EXSR ZASNMS;
                     Endif;
                      // Error detected?
                     If W0RTN <> *BLANK;
                       *In99 = *On;
                     Endif;
                     WUYEND = #1AKDT; //Wrk s04 beginda
                      // Betaling meerdere baremas - Wkl betaling meerdere bar  *
                     CLEAR   ACRC;
     ACAACD = #1AACD;
     ACAFNB = #1AFNB;
     ACRNCJ = WUWUBE;
                     ACQADM = #1GWNB; //Wkl bet meer RM
                     ACQBDM = WUZKNR; //Wkl bet meer IM

                     //Betaling meerde
                     //KEY: Wkl betali
                     //Wrk add/change/
                     //wrk bedrag resu
                     //WRK Type wkl. k
                     //Volgnr S04
                     //Wrk s04 beginda
                     //Wrk veld R6/HR6

                     LZCRE3R(W0RTN:ACRC:WQ0305:WQ0306:WQ0307:WQ0308:WQ0309:WQ0310);
                             If %Error();
                        // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LZCRE3R';
                        // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                       EXSR ZASNMS;
                     Endif;
                      // Error detected?
                     If W0RTN <> *BLANK;
                       *In99 = *On;
                     Endif;
                     #1HPNB = WUGVNR; //Bedrag wkl
                     #DGVNR = WUGVNR; //wrk bedrag resu
                      // CASE: DTL.Bedrag wkl is > 0
                     If #1HPNB > *ZERO; //*IF
         WUYBCJ = 'Y';                        // //Wrk f24 gebruik
                        // Opsplitsen dagen F24 naar - Wkl betaling  *
     EvalR   F24DGN = WUX1CJ;
     EvalR   #1GLNB = '00';
     EvalR   #1GMNB = '00';
     EvalR   #1GLNB = F24R6;
     EvalR   #1GMNB = F24HR6;
     EvalR   #1G7NB = '00';
     EvalR   #1JONB = '00';
     EvalR   #1G7NB = F24BV;
     EvalR   #1JONB = F24HBV;
     EvalR   #1GNNB = '00';
     EvalR   #1JLNB = '00';
     EvalR   #1GNNB = F24V;
     EvalR   #1JLNB = F24HV;
                        // Ophalen beslagen na F24 - Wkl betaling  *
     EvalR   O01 = #1DVCD;              // //3
                       CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
       *in50 = (%found() = *Off);
                       If NOT *In50;
                         If BOBVCD = 'B';
                       Endif;
                         #1GZNB = BOG9NB;
                       ENDIF;
     EvalR   O01 = #1DWCD;              // //3
                       CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
       *in50 = (%found() = *Off);
                       If NOT *In50;
                         If BOBVCD = 'B';
                       Endif;
                         #1G1NB = BOG9NB;
                       ENDIF;
     EvalR   O01 = #1DXCD;              // //3
                       CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
       *in50 = (%found() = *Off);
                       If NOT *In50;
                         If BOBVCD = 'B';
                       Endif;
                         #1G3NB = BOG9NB;
                       ENDIF;
     EvalR   O01 = #1DYCD;              // //3
                       CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
       *in50 = (%found() = *Off);
                       If NOT *In50;
                         If BOBVCD = 'B';
                       Endif;
                         #1G5NB = BOG9NB;
                       ENDIF;
     EvalR   O01 = #1EDCD;              // //3
                       CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
       *in50 = (%found() = *Off);
                       If NOT *In50;
                         If BOBVCD = 'B';
                       Endif;
                         #1HDNB = BOG9NB;
                       ENDIF;
     EvalR   O01 = #1EECD;              // //3
                       CHAIN (#1AACD:#1AFNB:O01) LVBOCPL1 ;
       *in50 = (%found() = *Off);
                       If NOT *In50;
                         If BOBVCD = 'B';
                       Endif;
                         #1HFNB = BOG9NB;
                       ENDIF;
         WUPFCD = '1';                        // //Switch bedrag W
                     Endif; //*FI
                      // Check Documenten - Documenten BD meerdere  *
                     EXSR SCRVGN;
                      // CASE: LCL.WRK record found is Yes
                     If YL0018 = 'Y'; //*IF
         #1MPCE = *BLANK;                        // //Wkl bet CDE vri
         #1MPCE = 'Y';                        // //Wkl bet CDE vri
                     ELSE;
                        // CASE: *OTHERWISE
         #1MPCE = *BLANK;                        // //Wkl bet CDE vri
                     Endif; //*FI
         WUZGCJ = #1MPCE;                        // //Wrk BD old
                   Endif; //*FI
         W0DCF = 'Y';                         // //*Defer confirm
                 Endif; //*FI
                  // F1 verplicht en er is geen record kalender : error
                  // CASE: WRK.Wrk F1 record verplicht is Y
                 If WUXICI = 'Y'; //*IF
                   ZQ = *ZERO;
                   WUCACO = #1AKNB + '' + #1FGNB; //Wrk veld 9 posi
                   ZQ = *ZERO;
                   WUAPCF = WUCACO + '' + #1FHNB; //Wrk veld 11 pos
                    // Contr of kalender in dagb - Wkl betaling  *
         WUW9CI = 'N';
                   RMPAR = #1GWNB;
                   MDK003(WUAPCF:RMPAR:WUW9CI);
                     If #1A1CD = '16' AND #1HPNB = 247.89;
         WUW9CI = 'Y';
                   ENDIF;
                    // CASE: WRK.wrk switch kalender ok is N
                   If WUW9CI = 'N'; //*IF
                      // Send message 'Er is geen kalender gereg'
         ZAMSID = 'USR6060';
                     EXSR ZASNMS;
                     *In99 = *On;

         WUAKCJ = 'Y';                        // //Switch cmd12
         WUPSCD = '0';                        // //Switch berekeni
                   ELSE;
                      // CASE: *OTHERWISE
                      // CASE:
                      //  - c1ANDc2ANDc3ANDc4ANDc5ANDc6ANDc7ANDc8
                      //   !- c1    : DTL.VD6 is = 0
                      //   !- c2    : DTL.HD6 is = 0
                      //   !- c3    : DTL.Volle dagen BV is = 0
                      //   !- c4    : DTL.Halve dagen BV is = 0
                      //   !- c5    : DTL.Volle dagen verlof is = 0
                      //   !- c6    : DTL.Halve dagen verlof is = 0
                      //   !- c7    : DTL.Bedrag wkl is = 0
                      //   !- c8    : DTL.Dagen kbf sanktie is = 0
                      //   '-
         Y0CX01 = '0';           // //1
                     If #1GLNB = *ZERO; //*IF
                       If #1GMNB = *ZERO; //*IF
                         If #1G7NB = *ZERO; //*IF
                           If #1JONB = *ZERO; //*IF
                             If #1GNNB = *ZERO; //*IF
                               If #1JLNB = *ZERO; //*IF
                                 If #1HPNB = *ZERO; //*IF
                                   If #1GXNB = *ZERO; //*IF
         Y0CX01 = '1';
                                   Endif; //*FI
                                 Endif; //*FI
                               Endif; //*FI
                             Endif; //*FI
                           Endif; //*FI
                         Endif; //*FI
                       Endif; //*FI
                     Endif; //*FI
                     If Y0CX01 = '1'; //*IF
                        // CASE: DTL.Geen bedrag wklh is Y
                       If #1BDST = 'Y'; //*IF
         WUAKCJ = 'Y';                        // //Switch cmd12
         WUKTCJ = 'Y';                        // //Switch blanko o
                       ELSE;
                          // CASE: *OTHERWISE
         WUFBCK = 'N';                        // //Wrk f1 oproepen
         WUAKCJ = 'N';                        // //Switch cmd12
                       Endif; //*FI
                     ELSE;
                        // CASE: *OTHERWISE
                        // controle na F1 kalender - Wkl betaling  *
         WUYCCJ = 'N';
         P01T32 = WUFACK;
     EvalR   F1R6 = DG0102;             // //2 0
     EvalR   F1HR6 = DG0304;            // //2 0
     EvalR   F1BV = DG0506;             // //2 0
     EvalR   F1HBV = DG0708;            // //2 0
     EvalR   F1V = DG0910;              // //2 0
     EvalR   F1HV = DG1112;             // //2 0
                       If #1GLNB <> F1R6;
         WUYCCJ = 'Y';
                       ENDIF;
                       If #1GMNB <> F1HR6;
         WUYCCJ = 'Y';
                       ENDIF;
                       If #1G7NB <> F1BV;
         WUYCCJ = 'Y';
                       ENDIF;
                       If #1JONB <> F1HBV;
         WUYCCJ = 'Y';
                       ENDIF;
                       If #1GNNB <> F1V;
         WUYCCJ = 'Y';
                       ENDIF;
                       If #1JLNB <> F1HV;
         WUYCCJ = 'Y';
                       ENDIF;
                        // CASE: WRK.Wijziging na f24 is Y
                       If WUYCCJ = 'Y'; //*IF
                          // Send message 'F1 gebruikt!'
         ZAMSID = 'USR6526';
                         EXSR ZASNMS;
                         *In99 = *On;

         WUPSCD = '0';                        // //Switch berekeni
                       Endif; //*FI
                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // CASE: WRK.switch er zijn afhoudinge is 1
           If WUAJCJ = '1'; //*IF
              // CASE: WRK.Switch cmd12 is Y
             If WUAKCJ = 'Y'; //*IF
                // CASE: DTL.Geen bedrag wklh is Y
               If #1BDST = 'Y'; //*IF
                  // CASE: WRK.wrk veld 5 posities user is BYPAS
                 If WUDTCC = 'BYPAS'; //*IF
                   WUGCNE = WUGCNE + 1; //Wrk teller inho
                    // CASE: WRK.Wrk teller inhoudingen is 1
                   If WUGCNE = 1; //*IF
                      // Send message 'Bijpassing --> bedrag wkl'
         ZAMSID = 'USR6689';
                     EXSR ZASNMS;
                     *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
                   Endif; //*FI
                 ELSE;
                    // CASE: *OTHERWISE
                   WUGCNE = WUGCNE + 1; //Wrk teller inho
                    // CASE: WRK.Wrk teller inhoudingen is 1
                   If WUGCNE = 1; //*IF
                      // Send message '.'
         ZAMSID = 'USR5917';
                     EXSR ZASNMS;
                     *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
                   ELSE;
                      // CASE: *OTHERWISE
                      // CASE: WRK.Wrk teller inhoudingen is 2
                     If WUGCNE = 2; //*IF
                     Endif; //*FI
                      // CASE: WRK.Wrk teller inhoudingen is >=3
                     If WUGCNE >= 3; //*IF
                        // Send message 'Er waren inhoudingen! duw'
         ZAMSID = 'USR6123';
                       EXSR ZASNMS;
                       *In99 = *On;

                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // wkl-785:niet controleren bij subberoep J,K,P,R,S,T,X==>ik zeg:bij
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Subberoep kode is blank
            //   !- c2    : DTL.Subberoep kode is I
            //   '-
           If #1BCCD = *BLANK OR #1BCCD = 'I'; //*IF
              // CASE: DTL.Datum achterstal is >=201211
             If #1GWNB >= 201211; //*IF
                // Overgang barema->zelf ber - Wkl betaling  *
               RMPAR = #1GWNB;
               DATIN1 = #1AEDT;
               DATIN2 = #1ADDT;
               DATIN3 = #1AHDT;
               DATIN4 = #1AKDT;
         WUR3CJ = 'N';
               //FOUTBERICHT
               MDCHK02(DATIN1:DATIN2:DATIN3:DATIN4:RMPAR:WUR3CJ);
                 If WUR3CJ = 'N';
                 //FOUTBERICHT
               MDCHK03(#1AACD:#1AFNB:#1DOCD:RMPAR:WUR3CJ);
                 ENDIF;
               If #1BDST = 'N';
         WUR3CJ = 'N';
               ENDIF;
                // Datum 1 2 3 wijzigt in loop der maand ==> zelf bdrg wklh invullen
                // CASE: WRK.Switch overgang barema is Y
               If WUR3CJ = 'Y'; //*IF
                  // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                 If WUPFCD <> '1'; //*IF
                    // Send message 'Overgang barema : zelf be'
         ZAMSID = 'USR6303';
                   EXSR ZASNMS;
                   *In99 = *On;

         WUERCK = '1';                        // //Wrk F1 na F24
                    // CASE: DTL.Geen bedrag wklh is Y
                   If #1BDST = 'Y'; //*IF
         WUPSCD = '1';                        // //Switch berekeni
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // Dat.forfait : zelf bedrag invullen bij overgang RM
                // CASE: WRK.sw datum forfait is 1
               If WUXGCD = '1'; //*IF
                  // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                 If WUPFCD <> '1'; //*IF
                    // Send message 'Overgang --> forfait'
                   ZAMSID = 'USR2097';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
                // Dat.1ste Per.B : zelf bedrag invullen bij overgang RM
                // CASE: WRK.sw datum 0-kode is 1
               If WUXHCD = '1'; //*IF
                  // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                 If WUPFCD <> '1'; //*IF
                    // Send message 'Overgang per1A->per1B'
                   ZAMSID = 'USR5262';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
                // Dat.2de Per.C : zelf bedrag invullen bij overgang RM
                // CASE: WRK.sw datum 40% is 1
               If WUXFCD = '1'; //*IF
                 YRSW00 = 2;
                 ZQ = 5;
                 If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00007 OR ZQ > 00007;
                   W0RTN = 'Y2U0510';
                 ELSE;
                   WUF1CH = %Subst(#1DOCD:ZQ:YRSW00); //Wrk pos56 barem
                 Endif;
                  // CASE:
                  //  - c1ORc2
                  //   !- c1    : WRK.Wrk pos56 barema is 1C
                  //   !- c2    : WRK.Wrk pos56 barema is 1B
                  //   '-
                 If WUF1CH = '1C' OR WUF1CH = '1B'; //*IF
                    // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
                   If WUPFCD <> '1'; //*IF
                      // Send message 'Overgang 2de periode 1C'
                     ZAMSID = 'USR5267';
                     EXSR ZASNMS;
                     *In99 = *On;

                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
                // overgang periode 1A naar 1B
                // CASE: WRK.Wrk pos6 barema is geen B
               If WUF4CH <> 'B'; //*IF
                  // CASE: WRK.Wrk pos5 barema is 1
                 If WUF3CH = '1'; //*IF
                   WUQJNC = #1AEDT / 100; //Maand om te tes
                    // CASE: WRK.Maand om te testen EQ DTL.Datum achterstal
                   If WUQJNC = #1GWNB; //*IF
                     WUQKNC = WUQJNC * 100; //Wrk datum 8 lan
                     WUQKNC = WUQKNC + 01; //Wrk datum 8 lan
                      // CASE: WRK.Wrk datum 8 lang testen EQ DTL.Datum OP-code
                     If WUQKNC = #1AEDT; //*IF
                        // Send message 'Overgang per1A->per1B'
                       ZAMSID = 'USR5262';
                       EXSR ZASNMS;
                       *In99 = *On;

                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Datum laatste stempel: verplichte zone als dagen<>maximum of nt i
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
             WUR5R5 = *ZERO; //wrk totaal R5
             WUR6R6 = *ZERO; //wrk totaal R6
             WUR5R5 = #1JLNB + #1JONB; //wrk totaal R5
             WUR5R5 = WUR5R5 + #1GHNB; //wrk totaal R5
             WUR5R5 = WUR5R5 / 2; //wrk totaal R5
             WUR5R5 = WUR5R5 + #1GGNB; //wrk totaal R5
             WUR5R5 = WUR5R5 + #1GNNB; //wrk totaal R5
             WUR5R5 = WUR5R5 + #1G7NB; //wrk totaal R5
             WUR5R5 = WUR5R5 + #1GXNB; //wrk totaal R5
             WUR5R5 = WUR5R5 + #1BBNR; //wrk totaal R5
             WUR6R6 = #1JLNB + #1JONB; //wrk totaal R6
             WUR6R6 = WUR6R6 + #1GMNB; //wrk totaal R6
             WUR6R6 = WUR6R6 / 2; //wrk totaal R6
             WUR6R6 = WUR6R6 + #1GLNB; //wrk totaal R6
             WUR6R6 = WUR6R6 + #1GNNB; //wrk totaal R6
             WUR6R6 = WUR6R6 + #1G7NB; //wrk totaal R6
             WUR6R6 = WUR6R6 + #1GXNB; //wrk totaal R6
             WUR6R6 = WUR6R6 + #1BBNR; //wrk totaal R6
             WUJYNG = #1JLNB + #1GMNB; //Wrk totaalR6 zo
             WUJYNG = WUJYNG / 2; //Wrk totaalR6 zo
             WUJYNG = WUJYNG + #1GLNB; //Wrk totaalR6 zo
             WUJYNG = WUJYNG + #1GNNB; //Wrk totaalR6 zo
              // Controle laatste stempel3 - Wkl betaling  *
             WUW202 = '0';           // //1            SWITCH202
             WUW252 = '0';           // //1            SWITCH252
             WUKOCN = '0';           // //1
             R6MX = 0;
             R5MX = 0;
             LST = 0; //L.STEMPEL
             DGLST = %Rem(#1AKDD:100);            // //2 0          DAG L.STEMPE
             C = %Rem(#1GWNB:100);                // //2 0
             WRKLS2 = #1AKDD;           // //8 0          L.STEMPEL
             USRP6 = ##USR;            // //6
              // WKL-3692 : BIJ USER BYPAS OOK CONTROLEREN OP LAATSTE STEMPEL
             If ##USR <> 'RVDS    ';
                //          WUDTCC    ANDNE'BYPAS'
               If WUR6R6 > 0;
                 *In50 = (%Lookup(#1GWNB:JJH:C) > 0);
     C  N50              GOTO      C1VER1
         R6MX = D6H(C);             // //2 0
                  //          WUR6R6    IFLT R6MX                       MAXR6
                 If WUR6R6 <> R6MX; //MAXR6
                   If #1AKDD = 0; //L.STEMP NT I
     EvalR   WUW202 = '1';
     C                   GOTO      GNTST
                   ELSE; //INGEVULD
         ZON6 = #1AKDD;             // //6 0          199504
                     EXSR ROUTLS;
                     If TSTLST = '1';
     C                   GOTO      GNTST
                     ENDIF;
                   Endif; //END L.STEMP
                 ELSE;
         ZON6 = #1AKDD;             // //6 0          199504
                   EXSR ROUTL2;
                   If TSTLST = '1';
     C                   GOTO      GNTST
                   ENDIF;
                 Endif; //END R6H,X
     C     C1VER1        TAG
                 *In50 = (%Lookup(#1GWNB:JJV:C) > 0);
     C  N50              GOTO      C1VER2
         R6MX = D6V(C);             // //2 0
                 If WUR6R6 <> R6MX; //MAXR6
                   If #1AKDD = 0; //L.STEMP NT I
     EvalR   WUW202 = '1';
     C                   GOTO      GNTST
                   ELSE; //INGEVULD
         ZON6 = #1AKDD;             // //6 0          199504
                     EXSR ROUTLS;
                     If TSTLST = '1';
     C                   GOTO      GNTST
                     ENDIF;
                   Endif; //END L.STEMP
                 ELSE;
         ZON6 = #1AKDD;             // //6 0          199504
                   EXSR ROUTL2;
                   If TSTLST = '1';
     C                   GOTO      GNTST
                   ENDIF;
                 Endif; //END R6V,X
     C     C1VER2        TAG
                 *In50 = (%Lookup(#1GWNB:JJK:C) > 0);
     C  N50              GOTO      GNTST
         R6MX = D6K(C);             // //2 0
                 If WUR6R6 <> R6MX; //MAXR6
                   If #1AKDD = 0; //L.STEMP NT I
     EvalR   WUW202 = '1';
     C                   GOTO      GNTST
                   ELSE; //INGEVULD
         ZON6 = #1AKDD;             // //6 0          199504
                     EXSR ROUTLS;
                     If TSTLST = '1';
     C                   GOTO      GNTST
                     ENDIF;
                   Endif; //END L.STEMP
                 ELSE;
         ZON6 = #1AKDD;             // //6 0          199504
                   EXSR ROUTL2;
                   If TSTLST = '1';
     C                   GOTO      GNTST
                   ENDIF;
                 Endif; //END R6K,X
     C                   GOTO      GNTST
               Endif; //R6>0
               If WUR5R5 > 0;
                 *In50 = (%Lookup(#1GWNB:JJH:C) > 0);
     C  N50              GOTO      C1VER3
     EvalR   R5MX = D6H(C);             // //2 0
                 If WUR5R5 <> R5MX; //MAXR5
                   If #1AKDD = 0; //L.STEMP NT I
     EvalR   WUW202 = '1';
     C                   GOTO      GNTST
                   ELSE; //INGEVULD
         ZON6 = #1AKDD;             // //6 0          199504
                     EXSR ROUTLS;
                     If TSTLST = '1';
     C                   GOTO      GNTST
                     ENDIF;
                   Endif; //END L.STEMPE
                 Endif; //DAGEN R5
     C     C1VER3        TAG
                 *In50 = (%Lookup(#1GWNB:JJV:C) > 0);
     C  N50              GOTO      C1VER4
     EvalR   R5MX = D6V(C);             // //2 0
                 If WUR5R5 <> R5MX; //MAXR5
                   If #1AKDD = 0; //L.STEMP NT I
     EvalR   WUW202 = '1';
     C                   GOTO      GNTST
                   ELSE; //INGEVULD
         ZON6 = #1AKDD;             // //6 0          199504
                     EXSR ROUTLS;
                     If TSTLST = '1';
     C                   GOTO      GNTST
                     ENDIF;
                   Endif;
                 Endif;
     C     C1VER4        TAG
                 *In50 = (%Lookup(#1GWNB:JJK:C) > 0);
     C  N50              GOTO      GNTST
     EvalR   R5MX = D6K(C);             // //2 0
                 If WUR5R5 <> R5MX; //MAXR5
                   If #1AKDD = 0; //L.STEMP NT I
     EvalR   WUW202 = '1';
     C                   GOTO      GNTST
                   ELSE; //INGEVULD
         ZON6 = #1AKDD;             // //6 0          199504
                     EXSR ROUTLS;
                     If TSTLST = '1';
     C                   GOTO      GNTST
                     ENDIF;
                   Endif; //END L.ST.=0
                 Endif; //END R5<MAXR5
               Endif; //R5>0
             Endif; //END RVDS/BYPAS
     C     GNTST         TAG
              //VNF 01/1997 OOK VR TYPES ZONDER DGN-->02,04,06,05 MOET L.STEMPEL ING WORD
              //WKL-3454
             If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06' OR #1A1CD = '05' OR #1A1CD = '21' OR
         ZON6 = #1AKDD;             // //6 0          199504
               EXSR ROUTLS;
             ENDIF; //02,04,06,05,21
             If #1AKDD > 0;
               MMLST = #1AKDD / 100; //MND L STEMP
               If MMLST <> #1GWNB;
         WUKOCN = '1';
               ENDIF;
             ENDIF;
              // WKL3704 : INDIEN EERSTE BETALING MOETEN ER DAGEN ZIJN INGEVULD
         TTTYYY = #1A1CD;           // //2
             DGRDBT = 0;
             //71,.. NT MEETELLEN
             //AFD
             //LIDNR
             //REF.MND
             //TYPE WKL
             //TOTAAL REEDS BETAALD
         WULECN = '0';           // //1
             If DGRDBT = 0; //NOG NIETS BETAALD
         WULECN = '1';                        // //VOOR DIT TYPE WKL
             ENDIF;
              //---------------------------------------------------------------
         WULQCN = 'N';                        // //switch type53 b
              // CASE: DTL.Type wklh. kode is 53
             If #1A1CD = '53'; //*IF
                // CASE: DTL.Barema RVAkode is ..ICL..
               If #1DOCD = @CN(008); //*IF
         WULQCN = 'Y';                        // //switch type53 b
               Endif; //*FI
             Endif; //*FI
              // CASE:
              //  - c1ORc2ORc3ORc4ORc5ORc6ORc7ORc8ORc9ORc10ORc11ORc12ORc13ORc14
              //   !- c1    : DTL.BZ kode is FZ
              //   !- c2    : DTL.BZ kode is PZ
              //   !- c3    : DTL.BZ kode is VZ
              //   !- c4    : DTL.BZ kode is PZ
              //   !- c5    : DTL.BZ kode is M
              //   !- c6    : DTL.BZ kode is M1
              //   !- c7    : DTL.BZ kode is 35
              //   !- c8    : DTL.BZ kode is 85
              //   !- c9    : DTL.Type wklh. kode is 24 : wisselkoerstoeslag
              //   !- c10   : DTL.Type wklh. kode is 29 = werkhervatting
              //   !- c11   : DTL.Type wklh. kode is 50
              //   !- c12   : DTL.Type wklh. kode is 51
              //   !- c13   : DTL.Type wklh. kode is 52
              //   !- c14   : WRK.switch type53 bar ..ICL.. is Y
              //   '-
             If #1A4CD = 'FZ' OR #1A4CD = 'PZ' OR #1A4CD = 'VZ' OR #1A4CD = 'PZ' OR #1A4CD = 'M' OR
                // CASE: DTL.Wkl datum laatste stempel is ingevuld
               If #1AKDD > 0; //*IF
                  // Send message 'Laatste stempel moet 0 zi'
         ZAMSID = 'USR7499';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE:
                //  - c1ORc2ORc3
                //   !- c1    : WRK.wrk totaal R6 is > 0
                //   !- c2    : DTL.Bedrag wkl is > 0
                //   !- c3    : DTL.Bedrag BZ is > 0
                //   '-
               If WUR6R6 > 0 OR #1HPNB > *ZERO OR #1GYNB > *ZERO; //*IF
                  // CASE: DTL.Wkl datum laatste stempel is niet ingevuld
                 If #1AKDD = *ZERO; //*IF
                    // Setup message data for message
                    // Convert Wkl datum laatste stempel to external.

                   UIDTD2 = #1AKDD;
                   UDTDC2 = UDTD12;
                   UDTDY2 = UDTD22;
                   UDTDM2 = UDTD32;
                   UDTDD2 = UDTD42;
                   ZA0083 = UEDTD2;
                    // Send message 'Datum laatste stempel inv'
         ZAMSID = 'USR1759';
                   EXSR ZASNMS;
                   *In99 = *On;

                    // *Set Cursor: DTL.Wkl datum laatste stempel  (*Override=*NO)
                   W0ROW1 = 020;
                   W0COL1 = 072;
         W0OVR1 = '0';                        // //*NO
                 Endif; //*FI
                  // CASE: WRK.Switch laatste stempel RM is 1
                 If WUKOCN = '1'; //*IF
                    // Setup message data for message
                    // Convert Wkl datum laatste stempel to external.

                   UIDTD2 = #1AKDD;
                   UDTDC2 = UDTD12;
                   UDTDY2 = UDTD22;
                   UDTDM2 = UDTD32;
                   UDTDD2 = UDTD42;
                   ZA0084 = UEDTD2;
                    // Send message 'Laatste stempel refertem'
         ZAMSID = 'USR7455';
                   EXSR ZASNMS;
                   *In99 = *On;

                    // *Set Cursor: DTL.Wkl datum laatste stempel  (*Override=*NO)
                   W0ROW1 = 020;
                   W0COL1 = 072;
         W0OVR1 = '0';                        // //*NO
                 Endif; //*FI
               Endif; //*FI
                // Sw202=1 : Datum laatste stempel invullen
                // CASE: WRK.Switch202 is 1
               If WUW202 = '1'; //*IF
                  // Setup message data for message
                  // Convert Wkl datum laatste stempel to external.

                 UIDTD2 = #1AKDD;
                 UDTDC2 = UDTD12;
                 UDTDY2 = UDTD22;
                 UDTDM2 = UDTD32;
                 UDTDD2 = UDTD42;
                 ZA0085 = UEDTD2;
                  // Send message 'Datum laatste stempel inv'
         ZAMSID = 'USR1759';
                 EXSR ZASNMS;
                 *In99 = *On;

                  // *Set Cursor: DTL.Wkl datum laatste stempel  (*Override=*NO)
                 W0ROW1 = 020;
                 W0COL1 = 072;
         W0OVR1 = '0';                        // //*NO
               Endif; //*FI
                // CASE:
                //  - c1ORc2
                //   !- c1    : DTL.Type wklh. kode is 54
                //   !- c2    : DTL.Type wklh. kode is 55
                //   '-
               If #1A1CD = '54' OR #1A1CD = '55'; //*IF
                  // CASE: DTL.Wkl datum laatste stempel GT WRK.S36 datum tot
                 If #1AKDD > WUX8ND; //*IF
                    // Send message 'LaatsteStempel>einddtmS36'
         ZAMSID = 'USR7509';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
                // CASE:
                //  - c1ANDc2
                //   !- c1    : DTL.Type wklh. kode is 53
                //   !- c2    : DTL.Barema RVAkode is ..ICLD.
                //   '-
         Y0CX01 = '0';           // //1
               If #1A1CD = '53'; //*IF
                 If #1DOCD = @CN(003); //*IF
         Y0CX01 = '1';
                 Endif; //*FI
               Endif; //*FI
               If Y0CX01 = '1'; //*IF
                  // CASE: DTL.Wkl datum laatste stempel GT WRK.S36 datum tot
                 If #1AKDD > WUX8ND; //*IF
                    // Send message 'LaatsteStempel>einddtmS36'
         ZAMSID = 'USR7509';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
              // Sw252=1 : Dagen R6/R5 > dagen van datum laatste stempel
              // CASE: WRK.Switch252 is 1
             If WUW252 = '1'; //*IF
                // Setup message data for message
                // Convert Wkl datum laatste stempel to external.

               UIDTD2 = #1AKDD;
               UDTDC2 = UDTD12;
               UDTDY2 = UDTD22;
               UDTDM2 = UDTD32;
               UDTDD2 = UDTD42;
               ZA0086 = UEDTD2;
                // Send message 'Dagen R6/R5 groter dan da'
         ZAMSID = 'USR2526';
               EXSR ZASNMS;
               *In99 = *On;

                // *Set Cursor: DTL.Wkl datum laatste stempel  (*Override=*NO)
               W0ROW1 = 020;
               W0COL1 = 072;
         W0OVR1 = '0';                        // //*NO
             Endif; //*FI
           Endif; //*FI
            // Type 00 : omzetting dagen wklh/KBF --> dagen BZ=0
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6
            //   !- c1    : DTL.Type wklh. kode is 00 : niet toelaatbaar
            //   !- c2    : DTL.Type wklh. kode is 71 :vrijwillig wklh
            //   !- c3    : DTL.Type wklh. kode is 72 :blijv.onmogelijkheid
            //   !- c4    : DTL.Type wklh. kode is 73 :in afwachting E301
            //   !- c5    : DTL.Type wklh. kode is 97
            //   !- c6    : DTL.Type wklh. kode is 70 :nt ingaan op uitnodig
            //   '-
           If #1A1CD = '00' OR #1A1CD = '71' OR #1A1CD = '72' OR #1A1CD = '73' OR #1A1CD = '97' OR #
              // Omzetting dagen type 00 - Wkl betaling  *
              //20 VD6+5 HD6-->EERST DGN OMZETTEN IN HULPZONE(=DELWKL) --> DELWKL=22,50
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB;
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //                    Z-ADD#1GXNB    XXKBF
             HVVOR = 0; //VORSTDGN=0
             HHVOR = 0; //HVORST=0
             HVBZ = 0; //VORSTDGN=0
             HHBZ = 0; //HVORST=0
             HBEDBZ = 0;
             DELBZ = 0;
           Endif; //*FI
            // Type kode=01/11 : Omzetting dgn wklh-->dgn BZ (gn dok of rivierar
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Type wklh. kode is 01 : volledig werkloos
            //   !- c2    : DTL.Type wklh. kode is 11 : beroepsopleiding
            //   '-
           If #1A1CD = '01' OR #1A1CD = '11'; //*IF
              // CASE: DTL.BZ kode is C2
             If #1A4CD = 'C2'; //*IF
         WUS5CL = 'N';                        // //Switch bouw 102
             Endif; //*FI
              // CASE: DTL.Beroep kode is Nt 09 : geen dok A'pen
             If #1BACD <> '09'; //*IF
                // Omz dgn-->BZ:type01 gndok - Wkl betaling  *
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
               HVD6 = #1GLNB;
               HHD6 = #1GMNB;
               HVVERL = #1GNNB;
               HHVERL = #1JLNB;
               HVBV = #1G7NB;
               HHBV = #1JONB;
               DELWKL = #1GMNB / 2;
               DELWKL = DELWKL + #1GLNB;
               DELVER = #1JLNB / 2;
               DELVER = DELVER + #1GNNB;
               DELWKL = DELWKL + DELVER;
               HVTOT6 = #1GLNB + #1GNNB;
               HHTOT6 = #1GMNB + #1JLNB;
               DELBV = #1JONB / 2;
               DELBV = DELBV + #1G7NB;
               DELWK2 = DELWKL + DELBV;
               HVAL6 = HVTOT6 + #1G7NB;
               HHAL6 = HHTOT6 + #1JONB;
               If #1AACD = '29' AND #1AFNB = '183475';
                 DSPLY ('LVMUUFR') 'ROSANNE';
                 DSPLY ('HVTOT6') 'ROSANNE';
                 DSPLY (HVTOT6) 'ROSANNE';
                 DSPLY ('WUS5CL') 'ROSANNE';
                 DSPLY (WUS5CL) 'ROSANNE';
               ENDIF;
                //***************************************************************
               If #1BCCD <> 'P'; //SUBBEROEP <>P
                 If #1A4CD <> *BLANK; //BZ KODE NT
                    // IS KODE BZ = B --> GN VORSTDAGEN SINDS 1/10/91
                   HVVOR = 0; //VORSTDGN=0
                   HHVOR = 0; //HVORST=0
                    // BZ-DAGEN --> HULPZONES ALS DE DAGEN  OPGEGEVEN WERDEN
                   If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN=0
                     HVBZ = #1GPNB; //VORSTDGN=0
                     HHBZ = #1JNNB; //HVORST=0
                   Endif;
                    //IS BZ=A,NA,Z & DGN WKL<15 DAN MOETEN DGN EN BEDR BZ INGEV. ZIJN
                   If #1A4CD = 'A ' OR #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'M1' OR #1A4CD = '

                     If #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'M1' OR #1A4CD = '35';
                       DELWKL = HHBZ / 2;
                       DELWKL = DELWKL + HVBZ;
                       DELBZ = HHBZ / 2;
                       DELBZ = DELBZ + HVBZ;
                     ENDIF;
                     If #1A4CD = 'NA' OR #1A4CD = 'FA' OR #1A4CD = 'FS' OR #1A4CD = '29';
                       If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN=0
                         HVBZ = #1GPNB; //VORSTDGN=0
                         HHBZ = #1JNNB; //HVORST=0
                       ELSE;
                         HVBZ = HVTOT6; //BZDGN=0
                         HHBZ = HHTOT6; //HBZ=0
                       Endif;
                       DELBZ = HHBZ / 2;
                       DELBZ = DELBZ + HVBZ;
                     ENDIF;

                     If #1BCST = 'Y'; //DGN/BZ=Y
                       METACH = #1GWNB;
                       METDGN = 99;

                        //          DELWKL    IFLT METDGN
                       METAALD(METACH:METDGN);
                         If DELBZ < METDGN;
                         If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                         Endif;
                         If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                         Endif;
                         If #1A4CD = 'NA' OR #1A4CD = 'FA' OR #1A4CD = 'FS' OR #1A4CD = '29' OR #1A4
         WUKVCD = '0';                        // //SWITCH47
                         ENDIF;
                       Endif; //END METDGN
                     Endif; //BZ=Y

                   Endif; //END A,NA,Z
                    // BZ-DAGEN BEPALEN ALS DE DAGEN NIET OPGEGEVEN WERDEN
                   If #1AACD = '29' AND #1AFNB = '183475';
                     DSPLY ('LVMUUFR') 'ROSANNE';
                     DSPLY ('#1GPNB') 'ROSANNE';
                     DSPLY (#1GPNB) 'ROSANNE';
                     DSPLY (#1JNNB) 'ROSANNE';
                     DSPLY (#1GWNB) 'ROSANNE';
                     DSPLY (BYAUDM) 'ROSANNE';
                   ENDIF;
                   If #1GPNB = *ZERO AND #1JNNB = *ZERO; //BZDGN=0
                      // BZ DAGEN BOUW (KREDIETDAGEN)
                      //          #1A4CD    IFEQ 'B '                       BZ=B
                     If WUS5CL = 'Y' AND #1GWNB >= BYAUDM; //BZ=B
                       HVBZ = HVTOT6; //BZDGN=0
                       HHBZ = HHTOT6; //HBZ=0
                     Endif; //END KOD BZ=B
                     If #1AACD = '29' AND #1AFNB = '183475';
                       DSPLY ('LVMUUFR') 'ROSANNE';
                       DSPLY ('HVBZ HHB') 'ROSANNE';
                       DSPLY (HVBZ) 'ROSANNE';
                       DSPLY (HHBZ) 'ROSANNE';
                     ENDIF;
                      // BZ = H OF KH : HOUT EN STOFFERING --> BZ-DAGEN = WKLHDAGEN
                      // IDEM METAAL BZ=C (CONTROLE MET KREDIET GEBEURT LATER)
                     If #1A4CD = 'I ' OR #1A4CD = 'SC' OR #1A4CD = 'BA'; //BZ=HOUT EN
                       If WUJRJR = WUJRRR; //HUIDIG JAAR
                         HVBZ = HVTOT6; //BZDGN=VD6
                         HHBZ = HHTOT6; //HBZ=HD6
                       Endif; //END HUID JR
                     Endif; //END BZ=H/KH
                      //VNF12/2004 OOK BZ=E=FM61 ERBIJ VR VW OMWILLE VAN IBO DEELT.BEROEPSOPL.,
                      //KRIJGEN TYPE01/11 MAAR V H FONDS EEN FM61=>E MOET VNF122004 MET TYPE01/11
                     If #1A4CD = 'C ' OR #1A4CD = 'E ' OR #1A4CD = 'CS' OR #1A4CD = 'ES'; //BZ=METAA
                       If #1BCST <> 'N'; //BEDRAG BZ<>N
                         HVBZ = HVTOT6; //BZDGN=VD6
                         HHBZ = HHTOT6; //HBZ=HD6
                       ELSE; //GN BZ UITB
                         HVBZ = 0; //BZDGN=VD6
                         HHBZ = 0; //HBZ=HD6
                       ENDIF;
                     Endif; //END BZ=H/KH

                   Endif; //DAGEN BZ=0
                    //**  EINDE BZ DAGEN NIET INGEVULD
                    //**  IS BZ BEDRAG INGEVULD
                   If #1GYNB <> *ZERO; //BZ BEDRAG=0
                     HBEDBZ = #1GYNB;
                   Endif; //END BEDR =0
                    //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN (REF.MND=IND.MND)
                   If #1GWNB = BYEENB; //ACHT=WKLMAAN
                     DELBZ = HHBZ / 2;
                     DELBZ = DELBZ + HVBZ;
                     If DELBZ > BYEANB; //DGNBZ>MAX BZ
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                     Endif; //DUS <=MAX BZ
                   Endif; //END DATUM AC

                 Endif; //END BZ NT BL
               ENDIF; //END SUBBEROEP<>P
                // Sw43=1:dagen BZ>maximum
                // CASE: WRK.Switch43 is 1
               If WUJKCD = '1'; //*IF
                  // Setup message data for message
                 ZA0087 = #1GLNB; //VD6
                 ZA0088 = #1GMNB; //HD6
                 ZA0089 = #1JLNB; //Halve dagen ver
                 ZA0090 = #1GNNB; //Volle dagen ver
                  // Send message 'Dagen BZ>maximum'
         ZAMSID = 'USR0365';
                 EXSR ZASNMS;
                 *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
                // Sw47=1;:zelf dagen en bedrag opgeven
                // CASE: WRK.Switch47 is 1
               If WUKVCD = '1'; //*IF
                  // Setup message data for message
                 ZA0091 = #1JNNB; //Halve dagen BZ
                 ZA0092 = #1GYNB; //Bedrag BZ
                 ZA0093 = #1GPNB; //Volle dagen BZ
                  // Send message 'zelf dagen & bedrag opgev'
         ZAMSID = 'USR0366';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Type kode = 03 : Omzetting dgn wklh --> dgn BZ
            // CASE: DTL.Type wklh. kode is 03 :vrijw.deeltijds 171.9
           If #1A1CD = '03'; //*IF
              // CASE: DTL.BZ kode is C2
             If #1A4CD = 'C2'; //*IF
         WUS5CL = 'N';                        // //Switch bouw 102
             Endif; //*FI
              // Omz dgn-->BZ dgn : type03 - Wkl bet  *
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
             HHD6 = #1GMNB;
             HHVERL = #1JLNB;
             HHBV = #1JONB;
             HHTOT6 = #1GMNB + #1JLNB;
             HHAL6 = HHTOT6 + #1JONB;

             If #1BCCD <> 'P'; //SUBBEROEP NIET P
               If #1A4CD <> *BLANK; //BZ NT BLANK
                  //***************************************************************
                  // HALVE BZ-DAGEN --> HULPZONES ALS DE DAGEN OPGEGEVEN WERDEN
                 If #1JNNB <> *ZERO; //HBZ NT 0
                   HHBZ = #1JNNB;
                 Endif;
                  //***************************************************************
                  // HALVE BZ-DAGEN BEPALEN ALS DE DAGEN NIET OPGEGEVEN WERDEN
                 If #1JNNB = *ZERO; //HBZ=0
                    //***************************************************************
                    // IS KODE BZ = B EN VORSTDAGEN INGEVULD --> BESTAAT NT MEER
                    //          #1A4CD    IFEQ 'B '                       KODE BZ=B
                   If WUS5CL = 'Y' AND #1GWNB >= BYAUDM; //KODE BZ=B
                     HHVOR = 0;
                     HHBZ = HHTOT6;
                   Endif; //END KOD BZ=B
                    //***************************************************************
                    // BZ= HOUT EN STOFFERING --> HALVE BZ-DAGEN = HALVE WKLHDAGEN
                    // IDEM METAAL BZ=E (CONTROLE MET KREDIET GEBEURT LATER)
                   If #1A4CD = 'I ' AND WUJRJR = WUJRRR; //BZ=HOUT EN
                     HHBZ = HHTOT6; //HBZ=HD6
                   Endif; //END BZ=I/KH
                   If #1A4CD = 'E ' OR #1A4CD = 'ES'; //METAAL
                     If #1BCST <> 'N'; //BZ BEDRAG<>N
                       HHBZ = HHTOT6; //HBZ=HD6
                     ELSE;
                       HHBZ = 0;
                     ENDIF;
                   Endif; //END BZ=E

                 Endif; //HBZ=0
                  //**  EINDE HALVE BZ DAGEN NIET INGEVULD
                  //IS BZ=METAAL. BZ=VA,DA,Z1 VANAF 15 DGN WKLH HEBBEN DEZE EEN VAST MAANDBDR
                  //IS DGN WKLH<15,DAN MOETEN BZ-DGN EN BZ BEDRAG ZELF INGEVULD WORDEN
                  // BZ-DGN NT INGEVULD
                 If #1A4CD = 'VA' OR #1A4CD = 'Z1' OR #1A4CD = 'M1' OR #1A4CD = 'DA' OR #1A4CD = 'PA
                   HHHHBZ = HHTOT6;
                   If #1A4CD = 'Z1' OR #1A4CD = 'M1' OR #1A4CD = '85';
                     HHHHBZ = HHBZ;
                   ENDIF;
                   If #1A4CD = 'PA' OR #1A4CD = 'PS';
                     If #1JNNB <> *ZERO; //HBZ=0
                       HHBZ = #1JNNB; //HVORST=0
                     ELSE;
                       HHBZ = HHTOT6; //HBZ=0
                     Endif;
                     HHHHBZ = HHBZ;
                   ENDIF;

                   If #1BCST = 'Y'; //DGN/BZ=Y

                     METACH = #1GWNB;
                     METDGN = 99;

                     METAALD(METACH:METDGN);
                       If HHHHBZ < METDGN;
                       If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                       If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                       If #1A4CD = 'PA' OR #1A4CD = 'PS' OR #1A4CD = 'M ' OR #1A4CD = 'M1' OR #1A4CD
     EvalR   WUKVCD = '0';                        // //SWITCH47
                       ENDIF;
                     Endif; //END METDGN

                   Endif; //BZ=Y

                 Endif; //BZ=VA OF Z1
                  //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN  (REF.MND=IND.MND)
                 If #1GWNB = BYEENB; //ACHT=WKLMAAN
                   DELBZ = HHBZ / 2;
                   If DELBZ > BYEANB; //DGNBZ>MAX BZ
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                   Endif; //DUS <=MAX BZ
                 Endif; //END DATUM AC

               Endif; //END BZ NT BL
             Endif; //END SUBBEROEP<>P
              // Sw43=1:dagen BZ>maximum
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0094 = #1GMNB; //HD6
               ZA0095 = #1JLNB; //Halve dagen ver
                // Send message 'Dagen BZ>maximum type03'
         ZAMSID = 'USR0496';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // SW47=1:zelf dagen en bedragen opgeven
              // CASE: WRK.Switch47 is 1
             If WUKVCD = '1'; //*IF
                // Setup message data for message
               ZA0096 = #1JNNB; //Halve dagen BZ
               ZA0097 = #1GYNB; //Bedrag BZ
                // Send message 'Zelf dgn&bedr opg. type03'
         ZAMSID = 'USR0497';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Type kode = 08 : Omzetting dgn wklh --> geen BZ
            // CASE: DTL.Type kode is 08 : E303 invoerrecht
           If #1A1CD = '08'; //*IF
              // Omzetting dagen : type 08 - Wkl bet  *
              //20 VD6+5 HD6 -->EERST DAGEN OMZETTEN IN EEN HUKPZONE==> DELWKL=22,5
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB;
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //** BZ-KODE INGEVULD --> MOVE VAN 0 NAAR BZ DAGEN EN BEDRAG BZ
             If #1A4CD <> *BLANK; //KODE BZ INGE
               HVVOR = 0; //VORSTDGN=0
               HHVOR = 0; //HVORST=0
     EvalR   #1GONB = 0;                        // //VORSTDGN=0
     EvalR   #1JMNB = 0;                        // //HVORST=0
               HVBZ = 0; //BZ=0
               HHBZ = 0; //HBZ=0
               HBEDBZ = 0;
     EvalR   #1GYNB = 0;                        // //BEDR BZ = 0
     EvalR   #1GPNB = 0;                        // //BZDGN=0
     EvalR   #1JNNB = 0;                        // //H BZDGN =0
             Endif; //END BZ NT BL
           Endif; //*FI
            // Type kode = 09 : omzetting dgn wklh --> dgn BZ
            // CASE: DTL.Type kode is 09 : conv brugp voltijds
           If #1A1CD = '09'; //*IF
              // Omz. dgn-->BZ:type09 - Wkl bet  *
              //20 VD6+5 HD6 --> EERST DAGEN OMZETTEN IN EEN HULPZONE-->DELWKL=22,5
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB; //VD6+HD6/2
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //*** IS KODE BZ NIET BLANK
             If #1A4CD <> *BLANK;
                //***************************************************************
                // IS KODE BZ = B ,VORSTDAGEN EN BZ-DAGEN BESTAAN NIET
                // IS KODE BZ=H/KH/I (HOUT&STOFFERING) : GEEN BZ DAGEN
         OUINON = 'N';           // //1
         BZBW = #1A4CD;             // //2
               MDBW001(BZBW:OUINON);
                 If #1A4CD = 'B ' OR #1A4CD = 'H ' OR #1A4CD = 'I ' OR OUINON = 'Y';
                 HVVOR = 0; //VORST=0
                 HHVOR = 0; //HVORST=0
                 HVBZ = 0; //BZ=0
                 HHBZ = 0; //HBZ=0
               Endif; //BZ=B/H/KH
                //***************************************************************
                // BZ-DAGEN --> HULPZONES ALS DE DAGEN OPGEGEVEN WERDEN
               If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN NT 0
                 If #1A4CD <> 'H ' AND #1A4CD <> 'I ' AND #1A4CD <> 'B ' AND OUINON <> 'Y'; //KODE B
                   HVBZ = #1GPNB; //BZ=0
                   HHBZ = #1JNNB; //HBZ=0
                 Endif;
               ELSE;
                 If #1A4CD <> 'H ' AND #1A4CD <> 'I ' AND #1A4CD <> 'B ' AND OUINON <> 'Y'; //KODE B
                   HVBZ = HVTOT6; //BZDGN=0
                   HHBZ = HHTOT6; //HBZ=0
                 ENDIF;
               Endif;
                //BZ=METAAL.KODES BZ=A,NA,Z VANAF 15 DGN WKLH HEBBEN DEZE EEN VAST MAANDBDR
                //IS DGN WKLH<15 DAN BZ DGN EN BEDRAG ZELF INVULLEN
               If #1A4CD = 'A ' OR #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'M1' OR #1A4CD = 'NA'

                 If #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'M1' OR #1A4CD = '35';
                   DELWKL = HHBZ / 2;
                   DELWKL = DELWKL + HVBZ;
                   DELBZ = HHBZ / 2;
                   DELBZ = DELBZ + HVBZ;
                 ENDIF;
                 If #1A4CD = '29' OR #1A4CD = 'NA';
                   DELBZ = HHBZ / 2;
                   DELBZ = DELBZ + HVBZ;
                 ENDIF;

                 If #1BCST = 'Y'; //DGN/BZ=Y
                   METACH = #1GWNB;
                   METDGN = 99;

                   METAALD(METACH:METDGN);
                     If DELBZ < METDGN;
                     If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                     Endif;
                     If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                     Endif;
                     If #1A4CD = 'NA' OR #1A4CD = '29' OR #1A4CD = 'M ' OR #1A4CD = 'M1' OR #1A4CD =
         WUKVCD = '0';                        // //SWITCH47
                     ENDIF;
                   Endif; //END METDGN
                 Endif; //BZ=Y

               Endif; //BZ=A OF Z
                //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN (REF.MND=IND.MND)
               If #1GWNB = BYEENB; //ACHT=WKLMAAN
                 DELBZ = HHBZ / 2;
                 DELBZ = DELBZ + HVBZ;
                 If DELBZ > BYEANB; //DGNBZ>MAX BZ
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                 Endif; //DUS <=MAX BZ
               Endif; //END DATUM AC

             Endif; //END BZ NT BL
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0098 = #1GLNB; //VD6
               ZA0099 = #1GMNB; //HD6
               ZA0100 = #1JLNB; //Halve dagen ver
               ZA0101 = #1GNNB; //Volle dagen ver
                // Send message 'Dagen BZ>maximum'
         ZAMSID = 'USR0365';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: JOB.*USER is RVDS
             If ##USR = 'RVDS'; //*IF
         WUKVCD = '0';                        // //Switch47
             Endif; //*FI
              // CASE: DTL.Geen dagen/bedrag BZ is Y
             If #1BCST = 'Y'; //*IF
                // CASE: WRK.Switch47 is 1
               If WUKVCD = '1'; //*IF
                  // Setup message data for message
                 ZA0102 = #1JNNB; //Halve dagen BZ
                 ZA0103 = #1GYNB; //Bedrag BZ
                 ZA0104 = #1GPNB; //Volle dagen BZ
                  // Send message 'zelf dagen & bedrag opgev'
         ZAMSID = 'USR0366';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Type kode = 10 : omzetting dgn wklh --> dgn BZ
            // CASE: DTL.Type kode is 10 : conv brugp deeltijds
           If #1A1CD = '10'; //*IF
              // Omz dgn-->dgn BZ : type10 - Wkl betaling  *
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
             HHD6 = #1GMNB;
             HHVERL = #1JLNB;
             HHBV = #1JONB;
             HHTOT6 = #1GMNB + #1JLNB;
             HHAL6 = HHTOT6 + #1JONB;

             If #1A4CD <> *BLANK; //BZKODE INGEV
                //***************************************************************
                // IS KODE BZ = B ,VORSTDAGEN EN BZ-DAGEN BESTAAN NIET
                // IS KODE BZ=H/KH (HOUT&STOFFERING) : GEEN BZ DAGEN
               If #1A4CD = 'B ' OR #1A4CD = 'H ' OR #1A4CD = 'I '; //KODE BZ=B
                 HVVOR = 0; //VORST=0
                 HHVOR = 0; //HVORST=0
                 HVBZ = 0; //BZ=0
                 HHBZ = 0; //HBZ=0
               Endif; //END KOD BZ=B
                // BZ-DAGEN --> HULPZONES ALS DE DAGEN OPGEGEVEN WERDEN
               If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN=0
                 If #1A4CD <> 'B ' AND #1A4CD <> 'H ' AND #1A4CD <> 'I ';
                   HVBZ = #1GPNB;
                   HHBZ = #1JNNB;
                 Endif;
               ELSE;
                 If #1A4CD <> 'H ' AND #1A4CD <> 'I ' AND #1A4CD <> 'B '; //KODE BZ=H
                   HVBZ = HVTOT6; //BZDGN=0
                   HHBZ = HHTOT6; //HBZ=0
                 ENDIF;
               Endif;
                //IS BZ=METAAL BZ=A,NA,Z VANAF 15 HALVE DGN WKLH --> VAST MAANDBEDRAG
                //IS HALVE DGN<15 OF BEDR BZ=0, DAN HALVE BZ DGN EN BDRG ZELF INVULLEN
               If #1A4CD = 'VA' OR #1A4CD = 'Z1' OR #1A4CD = 'M1' OR #1A4CD = 'DA' OR #1A4CD = 'PA'
                 HHHHBZ = HHTOT6;
                 If #1A4CD = 'Z1' OR #1A4CD = 'M1' OR #1A4CD = '85' OR #1A4CD = '79' OR #1A4CD = 'DA
                   HHHHBZ = HHBZ;
                 ENDIF;

                 If #1BCST = 'Y'; //DGN/BZ=Y
                   METACH = #1GWNB;
                   METDGN = 99;

                   METAALD(METACH:METDGN);
                     If HHHHBZ < METDGN;
                     If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                     Endif;
                     If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                     Endif;
                     If #1A4CD = 'DA' OR #1A4CD = '79' OR #1A4CD = 'M ' OR #1A4CD = 'M1' OR #1A4CD =
     EvalR   WUKVCD = '0';                        // //SWITCH47
                     ENDIF;
                   Endif; //END METDGN

                 Endif; //BZ=Y

               Endif; //END VA,Z1,..
                //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN (REF.MNF=IND.MND)
               If #1GWNB = BYEENB; //ACHT=WKLMAAN
                 DELBZ = HHBZ / 2;
                 DELBZ = DELBZ + HVBZ;
                 If DELBZ > BYEANB; //DGNBZ>MAX BZ
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                 Endif; //DUS <=MAX BZ
               Endif; //END DATUM AC

             Endif; //END BZ NT BL
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0105 = #1GMNB; //HD6
               ZA0106 = #1JLNB; //Halve dagen ver
                // Send message 'Dagen BZ>maximum type03'
         ZAMSID = 'USR0496';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: JOB.*USER is RVDS
             If ##USR = 'RVDS'; //*IF
         WUKVCD = '0';                        // //Switch47
             Endif; //*FI
              // CASE: DTL.Geen dagen/bedrag BZ is Y
             If #1BCST = 'Y'; //*IF
                // CASE: WRK.Switch47 is 1
               If WUKVCD = '1'; //*IF
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Type kode = 31/40 : Omzetting dgn wklh --> dgn BZ
            // CASE:
            //  - c2ORc3
            //   !- c2    : DTL.Type wklh. kode is 31 : deelt.opl/stage
            //   !- c3    : DTL.Type wklh. kode is 40 : vestigingsuitkering
            //   '-
           If #1A1CD = '31' OR #1A1CD = '40'; //*IF
              // Omz. dgn --> BZ : type 11 - Wkl bet  *
              // 20 VD6+5 HD6 --> EERST DAGEN OMZETTEN IN EEN HULPZONE-->DELWKL=22,5
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB;
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //***************************************************************
             If #1BCCD <> 'P'; //SUBBEROEP NIET P
               If #1A4CD <> *BLANK;
                  // IS KODE BZ = B --> GN VORSTDAGEN SINDS 1/10/91
                 HVVOR = 0; //VORSTDGN=0
                 HHVOR = 0; //HVORST=0
                  // BZ-DAGEN --> HULPZONES ALS DE DAGEN  OPGEGEVEN WERDEN
                 If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN NT 0
                   HVBZ = #1GPNB; //VOL BZ
                   HHBZ = #1JNNB; //HALVE BZ
                 Endif;
                  //IS BZ=A,NA,Z & IS DGN WKL<15 DAN MOETEN DGN BZ&BEDR BZ INGEV ZIJN
                 If #1A4CD = 'A ' OR #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'NA' OR #1A4CD = 'FA

                   If #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = '35';
                     DELWKL = HHBZ / 2;
                     DELWKL = DELWKL + HVBZ;
                   ENDIF;

                   If #1BCST = 'Y'; //DGN/BZ=Y
                     METACH = #1GWNB;
                     METDGN = 99;

                     METAALD(METACH:METDGN);
                       If DELWKL < METDGN;
                       If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                       If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                     Endif; //END METDGN
                   Endif; //BZ=Y

                 Endif; //END A,..
                  // BZ-DAGEN BEPALEN ALS DE DAGEN NIET OPGEGEVEN WERDEN
                 If #1GPNB = *ZERO AND #1JNNB = *ZERO; //BZDGN=0
                    // BZ DAGEN BOUW (KREDIETDAGEN)
                   If #1A4CD = 'B ' AND #1GWNB >= BYAUDM; //BZ=B
                     HVBZ = HVTOT6; //BZDGN=0
                     HHBZ = HHTOT6; //HBZ=0
                   Endif; //END KOD BZ=B
                    // BZ =H OF KH :HOUT EN STOFFERING --> BZ-DAGEN = WKLHDAGEN
                    //IDEM METAAL BZ=G (CONTROLE MET KREDIET GEBEURT LATER)
                   If #1A4CD = 'I '; //BZ=HOUT EN
                     If WUJRJR = WUJRRR;
                       HVBZ = HVTOT6; //BZDGN=VD6
                       HHBZ = HHTOT6; //HBZ=HD6
                     Endif; //END BZ=H/KH
                   Endif; //END BZ=H/KH

                   If #1A4CD = 'C ' OR #1A4CD = 'CS'; //BZ=METAAL
                     If #1BCST <> 'N'; //BEDRAG BZ<>N
                       HVBZ = HVTOT6; //BZDGN=VD6
                       HHBZ = HHTOT6; //HBZ=HD6
                     ELSE; //GN BZ UITB
                       HVBZ = 0; //BZDGN=VD6
                       HHBZ = 0; //HBZ=HD6
                     ENDIF;
                   Endif; //END BZ=C

                 Endif; //DAGEN BZ=0
                  //**  EINDE BZ DAGEN NIET INGEVULD
                  //**  IS BZ BEDRAG INGEVULD
                 If #1GYNB <> *ZERO; //BZ BEDRAG=0
                   HBEDBZ = #1GYNB;
                 Endif; //END BEDR =0
                  //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN (REF.MND=IND.MND)
                 If #1GWNB = BYEENB; //ACHT=WKLMAAN
                   DELBZ = HHBZ / 2;
                   DELBZ = DELBZ + HVBZ;
                   If DELBZ > BYEANB; //DGNBZ>MAX BZ
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                   Endif; //DUS <=MAX BZ
                 Endif; //END DATUM AC

               Endif; //END BZ NT BL
             Endif; //END SUBBEROEP <>P
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0107 = #1GLNB; //VD6
               ZA0108 = #1GMNB; //HD6
               ZA0109 = #1JLNB; //Halve dagen ver
               ZA0110 = #1GNNB; //Volle dagen ver
                // Send message 'Dagen BZ>maximum'
         ZAMSID = 'USR0365';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: WRK.Switch47 is 1
             If WUKVCD = '1'; //*IF
                // Setup message data for message
               ZA0111 = #1JNNB; //Halve dagen BZ
               ZA0112 = #1GYNB; //Bedrag BZ
               ZA0113 = #1GPNB; //Volle dagen BZ
                // Send message 'zelf dagen & bedrag opgev'
         ZAMSID = 'USR0366';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Type kode = 12 : Omzetting dgn wklh --> dgn BZ
            // CASE: DTL.Type kode is 12 :171bis beschutte werk
           If #1A1CD = '12'; //*IF
              // CASE: DTL.*CMD key is CF01
             If *IN01 = '1'; //*IF
                // CASE:
                //  - c1ORc2ORc3ORc4
                //   !- c1    : DTL.VD6 is niet 0
                //   !- c2    : DTL.HD6 is niet 0
                //   !- c3    : DTL.Volle dagen verlof is > 0
                //   !- c4    : DTL.Halve dagen verlof is niet 0
                //   '-
               If #1GLNB <> *ZERO OR #1GMNB <> *ZERO OR #1GNNB > *ZERO OR #1JLNB <> *ZERO; //*IF
         WUEWCH = '1';                        // //Wrk gebruik F1
         WUCQCH = *BLANK;                        // //Wrk bedrag besc
         WUCQCH = '0';                        // //Wrk bedrag besc
         WUCRCH = *BLANK;                        // //Wrk bedrag TB c
         WUCRCH = '0';                        // //Wrk bedrag TB c
         WUDHCH = *BLANK;                        // //Wrk 6 lang refe
         WUDHCH = #1GWNB;                        // //Wrk 6 lang refe
                 ZQ = *ZERO;
                 WUKE03 = #1AACD + '' + #1AFNB; //Wrk veld 8 posi
                 ZQ = *ZERO;
                 WUU3CF = WUKE03 + '' + WUDHCH; //wrk veld 14 pos
         WUDICH = #1GLNB;                        // //Wrk veld 2 posi
         WUDJCH = #1GMNB;                        // //Wrk veld 2 posi
                 ZQ = *ZERO;
                 WUDKCH = WUDICH + '' + WUDJCH; //Wrk 4 lang dl1
         WUDICH = #1GNNB;                        // //Wrk veld 2 posi
         WUDJCH = #1JLNB;                        // //Wrk veld 2 posi
                 ZQ = *ZERO;
                 WUDLCH = WUDICH + '' + WUDJCH; //Wrk 4 lang dl2
                 ZQ = *ZERO;
                 WUKE03 = WUDKCH + '' + WUDLCH; //Wrk veld 8 posi
                  // Simulatie type 12 - Wkl betaling  *
                 //Simulatie type
                 //wrk vanaf menu
                 //wrk veld 14 pos
                 //Wrk veld 8 posi
                 //Wrk bedrag besc
                 //Wrk bedrag TB c

                 LXYBPVR(W0RTN:WQ0311:WQ0312:WQ0313:WQ0314:WQ0315);
                         If %Error();
                    // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LXYBPVR';
                    // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                   EXSR ZASNMS;
                 Endif;
                  // Error detected?
                 If W0RTN <> *BLANK;
                   *In99 = *On;
                 Endif;
               ELSE;
                  // CASE: *OTHERWISE
                  // Send message 'Type 12 : eerst dagen inv'
         ZAMSID = 'USR5244';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             Endif; //*FI
             YRSW00 = 1;
             ZQ = 5;
             If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00007 OR ZQ > 00007;
         W0RTN = 'Y2U0510';
             ELSE;
               WUEXCH = %Subst(#1DOCD:ZQ:YRSW00); //Wrk pos5 anc
     C   90              MOVEL     'Y2U0510'     W0RTN
             Endif;
              // CASE:
              //  - c1ORc2ORc3
              //   !- c1    : WRK.Wrk pos5 anc is 3
              //   !- c2    : DTL.Volle dagen verlof is niet 0
              //   !- c3    : DTL.Halve dagen verlof is niet 0
              //   '-
             If WUEXCH = '3' OR #1GNNB <> *ZERO OR #1JLNB <> *ZERO; //*IF
                // CASE: WRK.Wrk gebruik F1 simul.T12 is 0
               If WUEWCH = '0'; //*IF
                  // Send message 'F1 gebruiken voor type12'
         ZAMSID = 'USR5243';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Omz. dgn --> BZ : type 12 - Wkl bet  *
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB;
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //***************************************************************
             If #1A4CD <> *BLANK; //BZ KODE INGE
                // IS KODE BZ = B --> GN VORSTDAGEN SINDS 1/10/91
               If #1A4CD = 'B '; //KODE BZ=B
                 HVVOR = 0; //VORSTDGN=0
                 HHVOR = 0; //HVORST=0
               Endif; //END KOD BZ=B
                // BZ-DAGEN --> HULPZONES ALS DE DAGEN  OPGEGEVEN WERDEN
               If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN=0
                 HVBZ = #1GPNB; //VORSTDGN=0
                 HHBZ = #1JNNB; //HVORST=0
               Endif;
                //IS BZ=A,NA,Z & IS DGN WKL<15 DAN MOETEN DGN & BEDR BZ INGEV ZIJN
               If #1A4CD = 'A ' OR #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'NA' OR #1A4CD = 'FA'

                 If #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = '35';
                   DELWKL = HHBZ / 2;
                   DELWKL = DELWKL + HVBZ;
                 ENDIF;

                 If #1BCST = 'Y'; //DGN/BZ=Y
                   METACH = #1GWNB;
                   METDGN = 99;

                   METAALD(METACH:METDGN);
                     If DELWKL < METDGN;
                     If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                     Endif;
                     If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                     Endif;
                   Endif; //END METDGN
                 Endif; //BZ=Y

               Endif; //END A,...
                //***************************************************************
                //** BZ-DAGEN BEPALEN ALS DE DAGEN NIET OPGEGEVEN WERDEN
               If #1GPNB = *ZERO AND #1JNNB = *ZERO; //BZDGN=0
                  //***************************************************************
                  // BZ DAGEN BOUW (KREDIETDAGEN)
                 If #1A4CD = 'B ' AND #1GWNB >= BYAUDM; //BZ=B
                   HVBZ = HVTOT6; //BZDGN=0
                   HHBZ = HHTOT6; //HBZ=0
                 Endif; //END KOD BZ=B
                  //***************************************************************
                  // BZ = H OF KH : HOUT EN STOFFERING --> BZ-DAGEN = WKLHDAGEN
                  // IDEM METAAL BZ=C (CONTROLE MET KREDIET GEBEURT LATER)
                 If #1A4CD = 'I ' OR #1A4CD = 'C ' OR #1A4CD = 'CS'; //BZ=HOUT EN
                   If WUJRJR = WUJRRR;
                     HVBZ = HVTOT6; //BZDGN=VD6
                     HHBZ = HHTOT6; //HBZ=HD6
                   Endif; //END BZ=H/KH
                 Endif; //END BZ=H/KH

               Endif; //DAGEN BZ=0
                //**  EINDE BZ DAGEN NIET INGEVULD
                //**  IS BZ BEDRAG INGEVULD
               If #1GYNB <> *ZERO; //BZ BEDRAG=0
                 HBEDBZ = #1GYNB;
               Endif; //END BEDR =0
                //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN (REF.MND=IND.MND)
               If #1GWNB = BYEENB; //ACHT=WKLMAAN
                 DELBZ = HHBZ / 2;
                 DELBZ = DELBZ + HVBZ;
                 If DELBZ > 30; //DGNBZ>30
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                 Endif; //DUS <=MAX BZ
               Endif; //END DATUM AC

             Endif; //END BZ NT BL
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0114 = #1GLNB; //VD6
               ZA0115 = #1GMNB; //HD6
               ZA0116 = #1JLNB; //Halve dagen ver
               ZA0117 = #1GNNB; //Volle dagen ver
                // Send message 'Dagen BZ>maximum'
         ZAMSID = 'USR0365';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: WRK.Switch47 is 1
             If WUKVCD = '1'; //*IF
                // Setup message data for message
               ZA0118 = #1JNNB; //Halve dagen BZ
               ZA0119 = #1GYNB; //Bedrag BZ
               ZA0120 = #1GPNB; //Volle dagen BZ
                // Send message 'zelf dagen & bedrag opgev'
         ZAMSID = 'USR0366';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Type kode = 15 : Omzetting dgn wklh/maandbedrag BZ
            // CASE: DTL.Type kode is 15 : grensarbeiders
           If #1A1CD = '15'; //*IF
              // Omz. dgn,dagbedrag:type15 - Wkl bet  *
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB;
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //GN BZ:ENKEL DAGBEDR=(IN FEITE MAANDBEDR) INVULLEN IN ZONE HBEDBZ
             If #1A4CD <> *BLANK;
               HBEDBZ = 0;
             Endif;
             If #1DDNB <> *ZERO; //DAGBEDR INGE
               HBEDBZ = #1DDNB;
             Endif;
           Endif; //*FI
            // Type kode = 16+44->49 : Omzetting dgn wklh
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6ORc7
            //   !- c1    : DTL.Type wklh. kode is 16 : voltijds opleiding
            //   !- c2    : DTL.Type wklh. kode is 44
            //   !- c3    : DTL.Type wklh. kode is 45
            //   !- c4    : DTL.Type wklh. kode is 46
            //   !- c5    : DTL.Type wklh. kode is 47
            //   !- c6    : DTL.Type wklh. kode is 48
            //   !- c7    : DTL.Type wklh. kode is 49
            //   '-
           If #1A1CD = '16' OR #1A1CD = '44' OR #1A1CD = '45' OR #1A1CD = '46' OR #1A1CD = '47' OR #
              // Omzet dgn type 16 : gn BZ - Wkl betaling  *
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB;
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //****************************************************************
             If #1BCCD <> 'P'; //SUBBEROEP NIET P
               If #1A4CD <> *BLANK; //BZ KODE INGE
                  //    IS KODE BZ = B --> GN VORSTDAGEN SINDS 1/10/91
                 HVVOR = 0; //VORSTDGN=0
                 HHVOR = 0; //HVORST=0
                  //  BZ-DAGEN --> HULPZONES ALS DE DAGEN OPGEGEVEN WERDEN
                 If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN NT 0
                   HVBZ = #1GPNB; //VOL BZ
                   HHBZ = #1JNNB; //HALVE BZ
                 Endif;
                  // IS BZ=A,NA,Z & IS DGN WKL<15 DAN MOETEN DGN&BEDR BZ INGEV. ZIJN
                 If #1A4CD = 'A ' OR #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'NA' OR #1A4CD = 'FA

                   If #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = '35';
                     DELWKL = HHBZ / 2;
                     DELWKL = DELWKL + HVBZ;
                   ENDIF; //Z,M

                   If #1BCST = 'Y'; //DGN/BZ=Y
                     METACH = #1GWNB;
                     METDGN = 99;

                     METAALD(METACH:METDGN);
                       If DELWKL < METDGN;
                       If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                       If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                     Endif; //END METDGN
                   Endif; //BZ=Y

                 Endif; //A,Z,...
                  //   BZ-DAGEN BEPALEN ALS DE DAGEN NIET OPGEGEVEN WERDEN
                 If #1GPNB = *ZERO AND #1JNNB = *ZERO; //BZDGN=0
                    //    BZ DAGEN BOUW (KREDIETDAGEN)
                   If #1A4CD = 'B ' AND #1GWNB >= BYAUDM; //BZ=B
                     HVBZ = HVTOT6; //BZDGN=0
                     HHBZ = HHTOT6; //HBZ=0
                   Endif; //END KOD BZ=B
                    // BZ=H OF KH :HOUT EN STOFFERING --> BZ-DAGEN = WKLHDAGEN
                    // IDEM METAAL BZ=G (CONTROLE MET KREDIET GEBEURT LATER)
                   If #1A4CD = 'I ' OR #1A4CD = 'C ' OR #1A4CD = 'CS'; //BZ=HOUT EN
                     If WUJRJR = WUJRRR;
                       HVBZ = HVTOT6; //BZDGN=VD6
                       HHBZ = HHTOT6; //HBZ=HD6
                     Endif; //END BZ=H/KH
                   Endif; //END BZ=H/KH

                 Endif; //DAGEN BZ=0
                  //    EINDE BZ DAGEN NIET INGEVULD
                  //    IS BZ BEDRAG INGEVULD
                 If #1GYNB <> *ZERO; //BZ BEDRAG=0
                   HBEDBZ = #1GYNB;
                 Endif; //END BEDR =0
                  //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN (REF.MND=IND.MND)
                 If #1GWNB = BYEENB; //ACHT=WKLMAAN
                   DELBZ = HHBZ / 2;
                   DELBZ = DELBZ + HVBZ;
                   If DELBZ > BYEANB; //DGNBZ>MAX BZ
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                   Endif; //DUS <=MAX BZ
                 Endif; //END DATUM AC

               Endif; //END BZ NT BL
             Endif; //END SUBBEROEP<>P
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0121 = #1GLNB; //VD6
               ZA0122 = #1GMNB; //HD6
               ZA0123 = #1JLNB; //Halve dagen ver
               ZA0124 = #1GNNB; //Volle dagen ver
                // Send message 'Dagen BZ>maximum'
         ZAMSID = 'USR0365';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: WRK.Switch47 is 1
             If WUKVCD = '1'; //*IF
                // Setup message data for message
               ZA0125 = #1JNNB; //Halve dagen BZ
               ZA0126 = #1GYNB; //Bedrag BZ
               ZA0127 = #1GPNB; //Volle dagen BZ
                // Send message 'zelf dagen & bedrag opgev'
         ZAMSID = 'USR0366';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Type kode = 17+34-->39 : Omzetting dgn wklh
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6ORc7
            //   !- c1    : DTL.Type wklh. kode is 17 : deeltijds opleiding
            //   !- c2    : DTL.Type wklh. kode is 34
            //   !- c3    : DTL.Type wklh. kode is 35
            //   !- c4    : DTL.Type wklh. kode is 36
            //   !- c5    : DTL.Type wklh. kode is 37
            //   !- c6    : DTL.Type wklh. kode is 38
            //   !- c7    : DTL.Type wklh. kode is 39
            //   '-
           If #1A1CD = '17' OR #1A1CD = '34' OR #1A1CD = '35' OR #1A1CD = '36' OR #1A1CD = '37' OR #
              // Omzet dgn type 17 : gn BZ - Wkl betaling  *
     EvalR   WUJKCD = '0';                        // //SWITCH43
     EvalR   WUKVCD = '0';                        // //SWITCH47
             HVD6 = #1GLNB;
             HHD6 = #1GMNB;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             DELWKL = #1GMNB / 2;
             DELWKL = DELWKL + #1GLNB;
             DELVER = #1JLNB / 2;
             DELVER = DELVER + #1GNNB;
             DELWKL = DELWKL + DELVER;
             HVTOT6 = #1GLNB + #1GNNB;
             HHTOT6 = #1GMNB + #1JLNB;
             DELBV = #1JONB / 2;
             DELBV = DELBV + #1G7NB;
             DELWK2 = DELWKL + DELBV;
             HVAL6 = HVTOT6 + #1G7NB;
             HHAL6 = HHTOT6 + #1JONB;
              //***************************************************************
             If #1BCCD <> 'P'; //SUBBEROEP <> P
               If #1A4CD <> *BLANK;
                  //*** IS KODE BZ = B --> GN VORSTDAGEN SINDS 1/10/91
                 HVVOR = 0; //VORSTDGN=0
                 HHVOR = 0; //HVORST=0
                  //** BZ-DAGEN --> HULPZONES ALS DE DAGEN  OPGEGEVEN WERDEN
                 If #1GPNB <> *ZERO OR #1JNNB <> *ZERO; //BZDGN NT 0
                   HVBZ = #1GPNB; //VOL BZ
                   HHBZ = #1JNNB; //HALVE BZ
                 Endif;
                  // IS BZ=A,NA,Z & DGN WKL<19 DAN MOETEN DGN&BEDR BZ INGEVULD ZIJN
                 If #1A4CD = 'A ' OR #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = 'NA' OR #1A4CD = 'FA

                   If #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = '35';
                     DELWKL = HHBZ / 2;
                     DELWKL = DELWKL + HVBZ;
                   ENDIF; //Z,M

                   If #1BCST = 'Y'; //DGN/BZ=Y
                     METACH = #1GWNB;
                     METDGN = 99;

                     METAALD(METACH:METDGN);
                       If DELWKL < METDGN;
                       If #1GPNB = *ZERO AND #1JNNB = *ZERO; //VOLLE BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                       If #1GYNB = *ZERO; //BEDR BZ
     EvalR   WUKVCD = '1';                        // //SWITCH47
                       Endif;
                     Endif; //END METDGN
                   Endif; //BZ=Y

                 Endif; //Z,A,...
                  //** BZ-DAGEN BEPALEN ALS DE DAGEN NIET OPGEGEVEN WERDEN
                 If #1GPNB = *ZERO AND #1JNNB = *ZERO; //BZDGN=0
                    //*** BZ DAGEN BOUW (KREDIETDAGEN)
                   If #1A4CD = 'B ' AND #1GWNB >= BYAUDM; //BZ=B
                     HVBZ = HVTOT6; //BZDGN=0
                     HHBZ = HHTOT6; //HBZ=0
                   Endif; //END KOD BZ=B
                    // BZ =H OF KH :HOUT EN STOFFERING --> BZ-DAGEN = WKLHDAGEN
                    // IDEM METAAL BZ=G (CONTROLE MET KREDIET GEBEURT LATER)
                   If #1A4CD = 'I ' OR #1A4CD = 'C ' OR #1A4CD = 'CS'; //BZ=HOUT EN
                     If WUJRJR = WUJRRR;
                       HVBZ = HVTOT6; //BZDGN=VD6
                       HHBZ = HHTOT6; //HBZ=HD6
                     Endif; //END BZ=H/KH
                   Endif; //END BZ=H/KH

                 Endif; //DAGEN BZ=0
                  //**  EINDE BZ DAGEN NIET INGEVULD
                  //**  IS BZ BEDRAG INGEVULD
                 If #1GYNB <> *ZERO; //BZ BEDRAG=0
                   HBEDBZ = #1GYNB;
                 Endif; //END BEDR =0
                  //DGN BZ > DGN BZ CONTROLERECORD -->ERROR NIET BETALEN (REF.MND=IND.MND)
                 If #1GWNB = BYEENB; //ACHT=WKLMAAN
                   DELBZ = HHBZ / 2;
                   DELBZ = DELBZ + HVBZ;
                   If DELBZ > BYEANB; //DGNBZ>MAX BZ
     EvalR   WUJKCD = '1';                        // //NT BETALEN
                   Endif; //DUS <=MAX BZ
                 Endif; //END DATUM AC

               Endif; //END BZ NT BL
             Endif; //END SUBBEROEP <> P
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0128 = #1GLNB; //VD6
               ZA0129 = #1GMNB; //HD6
               ZA0130 = #1JLNB; //Halve dagen ver
               ZA0131 = #1GNNB; //Volle dagen ver
                // Send message 'Dagen BZ>maximum'
         ZAMSID = 'USR0365';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(31) = '1';                       // //*
         @I1(32) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: WRK.Switch47 is 1
             If WUKVCD = '1'; //*IF
                // Setup message data for message
               ZA0132 = #1JNNB; //Halve dagen BZ
               ZA0133 = #1GYNB; //Bedrag BZ
               ZA0134 = #1GPNB; //Volle dagen BZ
                // Send message 'zelf dagen & bedrag opgev'
         ZAMSID = 'USR0366';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Type kode = 23/33/27/53/54/55 : Omzetting dgn wklh
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6
            //   !- c1    : DTL.Type wklh. kode is 33 : studenten + wklh
            //   !- c2    : DTL.Type wklh. kode is 23
            //   !- c3    : DTL.Type wklh. kode is 27 = opvanguitkering
            //   !- c4    : DTL.Type wklh. kode is 53
            //   !- c5    : DTL.Type wklh. kode is 54
            //   !- c6    : DTL.Type wklh. kode is 55
            //   '-
           If #1A1CD = '33' OR #1A1CD = '23' OR #1A1CD = '27' OR #1A1CD = '53' OR #1A1CD = '54' OR #
              // Omzet dgn type 33 : gn BZ - Wkl betaling  *
             EXSR REG27;
           Endif; //*FI
            // Dok nt A'pen+rivierarb : omzetting dagen --> BZ (BZ=K;rivier BZ=B
            // CASE: DTL.Beroep kode is 09 : Dok A'pen
           If #1BACD = '09'; //*IF
              // Omz dagen vr dok nt A'pen - Wkl bet  *
     EvalR   WUJJCD = '0';                        // //SWITCH42
     EvalR   WUJKCD = '0';                        // //SWITCH43
             If #1A1CD <> '02';
               If #1A1CD <> '04';
                 If #1A1CD <> '06';
                   HVD5 = #1GGNB;
                   HHD5 = #1GHNB;
                 ENDIF;
               ENDIF;
             ENDIF;
             HVVERL = #1GNNB;
             HHVERL = #1JLNB;
             HVBV = #1G7NB;
             HHBV = #1JONB;
             If #1A1CD <> '02';
               If #1A1CD <> '04';
                 If #1A1CD <> '06';
                   HVTOT5 = #1GGNB + #1GNNB;
                   HHTOT5 = #1GHNB + #1JLNB;
                   HVAL5 = HVTOT5 + #1G7NB;
                   HHAL5 = HHTOT5 + #1JONB;
                 ENDIF;
               ENDIF;
             ENDIF;
             DELWK2 = HHAL5 / 2;
             DELWK2 = DELWK2 + HVAL5;
              //DGN VD5+HD5 >VD5 CONTROLERECORD-->ERROR NIET BETALEN (REF.MND=IND.MND)
             If #1GWNB = BYEENB AND DELWK2 > BYD7NB; //ACHT=WKLMAAN
     EvalR   WUJJCD = '1';                        // //NT BETALEN
             Endif; //END DATUM AC
              // BZ-DAGEN --> HULPZONES ALS DE DAGEN  OPGEGEVEN WERDEN
             If #1A4CD = 'K '; //BZ=DOK GENT
               HVBZ = #1GPNB; //BZ=
               HHBZ = #1JNNB; //HBZ=
             Endif; //END BZ=C
              // RIVIERARBEIDERS HEBBEN BZ=BA EN SUBKODE BEROEP=5
             If #1A4CD = 'BA'; //BZ=BRANDSTOFFEN
               If #1GPNB = 0 AND #1JNNB = 0 AND WUJRJR = WUJRRR; //VOLLE BZ
                 HVBZ = HVTOT5; //BZ=
                 HHBZ = HHTOT5; //HBZ=
               Endif; //END BZDGN=0
               If #1GPNB <> 0 OR #1JNNB <> 0;
                 HVBZ = #1GPNB; //BZ=
                 HHBZ = #1JNNB; //HBZ=
               Endif;
             Endif; //END BZ=BA
              //  IS BZ BEDRAG INGEVULD
             If #1GYNB <> *ZERO; //BZ BEDRAG=0
               HBEDBZ = #1GYNB;
             Endif; //END BEDR =0
              //DGN BZ > DGN BZ CONTROLERECORD-->ERROR NIET BETALEN (REF.MND=IND.MND)
             DELBZ = HHBZ / 2; //HBZ/2
             DELBZ = DELBZ + HVBZ;
             If #1GWNB = BYEENB AND DELBZ > BYEANB; //ACHT=WKLMAAN
     EvalR   WUJKCD = '1';                        // //NT BETALEN
             Endif; //DUS <=MAX BZ
              // CASE: WRK.Switch42 is 1
             If WUJJCD = '1'; //*IF
                // Setup message data for message
               ZA0135 = #1GGNB; //VD5
               ZA0136 = #1GHNB; //HD5
                // Send message 'Wklhdgn>max type01:DOK'
         ZAMSID = 'USR0493';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(35) = '1';                       // //*
         @I1(36) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: WRK.Switch43 is 1
             If WUJKCD = '1'; //*IF
                // Setup message data for message
               ZA0137 = #1GGNB; //VD5
               ZA0138 = #1GHNB; //HD5
                // Send message 'Dagen BZ>max type01:rivie'
         ZAMSID = 'USR0494';
               EXSR ZASNMS;
               *In99 = *On;
         @I1(35) = '1';                       // //*
         @I1(36) = '1';                       // //*

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // controle VW versus activa - Wkl betaling  *
         WUWNCI = '0';           // //1
         WUWOCI = '0';           // //1
         WUWPCI = '0';           // //1
            // Er wordt VW betaald en in RM is reeds activa betaald
            // CASE: WRK.Switch333 is 2
           MDACTVW(#1AACD:#1AFNB:RMPARM:#1A1CD:HVTOT6:HHTOT6:WUWNCI:WUWOCI:WUWPCI);
             If WUWPCI = '2';
              // Send message 'Wkl1190 : reeds werkuitke'
         ZAMSID = 'USR6048';
         ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;

           Endif; //*FI
            // CASE: DTL.Subberoep kode is niet P
           If #1BCCD <> 'P'; //*IF
              // Dagen > maximum? 05/2006 - Wkl betaling  *
         WUOWCD = '0';
         WUTLCG = '0';           // //1
         WUAQCK = '0';           // //1
             RMPAR = #1GWNB;
             DGNRBD = 0; //DAGEN REEDS BETAALD
             DGNZBV = 0; //DAGEN REEDS BET+BV
             MAXR6 = 27;
             MAXR5 = 23;
             HHA65 = 0;
             HVA65 = 0;
             D54RBD = 0; //DAGEN REEDS BETAALD
             D54ZBV = 0; //DAGEN REEDS BET+BV
             M54R6 = 27;
             M54R5 = 23;
             D54ZBV = 0; //DAGEN REEDS BET+BV
             D02RBD = 0; //DAGEN REEDS BETAALD
             D02ZBV = 0; //DAGEN REEDS BET+BV
             M02R6 = 27;
             M02R5 = 23;
             D02ZBV = 0; //DAGEN REEDS BET+BV
              //          A1A1CD    IFEQ '00' OR 71 72 73 97
             If A1A1CD = '?X';
               //71,... OOK MEETELLEN
               //AFD
               //LIDNR
               //REF.MND
               //TOTAAL REEDS BETAALD
             MDTOTDGN(#1AACD:#1AFNB:RMPAR:DGNRBD:MAXR6:MAXR5);
               ELSE;
               //71,.. NT MEETELLEN
               //AFD
               //LIDNR
               //REF.MND
               //TOTAAL REEDS BETAALD
               MDTOTDG5(#1AACD:#1AFNB:RMPAR:DGNRBD:MAXR6:MAXR5:DGNZBV);
                 DGNRBD = DGNZBV;
             ENDIF;
             If #1A1CD = '02' OR #1A1CD = '06' OR #1A1CD = '04' OR #1A1CD = '21' OR #1A1CD = '22' OR
               //KNELPUNTBEROEPEN
               //AFD
               //LIDNR
               //REF.MND
               //TOTAAL REEDS BETAALD
               MDTOTD54(#1AACD:#1AFNB:RMPAR:D54RBD:M54R6:M54R5:D54ZBV);
                 D54RBD = D54ZBV;
               If D54ZBV > 0;
                 DGNRBD = DGNRBD - D54ZBV;
               ENDIF;
             ENDIF;
             If #1A1CD = '54' OR #1A1CD = '55';
               //KNELPUNTBEROEPEN
               //AFD
               //LIDNR
               //REF.MND
               //TOTAAL REEDS BETAALD
               MDTOTDTW(#1AACD:#1AFNB:RMPAR:D02RBD:M02R6:M02R5:D02ZBV);
                 D02RBD = D02ZBV;
               If D02ZBV > 0;
                 DGNRBD = DGNRBD - D02ZBV;
               ENDIF;
             ENDIF;

             If #1A1CD = '02' OR #1A1CD = '06';
                // WKL 3193 MAX 30    04/2020 EN 05/2020 MAX 31DGN
                //                    Z-ADD31        MAXR6
               MAXR6 = 30;
               If #1GWNB = 202004 OR #1GWNB = 202005;
                 MAXR6 = 31;
               ENDIF;
             ENDIF;
             If #1A1CD = '05' OR #1A1CD = '57';
               MAXR6 = 33;
             ENDIF;
             If #1A1CD = '12';
               MAXR6 = 30;
             ENDIF;
             If #1A1CD = '27';
               MAXR6 = 27.5;
             ENDIF;
             If #1A1CD = '03' OR #1A1CD = '10';
               MAXR6B = WKREG * 4.7;
     EvalR   MAXR6N = MAXR6B;           // //1 0
               MAXR6C = MAXR6B;
               If MAXR6N > 0;
                 MAXR6C = MAXR6C + 1;
               ENDIF;
               MAXR6 = MAXR6C / 2;
             ENDIF; //03/10
              // BEPAAL TOTAAL VAN BETAALSCHERM ZELF
             HHA65 = HHAL6 + HHAL5;
             HVA65 = HHA65 / 2;
             HVA65 = HVA65 + HVAL6;
             HVA65 = HVA65 + HVAL5;
             HVA65 = HVA65 + #1GXNB; //TOT DGN BETAALSCHERM
              // DAGEN REEDS BETAALD OPGEHAALD UIT C2-OVERZICHT BIJTELLEN
             HVA65 = HVA65 + DGNRBD;
              // VERGELIJK VOLGENS AFD/BZ CODE
             If #1AACD = '04' OR #1A4CD = 'K '; //5 DAGEN REGIME
               If HVA65 > MAXR5;
         WUOWCD = '1';
               ENDIF;
             ELSE; //6 DAGEN REGIME
               If HVA65 > MAXR6;
         WUOWCD = '1';
               ENDIF;
                //C105DAN DAGEN = MAX VAND E MAAND
               If WUZDCJ = 'Y';
                 If HVA65 <> MAXR6;
         WUAQCK = '1';
                   If #1A1CD = '03' OR #1A1CD = '10' OR #1A1CD = '31';
         WUAQCK = '0';
                   ENDIF;
                 ENDIF;
               ENDIF;
               If #1A4CD = 'NA' OR #1A4CD = 'DA' OR #1A4CD = '29' OR #1A4CD = '79';
                 If HVA65 = MAXR6;
                   If #1MQCE <> *BLANK;
                     If #1G7NB = 0 AND #1JONB = 0;
         WUTLCG = '1';
                     ENDIF; //NIET NUL
                   ENDIF; //*NT BLANK
                 ENDIF; //MAXR6
                 If HVA65 < MAXR6;
                   If #1MQCE = *BLANK;
         WUTLCG = '2';
                   ENDIF; //BLANK
                 ENDIF; //MAXR6
                 If #1G7NB > 0 OR #1JONB > 0;
                   If #1MQCE = *BLANK;
         WUTLCG = '2';
                   ENDIF; //BLANK
                 ENDIF; //BV/HBV INGEVULD
               ENDIF; //NA/DA
             ENDIF;

             If HVAL6 = 0 AND HVAL5 = 0 AND HHAL6 = 0 AND HHAL5 = 0 AND #1GXNB = 0;
               If #1HPNB > 0; //BEDRAG WKLH
         WUOWCD = '0';
               ENDIF;
             ENDIF;
           Endif; //*FI
            // Sw80=1 #dgn betaalscherm + #dgn reeds betaald > maximum/maand
            // CASE: WRK.Switch80 is = 1
           If WUOWCD = '1'; //*IF
              // Send message 'Aantal dagen > maximum to'
         ZAMSID = 'USR4287';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Switch C105 : dagen >> maximum van deze maand
            // CASE: WRK.Switch c105 is 1
           If WUAQCK = '1'; //*IF
              // Send message 'C105: dgn <> max INFO'
         ZAMSID = 'USR6613';
         ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;

           Endif; //*FI
            // Sw501=1 : code werkhervatting kan niet : dagen=maximum per maand
            // CASE: WRK.switch501 is 1
           If WUTLCG = '1'; //*IF
              // Send message 'Metaal werkhervatting : i'
         ZAMSID = 'USR4985';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw501=2 : code werkhervatting leeg : dagen<maximum per maand
            // CASE: WRK.switch501 is 2
           If WUTLCG = '2'; //*IF
              // Send message 'Metaal werkhervatting:inf'
         ZAMSID = 'USR4986';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Contr. dgn BZ <= krediet - Wkl bet  *
     EvalR   WUPTCD = '0';                        // //SW87 JRBZ<>JRAC
     EvalR   WUTQCF = '0';           // //1            BOUW ONTSLAG
         WUOWCD = '0';                        // //SW80
         TYPCON = 'N';           // //1

         OUINON = 'N';           // //1
         BZBW = #1A4CD;             // //2

           MDBW001(BZBW:OUINON);
             If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06' OR #1A1CD = '18' OR #1A1CD = '21' OR
         TYPCON = 'Y';
           ENDIF;
            // BZ KODES MET ONBEPERKT KREDIET : IS JAAR BZ REEDS AANGEPAST??
           If #1A4CD <> *BLANK; //KODE BZ INGE
             If HVBZ = 0 AND HHBZ = 0 AND HVBZ1B = 0 AND HHBZ1B = 0 AND HVBZ2B = 0 AND HHBZ2B = 0; /
     C                   GOTO      ENDCBZ
             Endif;
             TOTBZ = HHBZ / 2; //HBZ-->VOL BZ
             TOTBZ = TOTBZ + HVBZ; //DGBZ&HDGBZ
             If #1A4CD = 'B ' OR #1A4CD = 'BB' OR OUINON = 'Y'; //KODE BZ = B
                // CORONA OVERMACHT NIET AFTREKKEN VAN KREDIET
               BWOVVO = 0; //VOLLE DAGEN
               BWOVHA = 0; //HALVE DAGEN
               BWTOTO = 0;
               If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06' OR #1A1CD = '05' OR #1A1CD = '57'
                 BWOVVO = 0; //VOLLE DAGEN
                 BWOVHA = 0; //HALVE DAGEN
                 BWTOTO = 0;
                 RMFORM = #1GWNB;
                 //AFD
                 //LIDNR
                 //VOLLE DAGEN OVERMACH
                 //HALVE DAGEN
                 //TOTAAL BZ OVERMACHT
               MDBOUW9(#1AACD:#1AFNB:RMFORM:#1A4CD:BWOVVO:BWOVHA:BWTOTO);
                 ENDIF;
                // WKLH.MND >= BEGINDATUM HUIDIG BOUWJAAR
               If #1GWNB >= BYAVDM;
                 TOTBOU = #1BDNB + #1BENB; //KR.BZ+KR.BZ2
                  //18091997            Z-ADD#1BDNB    TOTBOU  41       KR.BZ
                 If TYPCON = 'Y';
                   TOTBOU = #1BDNB; //KR.BZ
                 ENDIF;
                 TOTBOU = TOTBOU + BWTOTO; //+ OVERMACHT
                 If #1A1CD = '05' OR #1A1CD = '57' OR #1A1CD = '58';
                   If WUHHCM = 'N';
                     If #1A4CD = 'C2'; //KODE BZ = B
                       TOTBOU = 0; //KR.BZ
                     ENDIF;
                   ENDIF;
                 ENDIF;
                 HKRBZ = TOTBOU - TOTBZ;
                 If HKRBZ < 0;
         WUTQCF = 'H';
         HVBZD1 = TOTBOU;           // //3 0          VOLLE BZ
                   HVBZ = HVBZD1;
     EvalR   HHBZHU = TOTBOU;           // //1 0          LAATSTE POS.
                   If HHBZHU = 0; //1 OF GN
                     HHBZ = 0; //HALVE DAG BZ
                   ELSE;
                     HHBZ = 1;
                   Endif;
                 Endif;
                 If #1A1CD = '01' OR #1A1CD = '03';
                   EXSR SPBZH;
                   If #1AACD = '29' AND #1AACD = '183475';
                     DSPLY ('LVPLUFR ') 'ROSANNE';
                     DSPLY ('SPBZH   ') 'ROSANNE';
                     DSPLY ('HVBZ HHB') 'ROSANNE';
                     DSPLY (HVBZ) 'ROSANNE';
                     DSPLY (HHBZ) 'ROSANNE';
                   ENDIF;
                 ENDIF; //ENDIF 01/03
               ELSE;
                  // WKLH.MND > OF = BEGINDATUM VORIG BOUWJAAR
                 If #1GWNB >= BYAUDM;
                   TOTBOU = #1BFNB + #1BGNB; //KR.BZ+KR.BZ2
                    //18091997            Z-ADD#1BFNB    TOTBOU  41       KR.BZ
                   If TYPCON = 'Y';
                     TOTBOU = #1BFNB; //KR.BZ
                   ENDIF;
                   TOTBOU = TOTBOU + BWTOTO; //+ OVERMACHT
                   HKRBZ = TOTBOU - TOTBZ; //VORIG JAAR
                   If HKRBZ < 0;
         WUTQCF = 'V';
         HVBZD1 = TOTBOU;           // //3 0          VOLLE BZ
                     HVBZ = HVBZD1;
     EvalR   HHBZHU = TOTBOU;           // //1 0
                     If HHBZHU = 0;
                       HHBZ = 0;
                     ELSE;
                       HHBZ = 1;
                     Endif;
                   Endif;
                   If #1A1CD = '01' OR #1A1CD = '03';
                     EXSR SPBZV;
                     If #1AACD = '29' AND #1AACD = '183475';
                       DSPLY ('LVPLUFR ') 'ROSANNE';
                       DSPLY ('SPBZV   ') 'ROSANNE';
                       DSPLY ('HVBZ HHB') 'ROSANNE';
                       DSPLY (HVBZ) 'ROSANNE';
                       DSPLY (HHBZ) 'ROSANNE';
                     ENDIF;
                   ENDIF; //01/03
                 Endif;
               Endif;
             ELSE; //BZ NIET = B
         WUJRJR = #1GWNB;           // //4 0          JAAR ACHTERS
         WUJRRR = BYEENB;           // //4 0          JAAR WKLMND
         WUJRR1 = #1F4NB;           // //4 0          VORIG JAAR
               WUJRR1 = WUJRR1 - 1; //VORIG JAAR
               If #1A4CD = 'SV';
                 If WUJRJR = #1F4NB; //JAAR BZ
         WUTQCF = 'H';
                   HKRRES = #1BDNB - TOTBZ; //KR.BZ
                   If HKRRES < 0;
         HVBZD1 = #1BDNB;           // //3 0
                     HVBZ = HVBZD1;
     EvalR   HHBZHU = #1BDNB;           // //1 0
                     If HHBZHU = 0;
                       HHBZ = 0;
                     ELSE;
                       HHBZ = 1;
                     Endif; //HHBZHU
                   Endif; //HKRRES
                 ENDIF;
                 If WUJRJR = WUJRR1; //JAAR BZ-1
         WUTQCF = 'V';
                   HKRRES = #1BFNB - TOTBZ; //KR.BZ
                   If HKRRES < 0;
         HVBZD1 = #1BFNB;           // //3 0
                     HVBZ = HVBZD1;
     EvalR   HHBZHU = #1BFNB;           // //1 0
                     If HHBZHU = 0;
                       HHBZ = 0;
                     ELSE;
                       HHBZ = 1;
                     Endif; //HHBZHU
                   Endif; //HKRRES
                 ENDIF; //VORIG JAAR
               ENDIF; //SV

               If SWBZVJ = '1'; //ACHTERSTAL JANUARI
     C                   GOTO      TOCHBZ
               ENDIF;
               If WUJRJR = WUJRRR; //JR ACHT=HUID.JR
                  //ENKEL ALS JR ACHT=HUIDIG JR (=JR IND.MND) MAG JE KREDIETEN AFTREKKEN
     C     TOCHBZ        TAG
                 If #1A4CD = 'I ' OR #1A4CD = 'BA' OR #1A4CD = 'SC' OR #1A4CD = 'VJ'; //VOL WKL 0792
                   HKRRES = #1BDNB - TOTBZ; //KR.BZ
                   If HKRRES < 0;
         HVBZD1 = #1BDNB;           // //3 0
                     HVBZ = HVBZD1;
     EvalR   HHBZHU = #1BDNB;           // //1 0
                     If HHBZHU = 0;
                       HHBZ = 0;
                     ELSE;
                       HHBZ = 1;
                     Endif; //HHBZHU
                   Endif; //HKRRES
                 Endif; //C/....

                 If #1A4CD = 'H ' OR #1A4CD = 'KH' OR #1A4CD = 'CK';
                   HKRRES = #1BDNB - TOTBZ; //KR.BZ
                   If HKRRES < 0;
         HVBZD1 = #1BDNB;           // //3 0
                     HVBZ = HVBZD1;
                     VOLHS = HVBZD1;
     EvalR   HHBZHU = #1BDNB;           // //1 0
                     If HHBZHU = 0;
                       HHBZ = 0;
                       HALFHS = 0;
                     ELSE;
                       HHBZ = 1;
                       HALFHS = 1;
                     Endif; //END HHBZHU
                   Endif; //END HKRES
                 Endif; //END H,...
               Endif; //END JRJE
             Endif; //END BZ=B
              //ONGEACHT JAARTAL
             If #1A4CD = 'C ' OR #1A4CD = 'E ' OR #1A4CD = 'CS' OR #1A4CD = 'ES';
               HKRRES = #1BDNB - TOTBZ; //KR.BZ
               If HKRRES < 0;
         HVBZD1 = #1BDNB;           // //3 0
                 HVBZ = HVBZD1;
     EvalR   HHBZHU = #1BDNB;           // //1 0
                 If HHBZHU = 0;
                   HHBZ = 0;
                 ELSE;
                   HHBZ = 1;
                 Endif; //HHBZHU
               Endif; //HKRRES
             Endif; //C/....
     C     ENDCBZ        TAG
              //BZ=G=>MEN MOET JAARLIJKS EEN NIEUW BEWIJS INDIENEN,DUS JR BZ F4 AANPASSEN
              //IS DIT NIET GEBEURD BIJ DE VOLGENDE BETALING VR DAT JR, DAN ERROR MESSAGE
             If #1A4CD = 'G ';
         JRBZAC = #1GWNB;           // //4 0
               If #1F4NB < JRBZAC;
     EvalR   WUPTCD = '1';
               Endif;
             Endif;
              //OPV SCHERMZONES BZ ALS ZE INGEVULD WAREN. KUNNEN OOK < ZIJN RESTEREND
              //KREDIET.(OOK REKENING HOUDEN MET TYPES WKL DIE ENKEL HALVE DAGEN HEBBEN)
             If #1A1CD <> '03' AND #1A1CD <> '10' AND #1A1CD <> '04';
               If #1GPNB <> 0;
     EvalR   #1GPNB = HVBZ;
     EvalR   #1JNNB = HHBZ;
               Endif;
               If #1JNNB <> 0;
     EvalR   #1GPNB = HVBZ;
     EvalR   #1JNNB = HHBZ;
               Endif;
                //          #1A4CD    IFEQ 'B '
                //                    EXSR BWOPV
                //                    ENDIF
             Endif; //03,04,10
             If #1A1CD = '03' OR #1A1CD = '10' OR #1A1CD = '04';
               If #1JNNB <> 0;
                 PRBZHH = HVBZ * 2;
                 HHBZ = HHBZ + PRBZHH;
                 HVBZ = 0;
     EvalR   #1JNNB = HHBZ;
               Endif;
                //          #1A4CD    IFEQ 'B '
                //                    EXSR BWOPV2
                //                    ENDIF
             Endif;
           Endif; //KODE BZ BLAN

           If #1A4CD = 'B ' OR #1A4CD = 'BB' OR OUINON = 'Y';
             TOTBZR = 0; //TOTAAL DGN BZ
             DGNBZR = 0; //DAGEN REEDS BETAALD
             MXBZR6 = 27;
             MXBZR5 = 23;
             //71,... OOK MEETELLEN
             //TOTAAL BZDGN
             MDTOTBZ(#1AACD:#1AFNB:RMPAR:#1A4CD:DGNBZR:MXBZR6:MXBZR5);
               If #1A1CD = '02';
               MXBZR6 = 31;
             ENDIF;
             TOTBZR = DELBZ + DGNBZR;
             If TOTBZR > MXBZR6;
         WUOWCD = '1';
             ENDIF;
           ENDIF;

           If #1A1CD = '05' OR #1A1CD = '57' OR #1A1CD = '58';
             If WUHHCM = 'N';
               If #1A4CD = 'C2'; //KODE BZ = B
                 HVBZ = 0;
                 HHBZ = 0;
               ENDIF;
             ENDIF;
           ENDIF;
            //------------------------------------------------------------------------
            // Sw87 : BZ-kode/jaar stemt niet overeen met datum achterstal.
            // CASE: WRK.Switch87 is 1
           If WUPTCD = '1'; //*IF
              // Send message 'Ofwel BZkode uitbl./BZjaa'
         ZAMSID = 'USR0470';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Bz=15 veelvoud van 7,7
            // CASE: DTL.BZ kode is 15
           If #1A4CD = '15'; //*IF
              // is bedrag bz veelvoud van 7,7euro?
              // controle bz 15 veelvd 7,7 - Wkl betaling  *
         WUH4CL = 'N';           // //1
             BDRCHK = #1GYNB;
             BDRCH2 = BDRCHK * 100;
             DELCHK = BDRCH2 / 770;
     EvalR   DELCH2 = DELCHK;           // //4 0
             If DELCH2 <> 0;
                //                    MOVEL'F'       WUH4CL  1
             ENDIF;
             If BDRCHK > 15400;
                //                    MOVEL'X'       WUH4CL  1
             ENDIF;

             RMPARM = #1GWNB;
         WUH4CL = *blanks;
             BDROOO = #1GYNB;
              // CASE: WRK.switchbz15 is N
             MDMET02(#1AACD:#1AFNB:#1A4CD:RMPARM:BDROOO:WUH4CL);
               If WUH4CL = 'N';
                // Setup message data for message
               ZA0139 = #1GYNB; //Bedrag BZ
                // Send message 'Bedrag foutief'
         ZAMSID = 'USR6933';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Contr neg.dgn/bdrg+BV-dl2 - Wkl betaling  *
         WUF3CD = '0';                        // //SWITCH112   ES0
         WUW211 = '0';                        // //SW211       ES0
           If #1GLNB < *ZERO OR #1GMNB < *ZERO OR #1GYNB < *ZERO OR #1GPNB < *ZERO OR #1JNNB < *ZERO
         WUF3CD = '1';                        // //SW112 AAN
           Endif;
           //AFD
           //LIDNR
           //REF.MND
           //HBV
           //VBV
           //SWITCH211
            // Switch112=1 --> error message : negatieve dagen of bedragen (Fiel
            // CASE: WRK.Switch112 is 1
           MDBVNEG(#1AACD:#1AFNB:RMPARM:#1JONB:#1G7NB:WUW211);
             If WUF3CD = '1';
              // Send message 'Negatieve dagen/bedragen'
         ZAMSID = 'USR0902';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Switch211=1 --> error message : BVmin groter dan dagen BV voor di
            // CASE: WRK.Switch211 is 1
           If WUW211 = '1'; //*IF
              // Send message 'BV min > dagen ingebracht'
         ZAMSID = 'USR2103';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Type kode = 01/03/05/...../49 : berekenen wklh (gn dok/rivierarb.
            // CASE: WRK.Sw type01/03/08/11/12 is Y
           If WULOCD = 'Y'; //*IF
              // CASE: DTL.Beroep kode is Nt 09 : geen dok A'pen
             If #1BACD <> '09'; //*IF
                // Berekenen VW:01,03,+exter - Wkl betaling  *
         WUWU48 = '0';
               EXTBDR = #1HPNB;
               EXTDAG = #1DDNB;
               WKLTER = 0;
               SOMTER = 0;
               RMPAR = #1GWNB;
               If #1BCCD <> 'P';
                 //REF.MND
                 //B/E
                 //TYPE WKL
                 //WKLH=Y/N
                 //BEDRAG WKLH
                 //DAGBEDRAG
                 //VOL BAREMABD
                 //HALF BAREMAB
                 //VOLLE DAGEN
                 //HALVE DAGEN
                 //SWITCH148
               MDCALC01(RMPAR:BYEURO:#1A1CD:#1BDST:EXTBDR:EXTDAG:HVBAR:HHBAR:HVTOT6:HHTOT6:WUWU48:WK
                 ELSE;
                 //REF.MND
                 //VOLLE DAGEN
                 //HALVE DAGEN
                 //SWITCH148
                 MDPWATOT(#1AACD:#1AFNB:RMPAR:HVTOT6:HHTOT6:WUWU48);
                   If WUWU48 <> '5';
                   //REF.MND
                   //TYPE WKL
                   //WKLH=Y/N
                   //BEDRAG WKLH
                   //VOLLE DAGEN
                   //HALVE DAGEN
                   //SWITCH148
                   //DAGBEDRAG
                 MDPWATOE(#1AACD:#1AFNB:RMPAR:#1A1CD:#1BDST:EXTBDR:HVTOT6:HHTOT6:WUWU48:WKLTER:SOMTE
                   ENDIF;
               ENDIF; //SUBBEROEP NIET P
               HWKL = WKLTER;
               SOM = SOMTER;
                // SOM WKLH IS BEPAALD VOOR TYPE 01,03,07,08,11,12, ...
                // CASE: WRK.Switch148 is 5
               If WUWU48 = '5'; //*IF
                  // Send message 'PWAtoeslag :dgn PWA>dgnR6'
         ZAMSID = 'USR4189';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
                // CASE: WRK.Switch148 is 1
               If WUWU48 = '1'; //*IF
                  // Setup message data for message
         ZA0140 = #1ALST;                        // //W1ma
         ZA0141 = #1AMST;                        // //W1di
         ZA0142 = #1ANST;                        // //W1wo
         ZA0143 = #1AOST;                        // //W1do
         ZA0144 = #1APST;                        // //W1vr
         ZA0145 = #1AQST;                        // //W1za
         ZA0146 = #1AKST;                        // //W1zo
                  // Send message 'Weekreg. week1/ type fout'
         ZAMSID = 'USR0223';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Type kode = 09 of 10 (18):Berekenen wklh + veld atoma foutief
            // CASE: WRK.Sw type 09/10 is Y
           If WULQCD = 'Y'; //*IF
              // Berekenen brugp:type09,10 - Wkl betaling  *
             If #1BDST = 'Y'; //WEL WKLH
               If #1HPNB <> *ZERO; //BEDRWKL NT 0
                 SOM = #1HPNB; //SOM
                 HWKL = #1HPNB; //SOM
               ELSE; //BEDRWKLH=0
                 If #1DDNB <> *ZERO; //DAGBEDR NT 0
                   VOLDBD = #1DDNB;
                   If #1A1CD <> '10';
                     EVAL(H) HALDBD = #1DDNB / 2;
                   ELSE;
                     HALDBD = #1DDNB;
                   ENDIF;

                   If #1GWNB < 201004;
                     If #1AKDT >= 19940501;
                       If #DVPBP > 0; //INH.%
                         EXSR T09HVB;
                       ELSE; //INH%=0
                         EXSR T09DAG;
                       ENDIF; //INH%>0
                     ELSE; //BEGIN WKL<
                       EXSR T09DAG;
                     ENDIF; //#1AKDT
                   ELSE;
                     EXSR T09DAG;
                   ENDIF;

                 ELSE; //DAGBEDR = 0
                   EXSR T09HVB;
                 Endif; //END DAGBEDR
                 If #1GWNB <= 200111 AND BYEURO = 'E';
                   EUROOU = 0;
                   EUROIN = SOM;
                   MDBFNREU(EUROIN:EUROOU);
                     SOM = EUROOU;
                 ENDIF;
                  // BEDRAG WKLH IS BEREKEND VOLGENS DE GOEDE TABEL BAREMA'S
               Endif; //END WKL NT 0
             ELSE; //GN = N
               SOM = *ZERO;
             Endif; //END GN = Y
             HWKL = SOM; //VUL BEDR WKL
              // SOM WKLH IS BEPAALD VOOR TYPE 09 EN 10
              // BEREKENEN VOLGENS DAGBEDRAG ZONDER INHOUDINGSPERCENTAGE
           Endif; //*FI
            // Type kode = 15 brugp grensarb. : berekenen wklh + maandbedrag
            // CASE: DTL.Type kode is 15 : grensarbeiders
           If #1A1CD = '15'; //*IF
              // Berekening wkl : type15 - Wkl bet  *
             If #1BDST = 'Y'; //WEL WKLH
               If #1HPNB <> *ZERO; //BEDRWKL NT 0
                 SOM = #1HPNB; //SOM
                 HWKL = #1HPNB; //SOM
               ELSE; //BEDRWKLH=0
                 SOM = HVTOT6 * HVBAR;
                 If HHTOT6 <> *ZERO;
                   SOM2 = HHTOT6 * HHBAR;
                   SOM = SOM + SOM2; //+1 HALVE DAG
                 Endif; //END DECIM
                 If #1GWNB <= 200111 AND BYEURO = 'E';
                   EUROOU = 0;
                   EUROIN = SOM;
                   MDBFNREU(EUROIN:EUROOU);
                     SOM = EUROOU;
                 ENDIF; //200111

               Endif; //END WKL NT 0
             ELSE; //GN = N
               SOM = 0;
             Endif; //END GN = Y
             HWKL = SOM; //VUL BEDR WKL
              //SOM WKLH BEPAALD,NU HBEDBZ:DAGBEDRAG=MAANDBEDR INVULLEN IN HBEDBZ
             If #1BCST = 'N'; //BZ=NEEN
               HBEDBZ = 0;
             ELSE; //WEL TOESLAG
               If #1GYNB = 0; //BEDRAG BZ NT
                 HBEDBZ = #1DDNB; //DAGBEDR=MAAN
               ELSE; //BZ ZELF ING.
                 HBEDBZ = #1GYNB;
               Endif;
             Endif;
           Endif; //*FI
            // Type kode = 24+25:wisselkoerstoeslag+ndl grensarbeiders: berekene
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Type wklh. kode is 24 : wisselkoerstoeslag
            //   !- c2    : DTL.Type wklh. kode is 25
            //   '-
           If #1A1CD = '24' OR #1A1CD = '25'; //*IF
              // Berekenen wklh:24+25:exte - Wkl betaling  *
              //24=WISSELKOERSTOESL/25=NDL GRENSARB:ENKEL BEDRAG WKL MOET INGEVULD ZIJN
             HY = #1GJNB;
         WUW233 = '0';
         WUW235 = '0';
             If HY <> WUFDND;
               EXTBDR = 0;
             ELSE;
               EXTBDR = #1HPNB;
             ENDIF;
             EXTMND = #1GWNB;
             EXTY = #1GJNB;
             EXTQ = #1DBNB;
             EXTS = #1DCNB;
             WKLTER = 0;
             BZTER = 0;
             //TYPE WKL
             //WKLH=Y/N
             //BEDRAG WKLH
             //SUBBEROEP
             //BEDRAG WKLH
             //Y
             //Q
             //S
             //SWITCH233
             //SWITCH235
             MDCALC24(#1A1CD:#1BDST:EXTBDR:#1BCCD:EXTMND:EXTY:EXTQ:EXTS:WUW233:WUW235:WKLTER:BZTER);
               HWKL = WKLTER;
             HBEDBZ = BZTER;
              // CASE: WRK.switch233 is 1
             If WUW233 = '1'; //*IF
                // Send message 'Bedrag groter dan maximum'
         ZAMSID = 'USR2302';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // CASE: WRK.Switch235 is 1
             If WUW235 = '1'; //*IF
                // Send message 'Zelf bedrag invullen'
         ZAMSID = 'USR2316';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Type kode=26/50/51/52/53 : berekenen wklh
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5
            //   !- c1    : DTL.Type wklh. kode is 26 (voltooiingspremie)
            //   !- c2    : DTL.Type wklh. kode is 50
            //   !- c3    : DTL.Type wklh. kode is 51
            //   !- c4    : DTL.Type wklh. kode is 52
            //   !- c5    : DTL.Type wklh. kode is 53
            //   '-
           If #1A1CD = '26' OR #1A1CD = '50' OR #1A1CD = '51' OR #1A1CD = '52' OR #1A1CD = '53'; //*
              // Berekenen wklh : type 91 - Wkl betaling  *
             HWKL = #1HPNB; //BEDR WKLH
             HBEDBZ = 0; //BEDR BZ=0
             If #1A1CD = 'GI' OR #1A1CD = 'GK';
               HUREN = #1GINB;
             ENDIF;
             If #1GWNB < 209912;
               HWKL = #1HPNB; //BEDR WKLH
               HBEDBZ = 0; //BEDR BZ=0
               If #1A1CD = 'GI' OR #1A1CD = 'GK';
                 HUREN = #1GINB;
               ENDIF;
             ELSE;
               HUREN = #1GINB;
             ENDIF;
             If #1A1CD = '53' AND #1DOCD = '..ICLD.';
               HVD6 = #1GLNB;
               HVTOT6 = #1GLNB;
               HVAL6 = #1GLNB;
               If #1HPNB = 0;
                 HWKL53 = HVD6 * #1DDNB;
               ENDIF;
               If #1HPNB = 0;
                 HWKL = HVD6 * #1DDNB;
                 #1HPNB = HVD6 * #1DDNB;
               ELSE;
                 If #1HPNB <> HWKL53;
                   HWKL = #1HPNB;
                 ELSE;
                   HWKL = HVD6 * #1DDNB;
                   #1HPNB = HVD6 * #1DDNB;
                   HWKL53 = HVD6 * #1DDNB;
                 ENDIF;
               ENDIF;
             ENDIF;
           Endif; //*FI
            // Beroep=09: Dok nt A'pen+rivierarb.: berekenen wklh
            // CASE: DTL.Beroep kode is 09 : Dok A'pen
           If #1BACD = '09'; //*IF
              // Berek. Dok nt A'pen BZ=K - Wkl bet  *
             If #1BDST = 'Y'; //WEL WKLH
               If #1HPNB <> *ZERO; //BEDRWKL NT 0
                 SOM = #1HPNB; //SOM
                 HWKL = #1HPNB; //SOM
               ELSE; //BEDRWKLH=0
                 If #1DDNB <> 0; //DAGBEDR NT 0
                   SOM = HVTOT5 * #1DDNB;
                   If HHTOT5 <> *ZERO;
                     SOM3 = HHTOT5 * #1DDNB;
                     SOM2 = SOM3 / 2;
                     SOM = SOM + SOM2; //+1 HALVE DAG
                   Endif; //END DECIM
                 ELSE; //DAGBEDR=0
                   SOM = HVTOT5 * HVBAR;
                   If HHTOT5 <> *ZERO;
                     SOM2 = HHTOT5 * HHBAR;
                     SOM = SOM + SOM2; //+1 HALVE DAG
                   Endif; //END DECIM
                 Endif; //END DAGBEDR
                 If #1GWNB <= 200111 AND BYEURO = 'E';
                   EUROOU = 0;
                   EUROIN = SOM;
                   MDBFNREU(EUROIN:EUROOU);
                     SOM = EUROOU;
                 ENDIF; //200111

               Endif; //END WKL NT 0
               HWKL = SOM;
             ELSE; //GN = N
               HWKL = 0;
             Endif; //END GN = Y
              // SOM WKLH IS BEPAALD VOOR TYPE=01 DOK NT A'PEN EN RIVIERARB.
           Endif; //*FI
            // CASE:
            //  - c1ORc2
            //   !- c1    : WRK.switch type 09-10 is 1
            //   !- c2    : WRK.switch type 09-10 is 2
            //   '-
           If WUPZCF = '1' OR WUPZCF = '2'; //*IF
              // Veld BD is ingevuld Karina
              // CASE: DTL.Wkl bet CDE vrij2 is ingevuld
             If #1MPCE <> *BLANK; //*IF
                // CASE:
                //  - c1ORc2
                //   !- c1    : DTL.Wkl bet CDE vrij2 is vraagteken1
                //   !- c2    : DTL.Wkl bet CDE vrij2 is vraagteken2
                //   '-
               If #1MPCE = '?' OR #1MPCE = ' ?'; //*IF
                  // Overzicht documenten BD - Documenten Betaaldossier  *
                 CLEAR   ADRC;
     ADYVCJ = @CN(034);
     ADYXCJ = WUYXCJ;
                 CLEAR   AERC;
     AEAACD = #1AACD;
     AEAFNB = #1AFNB;
     AEY0CJ = WUWUBE;
                 AEQLDM = #1GWNB; //Doc BD meer RM
                 AEQMDM = WUZKNR; //Doc BD meer IM
     AEY1CJ = @CN(034);
     AEY2CJ = *BLANK;
     AEW3TN = *BLANK;
     AEY3CJ = #1EGCD;
                 AEQ4DE = WUQ4DE; //Doc BD meer dtm
                 AEQNDM = #1HJNB; //Doc BD meer dok
     AEY4CJ = 'D';

                 //Overzicht docum
                 //KEY: Documenten
                 //RCD: Documenten
                 //wrk return key
                 //WRK document BD

                 LZGWEFR(W0RTN:ADRC:AERC:WQ0316:WQ0317);
                         If %Error();
                    // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LZGWEFR';
                    // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                   EXSR ZASNMS;
                 Endif;
                  // Error detected?
                 If W0RTN <> *BLANK;
                   *In99 = *On;
                 Endif;
                  // Check Documenten - Documenten BD meerdere  *
                 EXSR SCRVGN;
                  // CASE: LCL.WRK record found is Yes
                 If YL0018 = 'Y'; //*IF
         #1MPCE = *BLANK;                        // //Wkl bet CDE vri
         #1MPCE = 'Y';                        // //Wkl bet CDE vri
                 ELSE;
                    // CASE: *OTHERWISE
         #1MPCE = *BLANK;                        // //Wkl bet CDE vri
                 Endif; //*FI
               ELSE;
                  // CASE: *OTHERWISE
                  // Test veld BD Karina
                  // CASE:
                  //  - NOTc1 AND NOT c2
                  //   !- c1    : DTL.Wkl bet CDE vrij2 is Y
                  //   !- c2    : DTL.Wkl bet CDE vrij2 is Blanco
                  //   '-
         Y0CX01 = '0';           // //1
                 If #1MPCE = 'Y'; //*IF
                 ELSE;
                   If #1MPCE = *BLANK; //*IF
                   ELSE;
         Y0CX01 = '1';
                   Endif; //*FI
                 Endif; //*FI
                 If Y0CX01 = '1'; //*IF
                    // Setup message data for message
         ZA0147 = #1MPCE;                        // //Wkl bet CDE vri
         ZA0148 = @CN(035);                        // //Wrk veld 15 lan
                    // Send message 'Waarde moet &2 zijn'
         ZAMSID = 'USR6029';
                   EXSR ZASNMS;
                   *In99 = *On;

                    // *Set Cursor: DTL.Wkl bet CDE vrij2  (*Override=*YES)
                   W0ROW1 = 015;
                   W0COL1 = 068;
         W0OVR1 = '1';                        // //*YES
         WUPSCD = '1';                        // //Switch berekeni
                 ELSE;
                    // CASE: *OTHERWISE
                    // Check Documenten - Documenten BD meerdere  *
                   EXSR SCRVGN;
                    // CASE:
                    //  - c1 AND c2
                    //   !- c1    : DTL.Wkl bet CDE vrij2 is Y
                    //   !- c2    : LCL.WRK record found is No
                    //   '-
         Y0CX01 = '0';           // //1
                   If #1MPCE = 'Y'; //*IF
                     If YL0018 = 'N'; //*IF
         Y0CX01 = '1';
                     Endif; //*FI
                   Endif; //*FI
                   If Y0CX01 = '1'; //*IF
                      // Setup message data for message
         ZA0149 = #1MPCE;                        // //Wkl bet CDE vri
                      // Send message 'Geen documenten BD'
         ZAMSID = 'USR6400';
                     EXSR ZASNMS;
                     *In99 = *On;

                      // *Set Cursor: DTL.Wkl bet CDE vrij2  (*Override=*YES)
                     W0ROW1 = 015;
                     W0COL1 = 068;
         W0OVR1 = '1';                        // //*YES
         WUPSCD = '1';                        // //Switch berekeni
                   ELSE;
                      // CASE: *OTHERWISE
                      // CASE:
                      //  - c1 AND c2
                      //   !- c1    : DTL.Wkl bet CDE vrij2 is Blanco
                      //   !- c2    : LCL.WRK record found is Yes
                      //   '-
         Y0CX01 = '0';           // //1
                     If #1MPCE = *BLANK; //*IF
                       If YL0018 = 'Y'; //*IF
         Y0CX01 = '1';
                       Endif; //*FI
                     Endif; //*FI
                     If Y0CX01 = '1'; //*IF
                        // Setup message data for message
         ZA0150 = #1MPCE;                        // //Wkl bet CDE vri
                        // Send message 'Er zijn documenten BD'
         ZAMSID = 'USR6401';
                       EXSR ZASNMS;
                       *In99 = *On;

                        // *Set Cursor: DTL.Wkl bet CDE vrij2  (*Override=*YES)
                       W0ROW1 = 015;
                       W0COL1 = 068;
         W0OVR1 = '1';                        // //*YES
         WUPSCD = '1';                        // //Switch berekeni
                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // BC/X2
            // CASE: DTL.Lid nr is LT 900000
           If #1AFNB < @CN(006); //*IF
              // Berekenen bedrag BC/X2 - Wkl bet  *
              // BIJDRAGEN WIJZIGEN OP 07/2024
              // ANTHEA GEFET 07/2024 DOOR NAAR AS/400
              // DUS INDIEN 202407 ZELF OMZETTEN NAAR 202401
             If #1E9NB = 202407;
               #1E9NB = 202401;
             ENDIF;

     EvalR   WUQSCD = '0';                        // //SW88
     EvalR   WUQ3CD = '0';                        // //SW90
         JWKLJ = BYEENB;            // //4 0
     EvalR   MWKLM = BYEENB;            // //2 0
              // JWKLJ EN MWKLM ZIJN JAAR EN MAAND WERKLOOSHEIDSMAAND (LOP.MND)
         JBIJDR = #1AEDD;           // //4 0          L.BET.BIJDR
     EvalR   MBIJDR = #1AEDD;           // //2 0          L.BET.BIJDR
              // BIJ X2 DLBB AL OP VOORHAND +1 DOEN VOOR BC
         SWBCP1 = 'N';           // //1
             If #1CMCD = '4'; //BET WIJZE=4
         USRP6 = BIBLCD;
               If BIBLCD <> 'RVDS    ' AND WUDTCC <> 'BYPAS';
                 If #1KVCE = ' ';
                   If #1GWNB = BYEENB; //ACHT=WKLMND
                     If #DCA70 = '1'; //V.M.
                       If #1GWNB >= #DFZDM; //GELDIG VANAF
                         If MBIJDR = 12;
         SWBCP1 = 'Y';           // //1
                           MBIJDR = 01;
                           JBIJDR = JBIJDR + 1;
                         ELSE;
                           MBIJDR = MBIJDR + 1;
                         ENDIF;
                       ENDIF;
                     ENDIF;
                   ENDIF;
                 ENDIF;
               ENDIF;
             ENDIF;

              //** BETAALWIJZE = 4--> BC EN X2      AANTAL BC > 0
              //          #1CMCD    IFEQ '4'                        BET WIJZE=4
             If #1LPNB > 0; //BCAANTAL NT0
         JBCJBC = #1E9NB;           // //4 0          JR KAT BC
               If SWBCP1 = 'Y';
                 JBCJBC = JBCJBC + 1;
               ENDIF;

               If JBIJDR <> JWKLJ;
                 If MBIJDR <> 12;
                   MAXAAN = 12 - MBIJDR;
                   If MAXAAN < #1LPNB;
                     BCAAN1 = MAXAAN;
                     BCAAN2 = #1LPNB - BCAAN1;
                      //BC
         JRCATB = JBIJDR;
     EvalR   JRCATB = '01';
                   ELSE; //DUS ZELFDE J
                     BCAAN1 = #1LPNB;
                     BCAAN2 = 0;
                      //BC
         JRCATB = JBIJDR;
     EvalR   JRCATB = '01';
                   Endif;
                   If JBIJDR <> JBCJBC;
     EvalR   WUQSCD = '1';
                   Endif;
                 ELSE; //12E MAAND
                   JBIJDR = JBIJDR + 1; //VOLGEND JR
                   If JBIJDR <> JBCJBC;
     EvalR   WUQSCD = '1';
                   Endif;
                   BCAAN1 = #1LPNB;
                   BCAAN2 = 0;
                    //BC
         JRCATB = JBIJDR;
     EvalR   JRCATB = '01';
                 Endif; //END =12E MND
               ELSE; //HUIDIG JAAR
                 If MBIJDR <> 12;
                   JRKATT = 0;
                   JRKATT = JBIJDR + 1;
         TES94 = JRKATT;            // //6 0
     EvalR   TES94 = '01';
                   MAXAAN = 12 - MBIJDR;
                    //BC
         JRCATB = JBIJDR;
     EvalR   JRCATB = '01';
                   CHAIN (#1AACD:#1CLCD:TES94) @B1REEU ;
       *in50 = (%found() = *Off); //*
                   If *In50;
                     BCAAN1 = #1LPNB;
                   Endif;
                   If *In50;
                     BCAAN2 = 0;
                   Endif;
                   If NOT *In50;
                     If MAXAAN < #1LPNB;
                   Endif;
                     BCAAN1 = MAXAAN;
                     BCAAN2 = #1LPNB - BCAAN1;
                   ELSE; //DUS ZELFDE J
                     BCAAN1 = #1LPNB;
                     BCAAN2 = 0;
                   Endif;
                   If JBIJDR <> JBCJBC;
     EvalR   WUQSCD = '1';
                   Endif;
                 ELSE; //12E MAAND
                   JRKATT = 0;
                   JRKATT = JBIJDR + 1;
         TEST94 = JRKATT;           // //6 0
     EvalR   TEST94 = '01';
                    //BC
         JRCATB = JRKATT;
     EvalR   JRCATB = '01';
                   CHAIN (#1AACD:#1CLCD:TEST94) @B1REEU ;
       *in50 = (%found() = *Off); //*
                   If *In50;
                     BCAAN1 = #1LPNB;
                   Endif;
                   If *In50;
                     BCAAN2 = 0;
                   Endif;
                   If NOT *In50;
                     If JRKATT <> JBCJBC;
                   Endif;
     EvalR   WUQSCD = '1';
                   Endif;
                   If NOT *In50;
                     MAXAAN = 12 - MBIJDR;
                   Endif;
                   If NOT *In50;
                     If MAXAAN < #1LPNB;
                   Endif;
                     BCAAN1 = MAXAAN;
                     BCAAN2 = #1LPNB - BCAAN1;
                   ELSE; //DUS ZELFDE J
                     BCAAN1 = #1LPNB;
                     BCAAN2 = 0;
                   Endif;
                 Endif; //END 12E MND
                  //                    Z-ADD#1LPNB    BCAAN1
                  //                    Z-ADD0         BCAAN2
               Endif; //END HUIDIG J

               If SWBCP1 = 'Y';
     EvalR   XX1M = #1AEDD;             // //2 0          MM BC
         XX1J = #1AEDD;             // //4 0          L.BET.BIJDR
         XX2J = #1E9NB;             // //4 0          JJMM BC
                 If XX1M = 12;
                   XX1J = XX1J + 1;
                 ENDIF;
                 If XX1J = XX2J;
         WUQSCD = '0';
                 ENDIF;
               ENDIF;

               If WUQSCD = '0';
                 //AFD.NR
                 //KATEG KODE
                 //KATEG MMJJJJ

                  //                    Z-ADD#1E9NB    JRCATB
         CATBC = #1CLCD;

                 CHAIN (#1AACD:#1CLCD:#1E9NB) @B1REEU ;
       *in50 = (%found() = *Off); //*
                 If *In50;
                   AFDBD1 = 0;
                 Endif;
                 If NOT *In50;
                   AFDBD1 = B1FBNB;
                 Endif;
                 If NOT *In50;
                   JRCATB = B1E9NB;
                 Endif;
     C  N50              MOVEL     B1CLCD        CATBC
                 HBEDB1 = BCAAN1 * AFDBD1; //X BEDR SUPPL
                 If BCAAN2 > 0;
                   E9NBVJ = #1E9NB + 100; //VOLGEND JAAR
                    //=== OPHALEN JUISTE JAARTAL BC --> WKL BET
                   //AFD.NR
                   //KATEG KODE
                   //VOLG JR KAT
                   SETLL (#1AACD:#1CLCD:E9NBVJ) @B1REEU;
                   READ @B1REEU ;
       *in50 = %eof();
                   If *In50;
                     MDKAT = 0;
                   Endif;
                   If *In50;
                     WYZKAT = 0;
                   Endif;
                   If *In50;
                     AFDBD2 = 0;
                   Endif;
     C   50              GOTO      GNKAT
     C  N50              MOVEL     B1CLCD        KODKAT            2
                   If KODKAT = #1CLCD;
     EvalR   MDKAT = B1E9NB;            // //2 0
                     WYZKAT = B1E9NB;
                     AFDBD2 = B1FBNB;
                   ELSE;
                     MDKAT = 0;
                     WYZKAT = 0;
                     AFDBD2 = 0;
     C                   GOTO      GNKAT
                   Endif;
     C     GNKAT         TAG
                   If MDKAT = 0; //GN WIJZIG.JR
                     BCAAN1 = BCAAN1 + BCAAN2; //AANT1+AANT2
                     RESBC1 = BCAAN2 * AFDBD1; //DEEL2XBEDR1
                     HBEDB1 = HBEDB1 + RESBC1; //DEEL2+DEEL1
                     BCAAN2 = 0;
                     HBEDB2 = 0;
                   Endif;
                   If MDKAT = 1; //JANUARI
                     HBEDB2 = BCAAN2 * AFDBD2; //X BEDR SUPPL
                   ELSE; //FEB->DEC
                     If MDKAT > 1;
                       AANMND = MDKAT - 1;
                       If BCAAN2 > AANMND;
                         RESBC1 = AANMND * AFDBD1;
                         BCAAN1 = BCAAN1 + AANMND;
                         HBEDB1 = HBEDB1 + RESBC1;
                         BCAAN2 = BCAAN2 - AANMND;
                         HBEDB2 = BCAAN2 * AFDBD2;
                       ELSE;
                         RESBC1 = AANMND * AFDBD1;
                         BCAAN1 = BCAAN1 + AANMND;
                         HBEDB1 = HBEDB1 + RESBC1;
                         BCAAN2 = 0;
                         HBEDB2 = 0;
                       Endif;
                     Endif;
                   Endif;
                 ELSE; //BCAAN2=0
                   BCAAN2 = 0;
                   HBEDB2 = 0;
                   AFDBD2 = 0;
                 Endif; //BCAAN2>0
                 HBEDBC = HBEDB1 + HBEDB2; //TOTAAL BC BEDR.
                  //                    MOVE HBEDBC    #1LQNB           SCHERM OPVUL
                 #1LQNB = HBEDBC; //SCHERM OPVUL
               Endif;
             ELSE; //AANTAL=0
               #1LQNB = 0;
               HBEDBC = 0;
             Endif;

              // NU EVENTUEEL X2 OPVULLEN
             If #1CMCD = '4'; //BET WIJZE=4
         USRP6 = BIBLCD;
               If BIBLCD <> 'RVDS    ' AND WUDTCC <> 'BYPAS';
                 If #1KVCE = ' ';
                   If #1GWNB = BYEENB; //ACHT=WKLMND
                     If #DCA70 = '1'; //V.M.
                       If #1GWNB >= #DFZDM; //GELDIG VANAF
                         If #1ANDM = 202407;
                           If #1FBNB = 0;
                             J20247 = 202401;
                              //OPHALEN BEDRAG BIJDRAGE
                             //AFD.NR
                             //KATEG KODE
                             //KATEG MMJJJJ
                             CHAIN (#1AACD:#1M5CD:J20247) @B1REEU ;
       *in50 = (%found() = *Off); //*
                             If *In50;
                               #1FBNB = 0;
                             Endif;
                             If NOT *In50;
                               #1FBNB = B1FBNB;
                             Endif;
                           ENDIF;
                         ENDIF;
                         #1JQNB = #1FBNB; //X2 OPVULLEN
                         HX2 = #1FBNB;
                       ELSE;
                         #1JQNB = 0; //X2
                         HX2 = 0;
                       ENDIF;
                     ELSE; //GN CODE=1
                       #1JQNB = 0; //X2
                       HX2 = 0;
                     ENDIF;
                   ELSE; //GN LOP MND
                     #1JQNB = 0; //X2
                     HX2 = 0;
                   Endif;
                 Endif; //#1KVCE=BLANK
               Endif; //RVDS/BYPAS
             ELSE; //GN BET W=4
               #1JQNB = 0; //X2
               HX2 = 0;
             Endif; //END BET.W=4
              //JR CONTR.RC. X 12 & JR LAATST BET. BIJDR. X 12. DAN DE BIJHORENDE
              //MAANDEN OPTELLEN. ZO HEEFT MEN GEMAKKELIJK HET VERSCHIL IN MAANDEN
              // JWKLJ EN MWKLM ZIJN JAAR EN MAAND WERKLOOSHEIDSMAAND (LOP.MND)
         JBIJDR = #1AEDD;           // //4 0          L.BET.BIJDR
     EvalR   MBIJDR = #1AEDD;           // //2 0          L.BET.BIJDR
             If HWKL > 0;
               JRNU = JWKLJ * 12; //CONTROLEREC
               JRBET = JBIJDR * 12; //LAATSTE BIJD
               JRNU = JRNU + MWKLM; //+ MAAND
               JRBET = JRBET + MBIJDR; //+ MAAND
               BCJANE = JRNU - JRBET; //VERSC V.D. 2
                // VANAF IM 01/2005 NOG SLECHTS 6 MAAND ACHTERSTALLIGE BIJDRAGEN TOEGELATEN
               If BCJANE >= 7 AND #1LQNB = 0 AND #1JQNB = 0 AND #1GWNB > #1AEDD;
                 If #1AHNB = 0;
     EvalR   WUQ3CD = '1';                        // //SW90
                    // VERPLICHT TEN MINSTE 1 BC IN TE GEVEN
                 ENDIF;
               Endif;
             Endif; //HWKL>0
              // Sw88:BC jaar foutief of maximaal af te houden voor 1 jaar
              // CASE: WRK.Switch88 is 1
             If WUQSCD = '1'; //*IF
                // Send message 'Jaar BC foutief/aanpassen'
         ZAMSID = 'USR0491';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // BC aantal <= 12 anders error message
              // CASE: DTL.BC aantal is GT 12
             If #1LPNB > 12; //*IF
                // Setup message data for message
               ZA0151 = #1LPNB; //BC aantal
                // Send message 'BC aantal te groot'
         ZAMSID = 'USR0413';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // Combinatie BC aantal met kategorie kode/mmjjjj
              // CASE: DTL.BC aantal is niet 0
             If #1LPNB <> *ZERO; //*IF
                // CASE: DTL.Kateg kode is EQ *BLANK
               If #1CLCD = *BLANK; //*IF
                 #1LQNB = *ZERO; //BC bedrag
                  // Send message 'Bc aantal/kategorie'
         ZAMSID = 'USR0412';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Combinatie BC aantal met kategorie kode/mmjjjj
              // CASE: DTL.Kateg kode is NE *BLANK
             If #1CLCD <> *BLANK; //*IF
                // CASE: DTL.BC aantal is = 0
               If #1LPNB = *ZERO; //*IF
                 #1LQNB = *ZERO; //BC bedrag
                  // Send message 'Bc aantal/kategorie'
         ZAMSID = 'USR0412';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Check bouwcode vnf10/2017 - Wkl betaling  *
         OUINON = 'N';           // //1
         BZBW = #1A4CD;             // //2
         WUS5CL = OUINON;
            //          'L0DPUFR' DSPLY'ROSANNE'
            //          WUGUCG    DSPLY'ROSANNE'                  MEERDERE UREN P
            //          WUHHCM    DSPLY'ROSANNE'                  F1
            //          WUDJNU    DSPLY'ROSANNE'                  TELLER
            // BZ=B --> bepalen welke toeslag : A, B, C of D  of 29 en kleiner
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.BZ kode is B
            //   !- c2    : WRK.Switch bouw 102017 is Y
            //   '-
           If #1A4CD = 'B' OR WUS5CL = 'Y'; //*IF
              // Bepalen BZ-kode bouw - Wkl bet  *
     EvalR   KODE2 = #1DOCD;            // //1            A,B,C,D
         KODE = KODE2;             // //2            A ,B ,C ,D
             If #1A1CD = '21' AND #1A4CD = 'B ';
         KODE = WUDXCC;                          // //A ,B ,C ,D
             ENDIF;
             If #1A1CD = '22' AND #1A4CD = 'B ';
         KODE = WUDXCC;                          // //A ,B ,C ,D
             ENDIF;
              // 102017
             If WUS5CL = 'Y';
               EvalR   KODE2 = #1A4CD;            // //1            CA CB C2 ...
               KODE = *BLANK;             // //2            A ,B ,C ,D
               KODE = KODE2;             // //2            A ,B ,C ,D
             ENDIF;
             If #1AACD = '29' AND #1AFNB = '183475';
               DSPLY ('LVN0UFR') 'ROSANNE';
               DSPLY ('WUS5CL') 'ROSANNE';
               DSPLY (WUS5CL) 'ROSANNE';
               DSPLY (KODE) 'ROSANNE';
             ENDIF;
           Endif; //*FI
            // Ophalen barema BZ+bedragN - Wkl betaling  *
           EvalR   WUN3CD = '0';                        // //SWITCH64
           EvalR   WUN4CD = '0';                        // //SWITCH65
           EvalR   FOUTBZ = '0';           // //1
           WUAYCL = '0';           // //1
           BZINH = 0;

           If HBEDBZ = *ZERO;
             If #1A4CD = 'G '; //BZKODE NT BL
               If #1BCST = 'Y'; //GN BZ = Y
                 If #1GYNB <> *ZERO; //BZBEDR NT 0
                   If WUMCCN = '1';
                     HBEDBZ = #1GYNB;
                   ENDIF;
                 ENDIF;
               ENDIF;
             ENDIF;
           ENDIF;

           If HBEDBZ = *ZERO;
             If #1A4CD <> *BLANK; //BZKODE NT BL
               If #1BCST = 'Y'; //GN BZ = Y
                 If #1GYNB <> *ZERO; //BZBEDR NT 0
                   HBEDBZ = #1GYNB;
                    //          #1BENR    IFNE *ZERO                      BZBEDR NT 0
                    //                    Z-ADD#1BENR    BZINH
                    //                    ENDIF
                 ELSE; //BEDRAG BZ=0

                   OUINON = 'N';           // //1
                   BZBW = #1A4CD;             // //2
                   MDBW001(BZBW:OUINON);
                   If #1A1CD = '01' OR #1A1CD = '03' OR #1A1CD = '11';
                     If #1A4CD = 'C2';
                       OUINON = 'N';
     C                   GOTO      NIKSB
                     ENDIF;
                   ENDIF;

                   If OUINON = 'Y';
                     EvalR   P2T2 = BZBW;             // //1
                     KODE = *BLANK;
                     KODE = P2T2;
     C                   GOTO      TOCHB
                      //? WAAROM TOCH B ????
                      //                    GOTO NIKSB
                   ENDIF;

                   If #1A4CD <> 'BB';
                     If #1A4CD <> 'B '; //KODE BZ NT B
                       If #1A4CD <> 'Z ' AND #1A4CD <> 'M ' AND #1A4CD <> 'NA' AND #1A4CD <> 'FA' AN
                         EXSR BZROU1;
                       Endif; //END BZ=Z --> 35
                     ELSE; //KODE BZ = B
     C     TOCHB         TAG
                       //KODE BZ
                       //WKLH KODE
                        //VNF 10/99 NIEUWE BEREKENING 2,5 DGN BZ & 2,5 DGN VORST MOET BEREKEND WORD
                        //EN ALS 5 DGN BOUW & NT AFZOND. ALS 2 VOLLE BZ + 2 VOLLE VORST &1HALVE BZ+
                        //1HALVE VORST,EERST ALLES OPTELLEN & DAN PAS BEREKENEN VOLGENS BZ-BEDRAG
                       BZTER = 0;
                       VORTER = 0;
                       ALBBTE = 0;
                       BZBBTE = 0;
                       VOBBTE = 0;
                       RMPAR = #1GWNB;
                       //REF.MND
                       //A,B,C,D
                       //B/E
                       //VOL BAREMABD
                       //HALF BAREMAB
                       //VOLLE DAGEN
                       //HALVE DAGEN
                       //SWITCH
                       MDBOUW6(#1AACD:#1AFNB:RMPAR:KODE:BYEURO:HVBZ:HHBZ:HVVOR:HHVOR:WUN4CD:BZTER:VO
                         HBEDBZ = BZTER;
                       HBEDVO = VORTER;
                       WUFZNE = ALBBTE;
                       WUF0NE = BZBBTE;
                       WUF1NE = VOBBTE;
                       If #1AACD = '29' AND #1AFNB = '183475';
                          //          'LVNYUFR' DSPLY'ROSANNE'
                          //          'MDBOUW6' DSPLY'ROSANNE'
                          //          BZTER     DSPLY'ROSANNE'
                       ENDIF;
                     Endif; //END BZ=B
                   ELSE; //BZ=BB
                     BZTER = 0;
                     VORTER = 0;
                     RMPAR = #1GWNB;
                     //REF.MND
                     //VOL BAREMABD
                     //HALF BAREMAB
                     //VOLLE DAGEN
                     //HALVE DAGEN
                     //SWITCH
                     MDBOUW4(RMPAR:HVBZ:HHBZ:HVVOR:HHVOR:WUN4CD:BZTER:VORTER);
                       HBEDBZ = BZTER;
                     HBBVO = VORTER;
                   ENDIF; //BZ=BB

     C     NIKSB         TAG
                   If #1A4CD = 'H ';
                      //          WUW002    IFEQ '1'                        CMD 1 GEBRUIKT
                     T02IND = BYEENB;
                     T02REF = #1GWNB;
                     CHAIN (#1AACD:#1AFNB:T02IND:T02REF) LVHKCPL1 ;
       *in50 = (%found() = *Off); //50=EOF
                     HVBZ = HKHK06;
                     HHBZ = HKHK07;
                     VOLHS = HKHK06;
                     HALFHS = HKHK07;
                     HBEDBZ = HKHK08;
                     WUKENG = HKHK08;
                      //                    ENDIF
                     If WUKENG > 0;
                       HBEDBZ = WUKENG;
                     ENDIF;
                   ENDIF;
                    //          'LVNYUFR' DSPLY'ROSANNE'
                    //          WUKENG    DSPLY'ROSANNE'

                   If #1A4CD = 'Z ' OR #1A4CD = 'NA' OR #1A4CD = 'A ' OR #1A4CD = 'FA' OR #1A4CD = '
                     DELWKL = HHTOT6 / 2;
                     DELWKL = DELWKL + HVTOT6;
                     If #1A4CD = 'Z ' OR #1A4CD = 'M ' OR #1A4CD = '35';
                       DELWKL = HHBZ / 2;
                       DELWKL = DELWKL + HVBZ;
                       DELBZ = HHBZ / 2;
                       DELBZ = DELBZ + HVBZ;
                     ENDIF;
                     If #1A4CD = '29' OR #1A4CD = 'NA' OR #1A4CD = 'FA' OR #1A4CD = 'FS';
                       DELBZ = HHBZ / 2;
                       DELBZ = DELBZ + HVBZ;
                     ENDIF;

                     METACH = #1GWNB;
                     METDGN = 99;
                     METAALD(METACH:METDGN);
                       If DELBZ >= METDGN;
                       EXSR BZROU2;
                     ELSE;
                       If #1A4CD = 'NA' OR #1A4CD = '29' OR #1A4CD = 'FA' OR #1A4CD = 'FS';
                         EXSR BZROU3;
                       ENDIF;
                     Endif; //END METDGN
                   Endif; //END BZ=VA/..
                   If #1A4CD = 'Z1' OR #1A4CD = 'DA' OR #1A4CD = 'VA' OR #1A4CD = 'PA' OR #1A4CD = '
                     HHHHBZ = HHTOT6;
                     If #1A4CD = 'Z1' OR #1A4CD = 'M1' OR #1A4CD = '85';
                       HHHHBZ = HHBZ;
                       If #1A1CD = '18';
                         HHHHBZ = HVBZ;
                       ENDIF;
                     ENDIF;
                     If #1A4CD = '79' OR #1A4CD = 'DA' OR #1A4CD = 'PA' OR #1A4CD = 'PS';
                       If HHBZ > 0;
                         HHHHBZ = HHBZ;
                       ENDIF;
                     ENDIF;

                     METACH = #1GWNB;
                     METDGN = 99;
                     METAALD(METACH:METDGN);
                       If HHHHBZ >= METDGN;
                       EXSR BZROU2;
                     ELSE;
                       If #1A4CD = 'DA' OR #1A4CD = '79' OR #1A4CD = 'PA' OR #1A4CD = 'PS';
                         EXSR BZROU3;
                       ENDIF;
                     Endif; //END METDGN
                   Endif; //END BZ=VA/..
                   HBED02 = HBEDBZ;
                 Endif; //END BED BZ=0
               ELSE; //GN BZ = N
                 HBEDBZ = 0;
               Endif; //END GN BZ=Y
             ELSE; //BZ = BLANK
               HBEDBZ = 0;
             Endif; //END BZ NT BLLAN

             If #1A4CD = '29' OR #1A4CD = '79' OR #1A4CD = 'NA' OR #1A4CD = 'DA';
               If WUPGCD = '0' OR WUPGCD = '3'; //BZ ZELF BEREKENEN
                 RMPAR = #1GWNB;
               MDCALCMT(#1AACD:#1AFNB:RMPAR:#1A1CD:#1A4CD:HVBZ:HHBZ:FOUTBZ:BZINH);
                 ELSE;
                 BZINH = #1BENR;
               ENDIF;
               If WUE5NE = 1;
                 STAINH = BZINH;
                 STARBZ = HBEDBZ;
                 WUE5NE = WUE5NE + 1;
               ENDIF;
               If HBEDBZ = STARBZ;
                 EXSR TCHINH;
               ELSE;
                 NAENTR = HBEDBZ + STAINH;
                 If NAENTR = STARBZ;
                    // NIETS DOEN
                 ELSE;
                   EXSR TCHINH;
                 ENDIF;
               ENDIF; //HBEDBZ=STARBZ
             ENDIF; //NA DA 29 79
           Endif; //END HBEDBZ=0
            // BEDR BZ IS BEPAALD. OOK REKENING GEHOUDEN MET DATUM ACHTERST
            // Sw64 : Geen BZ tabel meer : zelf berekenen
            // CASE: WRK.Switch64 is EQ 1
           If WUN3CD = '1'; //*IF
              // Setup message data for message
             ZA0152 = #1GYNB; //Bedrag BZ
              // Send message 'BZ zelf berekenen'
             ZAMSID = 'USR0416';
             EXSR ZASNMS;
             *In99 = *On;
             WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw65 : Geen tabel BZ-bouw voor datum achterstal : error message
            // CASE: WRK.Switch65 is EQ 1
           If WUN4CD = '1'; //*IF
              // Setup message data for message
             ZA0153 = #1GYNB; //Bedrag BZ
              // Send message 'BZ bouw zelf berekenen'
             ZAMSID = 'USR0415';
             EXSR ZASNMS;
             *In99 = *On;
             WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Berek. taks op WKLH&BZ:3 - Wkl betaling  *
           RMPAR = #1GWNB;
           HBRUTO = 0;
           HBRUBZ = 0;
         TYTYTY = #1A1CD;           // //2
           If #1A1CD = '18' AND #1GINB > 0;
         TYTYTY = '04';
           ENDIF;
         DOCD7L = #1DOCD;           // //7
           If WUAPCK = 'Y';
         XOCD7L = DOCD7L;           // //7
         DOCD7L = XOCD7L;
           ENDIF;
           HBEDXX = HBEDBZ;
           If #1A4CD = 'BB';
             HBEDXX = HBEDXX + HBBVO;
           ENDIF;
            //                    PARM           #1DOCD           BAREMA
           //BAREMA
           //POSTNR
           //BELAST.CODE
           //BZ CODE
           //TYPE WKL
           //SUBBEROEP
           //REF.MND
           //TYPE 18
           //BEDRAG WKLH
            //                    PARM           HBEDBZ           BEDRAG BZ
           //BEDRAG BZ(+VORST BB)
           //BEDRAG VORST
            // OUTPUT
           //TOTAAL TAKS
           //TAKS WKL
           //TAKS BZ
           //RWP
           //TOTAAL BRUTO
           //BRUTO BZ
            // WKL-2471
            // C105 TOEGEVOEGD DAN GEEN TAKS INHOUDEN
            // ALS PERIODE NIET 1 IS
         DOCD5L = #1DOCD;           // //5
     EvalR   DOCDP5 = DOCD5L;           // //1
           If WUZDCJ = 'Y';
             If DOCDP5 <> '1'; //VNF PERIODE 2 GN TAK
               HTAKS = 0; //TOTAAL TAKS
               HTAKSW = 0; //TAKS WKL
               HTAKSB = 0; //TAKS BZ
               RWP = 0; //RWP
             ENDIF;
           ENDIF;

           If HTAKS <> 0;
             #1HCNB = HTAKS;
             #1T4NB = HTAKSW;
             #1T5NB = HTAKSB;
           ELSE;
             #1HCNB = 0;
             #1T4NB = 0;
             #1T5NB = 0;
           Endif;
           If RWP <> 0;
             #1JRNB = RWP;
           ELSE;
             #1JRNB = 0;
           Endif;
         Endif; //*FI
          // !!! Controles afhoudingen + netto bepalen + fusies
          // CASE: WRK.Wrk hidden zetten calcul is 0
         If WUCA77 = '0'; //*IF
            // Controle kodes afhouding2 - Wkl betaling  *
         WUN7CD = '0';
     EvalR   TAALK = '1';            // //1

           If #1DVCD <> *BLANK; //AFH1 KODE
     EvalR   KODAFH = #1DVCD;           // //3
             EXSR AFHRVA;
     C   50              GOTO      ENDAFH
     EvalR   PRI(1) = BWBZNB;
           ELSE;
     EvalR   PRI(1) = '9';
           Endif;
           If #1DWCD <> *BLANK; //AFH2 KODE
     EvalR   KODAFH = #1DWCD;
             EXSR AFHRVA;
     C   50              GOTO      ENDAFH
     EvalR   PRI(2) = BWBZNB;
           ELSE;
     EvalR   PRI(2) = '9';
           Endif;
           If #1DXCD <> *BLANK; //AFH3 KODE
     EvalR   KODAFH = #1DXCD;
             EXSR AFHRVA;
     C   50              GOTO      ENDAFH
     EvalR   PRI(3) = BWBZNB;
           ELSE;
     EvalR   PRI(3) = '9';
           Endif;
           If #1DYCD <> *BLANK; //AFH4 KODE
     EvalR   KODAFH = #1DYCD;
             EXSR AFHRVA;
     C   50              GOTO      ENDAFH
     EvalR   PRI(4) = BWBZNB;
           ELSE;
     EvalR   PRI(4) = '9';
           Endif;
           If #1EDCD <> *BLANK; //AFH5 KODE
     EvalR   KODAFH = #1EDCD;
             EXSR AFHRVA;
     C   50              GOTO      ENDAFH
     EvalR   PRI(5) = BWBZNB;
           ELSE;
     EvalR   PRI(5) = '9';
           Endif;
           If #1EECD <> *BLANK; //AFH6 KODE
     EvalR   KODAFH = #1EECD;
             EXSR AFHRVA;
     C   50              GOTO      ENDAFH
     EvalR   PRI(6) = BWBZNB;
           ELSE;
     EvalR   PRI(6) = '9';
           Endif;
     C     ENDAFH        TAG

            // Sw67=1 foutieve kode afhouding
            // CASE: WRK.Switch67 is EQ 1
           If WUN7CD = '1'; //*IF
              // Send message 'Foutieve kode afhouding!'
         ZAMSID = 'USR0517';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Opvullen besl/TV afh1-6:5 - Wkl betaling  *
     EvalR   WUOACD = '0';                        // //SW70
     EvalR   WUQUCD = '0';           // //1            BLINK AFH1 NEGATIEF
     EvalR   WUQVCD = '0';           // //1            BLINK AFH2 NEGATIEF
     EvalR   WUQWCD = '0';           // //1            BLINK AFH3 NEG
     EvalR   WUQXCD = '0';           // //1            BLINK AFH4 NEG
     EvalR   WUQYCD = '0';           // //1            BLINK AFH5 NEG
     EvalR   WUQZCD = '0';           // //1            BLINK AFH6 NEG
     EvalR   S00 = 'S00';              // //3
            //* AFHOUDING1 = S00 (GEWIJZIGD 30/01/2001 S00->R..)
           If #1A4CD = *BLANK OR #1A4CD = 'B ' OR #1A4CD = 'S ' OR #1A1CD = '15';
             HNET1 = HWKL + HBEDBZ;
             HNET1 = HNET1 + HBEDVO;
             HNET2 = HNET1 - HTAKS;
             HNET = HNET2 - RWP;
           ELSE;
             HNET1 = HWKL;
             HNET2 = HWKL - HTAKSW;
             HNET = HNET2 - RWP;
           Endif; //BZ=BL,B,T,..
            // HNET =BEDRAG OM TV,ONDERHOUD EN BESLAGEN VANAF O01 TE BEREKENEN
           //AFD
           //LIDNR
           //BESL/ONDERHO
           //AFD
           //LIDNR
           //TV KODE
            // AFHOUDING1 NIET S00 EN INGEVULD
           If #1DVCD <> *BLANK;
             If #1DVCD <> 'S00';
         KOAFH1 = #1DVCD;           // //1
         KOAFH = #1DVCD;            // //3
         KOTV = #1OYCD;             // //3
               If KOAFH1 = 'O' OR KOAFH1 = 'S';
                 CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                 If NOT *In50;
                   If BOBVCD = 'P';
                 Endif;
                   BAFH1 = HNET * BOG8NB;
                   EVAL(H) HAFH1B = BAFH1 / 100;
                   #1GZNB = HAFH1B;
                 ELSE; //GEEN P
                   If BOBVCD = 'R';
                     HBREG = HNET;
                     EXSR REGEL;
                     HAFH1B = DEEL33 + DEEL27;
                     HAFH1B = HAFH1B + DEEL25;
                     #1GZNB = HAFH1B;
                   ELSE; //GN P, GN R
                     If BOBVCD = 'L';
                       EXSR LEEFLN;
                       HAFH1B = DEEL33;
                       #1GZNB = HAFH1B;
                     ELSE; //GEEN P OF R OF L
                       HAFH1B = #1GZNB;
                     Endif; //END LEEFLOON L
                   Endif; //END REGEL R
                 Endif; //END PERCENT
                 #1GZNB = HAFH1B;
                 If HAFH1B > BOHWNB;
                   If KOAFH1 <> 'O';
     EvalR   WUQUCD = '*';
                   Endif;
                   If BOBVCD = 'L';
     EvalR   WUQUCD = '*';
                   ENDIF;
                 Endif;
                 If BOHWNB < 0;
                   If KOAFH1 <> 'O';
     EvalR   WUQUCD = '1';
                   Endif;
                   If BOBVCD = 'L';
     EvalR   WUQUCD = '1';
                   ENDIF;
                 Endif;
               ELSE; //GEEN O/S
                 If KOAFH1 = 'R';
                   CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                   If NOT *In50;
                     If BOBVCD = 'P';
                   Endif;
                      //          HWKL      MULT BOG8NB    BAFH1
                     BAFH1 = HNET1 * BOG8NB;
                     EVAL(H) HAFH1B = BAFH1 / 100;
                     #1GZNB = HAFH1B;
                   ELSE; //GEEN P
                     If BOBVCD = 'R';
                       HBREG = HNET1;
                       EXSR REGEL;
                       HAFH1B = DEEL33 + DEEL27;
                       HAFH1B = HAFH1B + DEEL25;
                       #1GZNB = HAFH1B;
                     ELSE; //GEEN P OF R
                       If BOBVCD = 'L';
                         EXSR LEEFLN;
                         HAFH1B = DEEL33;
                         #1GZNB = HAFH1B;
                       ELSE; //GEEN P OF R OF L
                         HAFH1B = #1GZNB;
                       Endif; //END LEEFLOON L
                     Endif; //END REGEL R
                   Endif; //END PERCENT
                   #1GZNB = HAFH1B;
                   If HAFH1B > BOHWNB;
     EvalR   WUQUCD = '3';
                     #1GZNB = BOHWNB;
                     HAFH1B = BOHWNB;
                   Endif;
                 ELSE; //GEEN R
         KOAFH1 = #1OYCD;
                   If KOAFH1 = 'T'; //OF T?????
                     CHAIN (#1AACD:#1AFNB:KOTV) @HZCPIR ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                     If NOT *In50;
                       HAFH1B = #1GZNB;
                     Endif;
                     If HAFH1B <= HZHZ14;
                       #1GZNB = HAFH1B;
                     ELSE;
                       #1GZNB = HZHZ14;
                       HAFH1B = HZHZ14;
                     Endif;
                   Endif; //END G=TV'S
                 Endif; //END R
               Endif; //END S/O
             Endif; //END NT S00
           Endif; //END AFH1 BL
            //* AFHOUDING2
           If #1DWCD <> *BLANK;
         KOAFH2 = #1DWCD;           // //1
         KOAFH = #1DWCD;            // //3
         KOTV = #1OZCD;             // //3
             If KOAFH2 = 'O' OR KOAFH2 = 'S';
               CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
               If NOT *In50;
                 If BOBVCD = 'P';
               Endif;
                 BAFH2 = HNET * BOG8NB;
                 EVAL(H) HAFH2B = BAFH2 / 100;
                 #1G1NB = HAFH2B;
               ELSE; //GEEN P
                 If BOBVCD = 'R';
                   HBREG = HNET;
                   EXSR REGEL;
                   HAFH2B = DEEL33 + DEEL27;
                   HAFH2B = HAFH2B + DEEL25;
                   #1G1NB = HAFH2B;
                 ELSE; //GEEN P OF R
                   If BOBVCD = 'L';
                     EXSR LEEFLN;
                     HAFH2B = DEEL33;
                     #1G1NB = HAFH2B;
                   ELSE; //GEEN P OF R OF L
                     HAFH2B = #1G1NB;
                   Endif; //END LEEFLOON L
                 Endif; //END REGEL R
               Endif; //END PERCENT
               #1G1NB = HAFH2B;
               If HAFH2B > BOHWNB;
                 If KOAFH2 <> 'O';
     EvalR   WUQVCD = '*';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQVCD = '*';
                 ENDIF;
               Endif;
               If BOHWNB < 0;
                 If KOAFH2 <> 'O';
     EvalR   WUQVCD = '1';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQVCD = '1';
                 ENDIF;
               Endif;
             ELSE; //GEEN O OF S.
               If KOAFH2 = 'R';
                 CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                 If NOT *In50;
                   If BOBVCD = 'P';
                 Endif;
                    //          HWKL      MULT BOG8NB    BAFH2
                   BAFH2 = HNET1 * BOG8NB;
                   EVAL(H) HAFH2B = BAFH2 / 100;
                   #1G1NB = HAFH2B;
                 ELSE; //GEEN P
                   If BOBVCD = 'R';
                     HBREG = HNET1;
                     EXSR REGEL;
                     HAFH2B = DEEL33 + DEEL27;
                     HAFH2B = HAFH2B + DEEL25;
                     #1G1NB = HAFH2B;
                   ELSE; //GEEN P OF R
                     If BOBVCD = 'L';
                       EXSR LEEFLN;
                       HAFH2B = DEEL33;
                       #1G1NB = HAFH2B;
                     ELSE; //GEEN P OF R OF L
                       HAFH2B = #1G1NB;
                     Endif; //END LEEFLOON L
                   Endif; //END REGEL R
                 Endif; //END PERCENT
                 #1G1NB = HAFH2B;
                 If HAFH2B > BOHWNB;
     EvalR   WUQVCD = '3';
                   #1G1NB = BOHWNB;
                   HAFH2B = BOHWNB;
                 Endif;
               ELSE; //GEEN R
         KOAFH2 = #1OZCD;
                 If KOAFH2 = 'T'; //OF T?????
                   CHAIN (#1AACD:#1AFNB:KOTV) @HZCPIR ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                   If NOT *In50;
                     HAFH2B = #1G1NB;
                   Endif;
                   If HAFH2B > HZHZ14;
                     #1G1NB = HZHZ14;
                     HAFH2B = HZHZ14;
                   Endif;
                 Endif; //END G=TV'S
               Endif; //END R
             Endif; //END S/O
           Endif; //END AFH2 BL
            // AFHOUDING 3
           If #1DXCD <> *BLANK;
         KOAFH3 = #1DXCD;           // //1
         KOAFH = #1DXCD;            // //3
         KOTV = #1O0CD;             // //3
             If KOAFH3 = 'O' OR KOAFH3 = 'S';
               CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
               If NOT *In50;
                 If BOBVCD = 'P';
               Endif;
                 BAFH3 = HNET * BOG8NB;
                 EVAL(H) HAFH3B = BAFH3 / 100;
                 #1G3NB = HAFH3B;
               ELSE; //GEEN P
                 If BOBVCD = 'R';
                   HBREG = HNET;
                   EXSR REGEL;
                   HAFH3B = DEEL33 + DEEL27;
                   HAFH3B = HAFH3B + DEEL25;
                   #1G3NB = HAFH3B;
                 ELSE; //GEEN P OF R
                   If BOBVCD = 'L';
                     EXSR LEEFLN;
                     HAFH3B = DEEL33;
                     #1G3NB = HAFH3B;
                   ELSE; //GEEN P OF R OF L
                     HAFH3B = #1G3NB;
                   Endif; //END LEEFLOON L
                 Endif; //END REGEL R
               Endif; //END PERCENT
               #1G3NB = HAFH3B;
               If HAFH3B > BOHWNB;
                 If KOAFH3 <> 'O';
     EvalR   WUQWCD = '*';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQWCD = '*';
                 ENDIF;
               Endif;
               If BOHWNB < 0;
                 If KOAFH3 <> 'O';
     EvalR   WUQWCD = '1';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQWCD = '1';
                 ENDIF;
               Endif;
             ELSE; //GEEN O/S
               If KOAFH3 = 'R';
                 CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                 If NOT *In50;
                   If BOBVCD = 'P';
                 Endif;
                    //          HWKL      MULT BOG8NB    BAFH3
                   BAFH3 = HNET1 * BOG8NB;
                   EVAL(H) HAFH3B = BAFH3 / 100;
                   #1G3NB = HAFH3B;
                 ELSE; //GEEN P
                   If BOBVCD = 'R';
                     HBREG = HNET1;
                     EXSR REGEL;
                     HAFH3B = DEEL33 + DEEL27;
                     HAFH3B = HAFH3B + DEEL25;
                     #1G3NB = HAFH3B;
                   ELSE; //GEEN P OF R
                     If BOBVCD = 'L';
                       EXSR LEEFLN;
                       HAFH3B = DEEL33;
                       #1G3NB = HAFH3B;
                     ELSE; //GEEN P OF R OF L
                       HAFH3B = #1G3NB;
                     Endif; //END LEEFLOON L
                   Endif; //END REGEL R
                 Endif; //END PERCENT
                 #1G3NB = HAFH3B;
                 If HAFH3B > BOHWNB;
     EvalR   WUQWCD = '3';
                   #1G3NB = BOHWNB;
                   HAFH3B = BOHWNB;
                 Endif;
               ELSE; //GEEN O OF S.
         KOAFH3 = #1O0CD;
                 If KOAFH3 = 'T'; //OF T?????
                   CHAIN (#1AACD:#1AFNB:KOTV) @HZCPIR ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                   If NOT *In50;
                     HAFH3B = #1G3NB;
                   Endif;
                   If HAFH3B > HZHZ14;
                     #1G3NB = HZHZ14;
                     HAFH3B = HZHZ14;
                   Endif;
                 Endif; //END G=TV'S
               Endif; //END R
             Endif; //END S/O
           Endif; //END AFH3 BL
            // AFHOUDING 4
           If #1DYCD <> *BLANK;
         KOAFH4 = #1DYCD;           // //1
         KOAFH = #1DYCD;            // //3
         KOTV = #1O1CD;             // //3
             If KOAFH4 = 'O' OR KOAFH4 = 'S';
               CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
               If NOT *In50;
                 If BOBVCD = 'P';
               Endif;
                 BAFH4 = HNET * BOG8NB;
                 EVAL(H) HAFH4B = BAFH4 / 100;
                 #1G5NB = HAFH4B;
               ELSE; //GEEN P
                 If BOBVCD = 'R';
                   HBREG = HNET;
                   EXSR REGEL;
                   HAFH4B = DEEL33 + DEEL27;
                   HAFH4B = HAFH4B + DEEL25;
                    //          HAFH4B    ADD  DEEL20    HAFH4B
                   #1G5NB = HAFH4B;
                 ELSE; //GEEN P OF R
                   If BOBVCD = 'L';
                     EXSR LEEFLN;
                     HAFH4B = DEEL33;
                     #1G5NB = HAFH4B;
                   ELSE; //GEEN P OF R OF L
                     HAFH4B = #1G5NB;
                   Endif; //END LEEFLOON L
                 Endif; //END REGEL R
               Endif; //END PERCENT
               #1G5NB = HAFH4B;
               If HAFH4B > BOHWNB;
                 If KOAFH4 <> 'O';
     EvalR   WUQXCD = '*';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQXCD = '*';
                 ENDIF;
               Endif;
               If BOHWNB < 0;
                 If KOAFH4 <> 'O';
     EvalR   WUQXCD = '1';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQXCD = '1';
                 ENDIF;
               Endif;
             ELSE; //GEEN O/S
               If KOAFH4 = 'R';
                 CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                 If NOT *In50;
                   If BOBVCD = 'P';
                 Endif;
                    //          HWKL      MULT BOG8NB    BAFH4
                   BAFH4 = HNET1 * BOG8NB;
                   EVAL(H) HAFH4B = BAFH4 / 100;
                   #1G5NB = HAFH4B;
                 ELSE; //GEEN P
                   If BOBVCD = 'R';
                     HBREG = HNET1;
                     EXSR REGEL;
                     HAFH4B = DEEL33 + DEEL27;
                     HAFH4B = HAFH4B + DEEL25;
                     #1G5NB = HAFH4B;
                   ELSE; //GEEN P OF R
                     If BOBVCD = 'L';
                       EXSR LEEFLN;
                       HAFH4B = DEEL33;
                       #1G5NB = HAFH4B;
                     ELSE; //GEEN P OF R OF L
                       HAFH4B = #1G5NB;
                     Endif; //END LEEFLOON L
                   Endif; //END REGEL R
                 Endif; //END PERCENT
                 #1G5NB = HAFH4B;
                 If HAFH4B > BOHWNB;
     EvalR   WUQXCD = '3';
                   #1G5NB = BOHWNB;
                   HAFH4B = BOHWNB;
                 Endif;
               ELSE; //GEEN R
         KOAFH4 = #1O1CD;
                 If KOAFH4 = 'T'; //OF T?????
                   CHAIN (#1AACD:#1AFNB:KOTV) @HZCPIR ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                   If NOT *In50;
                     HAFH4B = #1G5NB;
                   Endif;
                   If HAFH4B > HZHZ14;
                     #1G5NB = HZHZ14;
                     HAFH4B = HZHZ14;
                   Endif;
                 Endif; //END G=TV'S
               Endif; //END R
             Endif; //END S/O
           Endif; //END AFH4 BL
            // AFHOUDING 5
           If #1EDCD <> *BLANK;
         KOAFH5 = #1EDCD;           // //1
         KOAFH = #1EDCD;            // //3
         KOTV = #1O2CD;             // //3
             If KOAFH5 = 'O' OR KOAFH5 = 'S';
               CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
               If NOT *In50;
                 If BOBVCD = 'P';
               Endif;
                 BAFH5 = HNET * BOG8NB;
                 EVAL(H) HAFH5B = BAFH5 / 100;
                 #1HDNB = HAFH5B;
               ELSE; //GEEN P
                 If BOBVCD = 'R';
                   HBREG = HNET;
                   EXSR REGEL;
                   HAFH5B = DEEL33 + DEEL27;
                   HAFH5B = HAFH5B + DEEL25;
                    //          HAFH5B    ADD  DEEL20    HAFH5B
                   #1HDNB = HAFH5B;
                 ELSE; //GEEN P OF R
                   If BOBVCD = 'L';
                     EXSR LEEFLN;
                     HAFH5B = DEEL33;
                     #1HDNB = HAFH5B;
                   ELSE; //GEEN P OF R OF L
                     HAFH5B = #1HDNB;
                   Endif; //END LEEFLOON L
                 Endif; //END REGEL R
               Endif; //END PERCENT
               #1HDNB = HAFH5B;
               If HAFH5B > BOHWNB;
                 If KOAFH5 <> 'O';
     EvalR   WUQYCD = '*';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQYCD = '*';
                 ENDIF;
               Endif;
               If BOHWNB < 0;
                 If KOAFH5 <> 'O';
     EvalR   WUQYCD = '1';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQYCD = '1';
                 ENDIF;
               Endif;
             ELSE; //GEEN O/S
               If KOAFH5 = 'R';
                 CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                 If NOT *In50;
                   If BOBVCD = 'P';
                 Endif;
                    //          HWKL      MULT BOG8NB    BAFH5
                   BAFH5 = HNET1 * BOG8NB;
                   EVAL(H) HAFH5B = BAFH5 / 100;
                   #1HDNB = HAFH5B;
                 ELSE; //GEEN P
                   If BOBVCD = 'R';
                     HBREG = HNET1;
                     EXSR REGEL;
                     HAFH5B = DEEL33 + DEEL27;
                     HAFH5B = HAFH5B + DEEL25;
                     #1HDNB = HAFH5B;
                   ELSE; //GEEN P OF R
                     If BOBVCD = 'L';
                       EXSR LEEFLN;
                       HAFH5B = DEEL33;
                       #1HDNB = HAFH5B;
                     ELSE; //GEEN P OF R OF L
                       HAFH5B = #1HDNB;
                     Endif; //END LEEFLOON L
                   Endif; //END REGEL R
                 Endif; //END PERCENT
                 #1HDNB = HAFH5B;
                 If HAFH5B > BOHWNB;
     EvalR   WUQYCD = '3';
                   #1HDNB = BOHWNB;
                   HAFH5B = BOHWNB;
                 Endif;
               ELSE; //GEEN R
         KOAFH5 = #1O2CD;
                 If KOAFH5 = 'T'; //OF T?????
                   CHAIN (#1AACD:#1AFNB:KOTV) @HZCPIR ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                   If NOT *In50;
                     HAFH5B = #1HDNB;
                   Endif;
                   If HAFH5B > HZHZ14;
                     #1HDNB = HZHZ14;
                     HAFH5B = HZHZ14;
                   Endif;
                 Endif; //END G=TV'S
               Endif; //END R
             Endif; //END S/O
           Endif; //END AFH5 BL
            // AFHOUDING 6
           If #1EECD <> *BLANK;
         KOAFH6 = #1EECD;           // //1
         KOAFH = #1EECD;            // //3
         KOTV = #1O3CD;             // //3
             If KOAFH6 = 'O' OR KOAFH6 = 'S';
               CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
               If NOT *In50;
                 If BOBVCD = 'P';
               Endif;
                 BAFH6 = HNET * BOG8NB;
                 EVAL(H) HAFH6B = BAFH6 / 100;
                 #1HFNB = HAFH6B;
               ELSE; //GEEN P
                 If BOBVCD = 'R';
                   HBREG = HNET;
                   EXSR REGEL;
                   HAFH6B = DEEL33 + DEEL27;
                   HAFH6B = HAFH6B + DEEL25;
                    //          HAFH6B    ADD  DEEL20    HAFH6B
                   #1HFNB = HAFH6B;
                 ELSE; //GEEN P OF R
                   If BOBVCD = 'L';
                     EXSR LEEFLN;
                     HAFH6B = DEEL33;
                     #1HFNB = HAFH6B;
                   ELSE; //GEEN P OF R OF L
                     HAFH6B = #1HFNB;
                   Endif; //END LEEFLOON L
                 Endif; //END REGEL R
               Endif; //END PERCENT
               #1HFNB = HAFH6B;
               If HAFH6B > BOHWNB;
                 If KOAFH6 <> 'O';
     EvalR   WUQZCD = '*';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQZCD = '*';
                 ENDIF;
               Endif;
               If BOHWNB < 0;
                 If KOAFH6 <> 'O';
     EvalR   WUQZCD = '1';
                 Endif;
                 If BOBVCD = 'L';
     EvalR   WUQZCD = '1';
                 ENDIF;
               Endif;
             ELSE; //GEEN O/S
               If KOAFH6 = 'R';
                 CHAIN (#1AACD:#1AFNB:KOAFH) @BOCPEO ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                 If NOT *In50;
                   If BOBVCD = 'P';
                 Endif;
                    //          HWKL      MULT BOG8NB    BAFH6
                   BAFH6 = HNET1 * BOG8NB;
                   EVAL(H) HAFH6B = BAFH6 / 100;
                   #1HFNB = HAFH6B;
                 ELSE; //GEEN P
                   If BOBVCD = 'R';
                     HBREG = HNET1;
                     EXSR REGEL;
                     HAFH6B = DEEL33 + DEEL27;
                     HAFH6B = HAFH6B + DEEL25;
                      //          HAFH6B    ADD  DEEL20    HAFH6B
                     #1HFNB = HAFH6B;
                   ELSE; //GEEN P OF R
                     If BOBVCD = 'L';
                       EXSR LEEFLN;
                       HAFH6B = DEEL33;
                       #1HFNB = HAFH6B;
                     ELSE; //GEEN P OF R OF L
                       HAFH6B = #1HFNB;
                     Endif; //END LEEFLOON L
                   Endif; //END REGEL R
                 Endif; //END PERCENT
                 #1HFNB = HAFH6B;
                 If HAFH6B > BOHWNB;
     EvalR   WUQZCD = '3';
                   #1HFNB = BOHWNB;
                   HAFH6B = BOHWNB;
                 Endif;
               ELSE; //GEEN R
         KOAFH6 = #1O3CD;
                 If KOAFH6 = 'T';
                   CHAIN (#1AACD:#1AFNB:KOTV) @HZCPIR ;
       *in50 = (%found() = *Off);
     C   50              GOTO      ENDREG
                   If NOT *In50;
                     HAFH6B = #1HFNB;
                   Endif;
                   If HAFH6B > HZHZ14;
                     #1HFNB = HZHZ14;
                     HAFH6B = HZHZ14;
                   Endif;
                 Endif; //END G=TV'S
               Endif; //END R
             Endif; //END S/O
           Endif; //END AFH6 BL

            //                    ENDIF                           TYPE 12
     C     ENDREG        TAG
            //---------------------------------------------------------------
            // SUBROUTINE REGEL R BEREKENEN                                 *
            // Sw70 = 1 : kan regel R niet toepassen, netto te klein : info mess
            // CASE: WRK.Switch70 is Eq 1
           If WUOACD = '1'; //*IF
              // Send message 'Netto<27000:regel nt moge'
         ZAMSID = 'USR0424';
         ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Sw70 = 2 : kan Leefln L niet toepassen, netto te klein : info mes
            // CASE: WRK.Switch70 is 2
           If WUOACD = '2'; //*IF
              // Send message 'Leefloon : kan regel L nt'
         ZAMSID = 'USR5138';
         ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Controle wkl-afh=0->gn BC - Wkl betaling  *
           HTOT1 = 0;
           HTOT2 = 0;
           HTOT = 0;
           PLUSAF = 0;
           AFTRAF = 0;
           HTOT1 = HWKL + HBEDBZ;
           HTOT1 = HTOT1 + HBEDVO;
           HTOT1 = HTOT1 + HBBVO;
           HTOT2 = HTOT1 - HTAKS;
           HTOT = HTOT2 - RWP;

           If #1DVCD = 'TB-' OR #1DVCD = 'TG-' OR #1DVCD = 'IR-'; //AFH1
             PLUSAF = PLUSAF + #1GZNB;
           ELSE;
             AFTRAF = AFTRAF + #1GZNB;
           Endif;
           If #1DWCD = 'TB-' OR #1DWCD = 'TG-' OR #1DWCD = 'IR-'; //AFH2
             PLUSAF = PLUSAF + #1G1NB;
           ELSE;
             AFTRAF = AFTRAF + #1G1NB;
           Endif;
           If #1DXCD = 'TB-' OR #1DXCD = 'TG-' OR #1DXCD = 'IR-'; //AFH3
             PLUSAF = PLUSAF + #1G3NB;
           ELSE;
             AFTRAF = AFTRAF + #1G3NB;
           Endif;
           If #1DYCD = 'TB-' OR #1DYCD = 'TG-' OR #1DYCD = 'IR-'; //AFH4
             PLUSAF = PLUSAF + #1G5NB;
           ELSE;
             AFTRAF = AFTRAF + #1G5NB;
           Endif;
           If #1EDCD = 'TB-' OR #1EDCD = 'TG-' OR #1EDCD = 'IR-'; //AFH5
             PLUSAF = PLUSAF + #1HDNB;
           ELSE;
             AFTRAF = AFTRAF + #1HDNB;
           Endif;
           If #1EECD = 'TB-' OR #1EECD = 'TG-' OR #1EECD = 'IR-'; //AFH6
             PLUSAF = PLUSAF + #1HFNB;
           ELSE;
             AFTRAF = AFTRAF + #1HFNB;
           Endif;

           CONTR1 = 0;
           CONTR1 = HTOT - AFTRAF;
           CONTR1 = CONTR1 + PLUSAF;
           If CONTR1 = 0;
     EvalR   WUQ3CD = '0';                        // //<15 MND:GN BERICHT B
           Endif;
            // Sw90:Achterstal bijdr. >15 maanden & gn BC/X2 ingevuld--> error m
            // CASE:
            //  - c1ANDc2
            //   !- c1    : WRK.Switch90 is 1
            //   !- c2    : DTL.Lid nr is LT 900000
            //   '-
         Y0CX01 = '0';           // //1
           If WUQ3CD = '1'; //*IF
             If #1AFNB < @CN(006); //*IF
         Y0CX01 = '1';
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // Setup message data for message
             ZA0154 = #1LPNB; //BC aantal
         ZA0155 = #1CLCD;                        // //Kateg kode
              // Convert Kateg jjmm to external.

             UIDTM2 = #1E9NB;
             UDTMC2 = UDTM12;
             UDTMY2 = UDTM22;
             UDTMM2 = UDTM32;
             ZA0156 = UEDTM2;
         ZA0157 = #1CMCD;                        // //Betalingsw kode
              // Send message 'Verplicht 1BC in te geven'
         ZAMSID = 'USR0508';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           Endif; //*FI
            // Afhx niet blank en bedragx=0 --> error (afh1-->afh6)
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
              // Afh1 nt blank en bedrag1=0-->error
              // CASE: DTL.Afh1 kode is nt blank
             If #1DVCD <> *BLANK; //*IF
                // CASE: DTL.Afh1 bedrag is = 0
               If #1GZNB = *ZERO; //*IF
                  // Send message 'Kode afh. zonder bedrag'
         ZAMSID = 'USR0466';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh2 nt blank en bedrag2=0--> error
              // CASE: DTL.Afh2 kode is nt blank
             If #1DWCD <> *BLANK; //*IF
                // CASE: DTL.Afh2 bedrag is = 0
               If #1G1NB = *ZERO; //*IF
                  // Send message 'Kode afh. zonder bedrag'
         ZAMSID = 'USR0466';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh3 nt blank en bedrag3=0--> error
              // CASE: DTL.Afh3 kode is nt blank
             If #1DXCD <> *BLANK; //*IF
                // CASE: DTL.Afh3 bedrag is = 0
               If #1G3NB = *ZERO; //*IF
                  // Send message 'Kode afh. zonder bedrag'
         ZAMSID = 'USR0466';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh4 nt blank en bedrag4=0--> error
              // CASE: DTL.Afh4 kode is nt blank
             If #1DYCD <> *BLANK; //*IF
                // CASE: DTL.Afh4 bedrag is = 0
               If #1G5NB = *ZERO; //*IF
                  // Send message 'Kode afh. zonder bedrag'
         ZAMSID = 'USR0466';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh5 nt blank en bedrag5=0--> error
              // CASE: DTL.Afh5 kode is nt blank
             If #1EDCD <> *BLANK; //*IF
                // CASE: DTL.Afh5 bedrag is = 0
               If #1HDNB = *ZERO; //*IF
                  // Send message 'Kode afh. zonder bedrag'
         ZAMSID = 'USR0466';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh6 nt blank en bedrag6=0--> error
              // CASE: DTL.Afh6 kode is nt blank
             If #1EECD <> *BLANK; //*IF
                // CASE: DTL.Afh6 bedrag is = 0
               If #1HFNB = *ZERO; //*IF
                  // Send message 'Kode afh. zonder bedrag'
         ZAMSID = 'USR0466';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Afhx bedrag niet 0 en kode afhx blank --> error : (afh1-->afh6)
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
              // Afh1 bedrag niet 0 en kode afh1 blank -->error
              // CASE: DTL.Afh1 bedrag is nt 0
             If #1GZNB <> *ZERO; //*IF
                // CASE: DTL.Afh1 kode is blank
               If #1DVCD = *BLANK; //*IF
                  // Send message 'Bedrag afh. zonder kode!'
         ZAMSID = 'USR0468';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Afh1 datum is nt 0
               If #1G0NB <> *ZERO; //*IF
                  // Send message 'Datum afh. zonder bedrag'
         ZAMSID = 'USR0874';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh2 bedrag niet 0 en kode afh2 blank -->error
              // CASE: DTL.Afh2 bedrag is nt 0
             If #1G1NB <> *ZERO; //*IF
                // CASE: DTL.Afh2 kode is blank
               If #1DWCD = *BLANK; //*IF
                  // Send message 'Bedrag afh. zonder kode!'
         ZAMSID = 'USR0468';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Afh2 datum is nt 0
               If #1G2NB <> *ZERO; //*IF
                  // Send message 'Datum afh. zonder bedrag'
         ZAMSID = 'USR0874';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh3 bedrag niet 0 en kode afh3 blank -->error
              // CASE: DTL.Afh3 bedrag is nt 0
             If #1G3NB <> *ZERO; //*IF
                // CASE: DTL.Afh3 kode is blank
               If #1DXCD = *BLANK; //*IF
                  // Send message 'Bedrag afh. zonder kode!'
         ZAMSID = 'USR0468';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Afh3 datum is nt 0
               If #1G4NB <> *ZERO; //*IF
                  // Send message 'Datum afh. zonder bedrag'
         ZAMSID = 'USR0874';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh4 bedrag niet 0 en kode afh4 blank -->error
              // CASE: DTL.Afh4 bedrag is nt 0
             If #1G5NB <> *ZERO; //*IF
                // CASE: DTL.Afh4 kode is blank
               If #1DYCD = *BLANK; //*IF
                  // Send message 'Bedrag afh. zonder kode!'
         ZAMSID = 'USR0468';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Afh4 datum is nt 0
               If #1G6NB <> *ZERO; //*IF
                  // Send message 'Datum afh. zonder bedrag'
         ZAMSID = 'USR0874';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh5 bedrag niet 0 en kode afh5 blank -->error
              // CASE: DTL.Afh5 bedrag is nt 0
             If #1HDNB <> *ZERO; //*IF
                // CASE: DTL.Afh5 kode is blank
               If #1EDCD = *BLANK; //*IF
                  // Send message 'Bedrag afh. zonder kode!'
         ZAMSID = 'USR0468';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Afh5 datum is nt 0
               If #1HENB <> *ZERO; //*IF
                  // Send message 'Datum afh. zonder bedrag'
         ZAMSID = 'USR0874';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh6 bedrag niet 0 en kode afh6 blank -->error
              // CASE: DTL.Afh6 bedrag is nt 0
             If #1HFNB <> *ZERO; //*IF
                // CASE: DTL.Afh6 kode is blank
               If #1EECD = *BLANK; //*IF
                  // Send message 'Bedrag afh. zonder kode!'
         ZAMSID = 'USR0468';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Afh6 datum is nt 0
               If #1HGNB <> *ZERO; //*IF
                  // Send message 'Datum afh. zonder bedrag'
         ZAMSID = 'USR0874';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Afhx=TV en datumx uitgeblankt --> error : (afh1-->afh6)
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
              // Afh1=TV en datum uitgeblankt--> error
              // CASE: DTL.Afh1 kode TV is T01-T99
             If #1OYCD >= 'T01' AND #1OYCD <= 'T99'; //*IF
                // CASE: DTL.Afh1 datum is = 0
               If #1G0NB = *ZERO; //*IF
                  // Send message 'TV kode zonder datum'
         ZAMSID = 'USR0467';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh2=TV en datum uitgeblankt-->error
              // CASE: DTL.Afh2 kode TV is T01-T99
             If #1OZCD >= 'T01' AND #1OZCD <= 'T99'; //*IF
                // CASE: DTL.Afh2 datum is = 0
               If #1G2NB = *ZERO; //*IF
                  // Send message 'TV kode zonder datum'
         ZAMSID = 'USR0467';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh3=TV en datum uitgeblankt-->error
              // CASE: DTL.Afh3 kode TV is T01-T99
             If #1O0CD >= 'T01' AND #1O0CD <= 'T99'; //*IF
                // CASE: DTL.Afh3 datum is = 0
               If #1G4NB = *ZERO; //*IF
                  // Send message 'TV kode zonder datum'
         ZAMSID = 'USR0467';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh4=TV en datum uitgeblankt--> error
              // CASE: DTL.Afh4 kode TV is T01-T99
             If #1O1CD >= 'T01' AND #1O1CD <= 'T99'; //*IF
                // CASE: DTL.Afh4 datum is = 0
               If #1G6NB = *ZERO; //*IF
                  // Send message 'TV kode zonder datum'
         ZAMSID = 'USR0467';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh5=TV en datum uitgeblankt-->error
              // CASE: DTL.Afh5 kode TV is T01-T99
             If #1O2CD >= 'T01' AND #1O2CD <= 'T99'; //*IF
                // CASE: DTL.Afh5 datum is = 0
               If #1HENB = *ZERO; //*IF
                  // Send message 'TV kode zonder datum'
         ZAMSID = 'USR0467';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Afh6=TV en datum uitgeblankt--> error
              // CASE: DTL.Afh6 kode TV is T01-T99
             If #1O3CD >= 'T01' AND #1O3CD <= 'T99'; //*IF
                // CASE: DTL.Afh6 datum is = 0
               If #1HGNB = *ZERO; //*IF
                  // Send message 'TV kode zonder datum'
         ZAMSID = 'USR0467';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Bedrag afhx < 0 --> error : (afh1-->afh6)
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
              // Bedrag afh1 < 0 --> error
              // CASE: DTL.Afh1 bedrag is < 0
             If #1GZNB < *ZERO; //*IF
                // Setup message data for message
               ZA0158 = #1GZNB; //Afh1 bedrag
                // Send message 'Bedrag afh1 negatief!'
         ZAMSID = 'USR0608';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // Bedrag afh2 < 0 --> error
              // CASE: DTL.Afh2 bedrag is < 0
             If #1G1NB < *ZERO; //*IF
                // Setup message data for message
               ZA0159 = #1G1NB; //Afh2 bedrag
                // Send message 'Bedrag afh2 negatief!'
         ZAMSID = 'USR0609';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // Bedrag afh3 < 0 --> error
              // CASE: DTL.Afh3 bedrag is < 0
             If #1G3NB < *ZERO; //*IF
                // Setup message data for message
               ZA0160 = #1G3NB; //Afh3 bedrag
                // Send message 'Bedrag afh3 negatief!'
         ZAMSID = 'USR0610';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
                // Prompt voor fouten/info - Foutenlijsten pop-up  *
               CLEAR   PCRC;
     PCJECL = 'AFH03';
     PCJFCL = WUWJCF;

               //Prompt voor fou
               //KEY: Foutenlijs

               L0ALPVR(W0RTN:PCRC);
                       If %Error();
                  // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'L0ALPVR';
                  // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                 EXSR ZASNMS;
               Endif;
                // Error detected?
               If W0RTN <> *BLANK;
                 *In99 = *On;
               Endif;
             Endif; //*FI
              // Bedrag afh4 < 0 --> error
              // CASE: DTL.Afh4 bedrag is < 0
             If #1G5NB < *ZERO; //*IF
                // Setup message data for message
               ZA0161 = #1G5NB; //Afh4 bedrag
                // Send message 'Bedrag afh4 negatief!'
         ZAMSID = 'USR0611';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // Bedrag afh5 < 0 --> error
              // CASE: DTL.Afh5 bedrag is < 0
             If #1HDNB < *ZERO; //*IF
                // Setup message data for message
               ZA0162 = #1HDNB; //Afh5 bedrag
                // Send message 'Bedrag afh5 negatief!'
         ZAMSID = 'USR0612';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
              // Bedrag afh6 < 0 --> error
              // CASE: DTL.Afh6 bedrag is < 0
             If #1HFNB < *ZERO; //*IF
                // Setup message data for message
               ZA0163 = #1HFNB; //Afh6 bedrag
                // Send message 'Bedrag afh6 negatief!'
         ZAMSID = 'USR0613';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Bedrag afhx = 1fr <= 0,02 euro --> error voor O's en S'en : (afh1
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
              // Bedrag afh1=1--> error voor O's
              // CASE: DTL.Afh1 kode is O01-O99
             If #1DVCD >= 'O01' AND #1DVCD <= 'O99'; //*IF
                // Bedrag afh1 = 1 --> error
                // CASE: DTL.Afh1 bedrag is <= 0,02
               If #1GZNB <= 0.02; //*IF
                  // Send message 'Bedrag afh1 foutief!!'
         ZAMSID = 'USR0837';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh1=1--> error voor S's
              // CASE: DTL.Afh1 kode is S00-S99
             If #1DVCD >= 'S00' AND #1DVCD <= 'S99'; //*IF
                // Bedrag afh1 = 1 --> error
                // CASE: DTL.Afh1 bedrag is <= 0,02
               If #1GZNB <= 0.02; //*IF
                  // Send message 'Bedrag afh1 foutief!!'
         ZAMSID = 'USR0837';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh2=1 --> error voor O's
              // CASE: DTL.Afh2 kode is O01-O99
             If #1DWCD >= 'O01' AND #1DWCD <= 'O99'; //*IF
                // Bedrag afh2 = 1 --> error
                // CASE: DTL.Afh2 bedrag is <= 0,02
               If #1G1NB <= 0.02; //*IF
                  // Send message 'Bedrag afh2 foutief!!'
         ZAMSID = 'USR0838';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh2=1 --> error voor S's
              // CASE: DTL.Afh2 kode is S00-S99
             If #1DWCD >= 'S00' AND #1DWCD <= 'S99'; //*IF
                // Bedrag afh2 = 1 --> error
                // CASE: DTL.Afh2 bedrag is <= 0,02
               If #1G1NB <= 0.02; //*IF
                  // Send message 'Bedrag afh2 foutief!!'
         ZAMSID = 'USR0838';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh3=1 --> error voor O's
              // CASE: DTL.Afh3 kode is O01-O99
             If #1DXCD >= 'O01' AND #1DXCD <= 'O99'; //*IF
                // Bedrag afh3 = 1 --> error
                // CASE: DTL.Afh3 bedrag is <= 0,02
               If #1G3NB <= 0.02; //*IF
                  // Send message 'Bedrag afh3 foutief!!'
         ZAMSID = 'USR0839';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh3=1 --> error voor S's
              // CASE: DTL.Afh3 kode is S00-S99
             If #1DXCD >= 'S00' AND #1DXCD <= 'S99'; //*IF
                // Bedrag afh3 = 1 --> error
                // CASE: DTL.Afh3 bedrag is <= 0,02
               If #1G3NB <= 0.02; //*IF
                  // Send message 'Bedrag afh3 foutief!!'
         ZAMSID = 'USR0839';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh4=1 --> error voor O's
              // CASE: DTL.Afh4 kode is O01-O99
             If #1DYCD >= 'O01' AND #1DYCD <= 'O99'; //*IF
                // Bedrag afh4 = 1 --> error
                // CASE: DTL.Afh4 bedrag is <= 0,02
               If #1G5NB <= 0.02; //*IF
                  // Send message 'Bedrag afh4 foutief!!'
         ZAMSID = 'USR0840';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh4=1 --> error voor S's
              // CASE: DTL.Afh4 kode is S00-S99
             If #1DYCD >= 'S00' AND #1DYCD <= 'S99'; //*IF
                // Bedrag afh4 = 1 --> error
                // CASE: DTL.Afh4 bedrag is <= 0,02
               If #1G5NB <= 0.02; //*IF
                  // Send message 'Bedrag afh4 foutief!!'
         ZAMSID = 'USR0840';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh5=1 --> error voor O's
              // CASE: DTL.Afh5 kode is O01-O99
             If #1EDCD >= 'O01' AND #1EDCD <= 'O99'; //*IF
                // Bedrag afh5 = 1 --> error
                // CASE: DTL.Afh5 bedrag is <= 0,02
               If #1HDNB <= 0.02; //*IF
                  // Send message 'Bedrag afh5 foutief!!'
         ZAMSID = 'USR0841';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh5=1 --> error voor S's
              // CASE: DTL.Afh5 kode is S00-S99
             If #1EDCD >= 'S00' AND #1EDCD <= 'S99'; //*IF
                // Bedrag afh5 = 1 --> error
                // CASE: DTL.Afh5 bedrag is <= 0,02
               If #1HDNB <= 0.02; //*IF
                  // Send message 'Bedrag afh5 foutief!!'
         ZAMSID = 'USR0841';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh6=1 --> error voor O's
              // CASE: DTL.Afh6 kode is O01-O99
             If #1EECD >= 'O01' AND #1EECD <= 'O99'; //*IF
                // Bedrag afh6 = 1 --> error
                // CASE: DTL.Afh6 bedrag is <= 0,02
               If #1HFNB <= 0.02; //*IF
                  // Send message 'Bedrag afh6 foutief!!'
         ZAMSID = 'USR0842';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
              // Bedrag afh6=1 --> error voor S's
              // CASE: DTL.Afh6 kode is S00-S99
             If #1EECD >= 'S00' AND #1EECD <= 'S99'; //*IF
                // Bedrag afh6 = 1 --> error
                // CASE: DTL.Afh6 bedrag is <= 0,02
               If #1HFNB <= 0.02; //*IF
                  // Send message 'Bedrag afh6 foutief!!'
         ZAMSID = 'USR0842';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Afhx=GP kan enkel bij BZ=K, anders error : (afh1-->afh6)
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
              // Afh1-> = GP : kan enkel bij BZ-kode K
              // CASE:
              //  - c1ORc2ORc3ORc4ORc5ORc6
              //   !- c1    : DTL.Afh1 kode is = GP
              //   !- c2    : DTL.Afh2 kode is = GP
              //   !- c3    : DTL.Afh3 kode is = GP
              //   !- c4    : DTL.Afh4 kode is = GP
              //   !- c5    : DTL.Afh5 kode is = GP
              //   !- c6    : DTL.Afh6 kode is = GP
              //   '-
             If #1DVCD = 'GP' OR #1DWCD = 'GP' OR #1DXCD = 'GP' OR #1DYCD = 'GP' OR #1EDCD = 'GP' OR
                // CASE: DTL.BZ kode is niet K
               If #1A4CD <> 'K'; //*IF
                  // Send message 'GP enkel bij BZ kode = K'
         ZAMSID = 'USR1006';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // BZ=DZ/PZ/VZ/FZ : oproepen progr. metaal fm03-fm33/FM04-FM44
            // CASE:
            //  - c1ORc2ORc3ORc4
            //   !- c1    : DTL.BZ kode is DZ
            //   !- c2    : DTL.BZ kode is PZ
            //   !- c3    : DTL.BZ kode is VZ
            //   !- c4    : DTL.BZ kode is FZ
            //   '-
           If #1A4CD = 'DZ' OR #1A4CD = 'PZ' OR #1A4CD = 'VZ' OR #1A4CD = 'FZ'; //*IF
         WUWUME = #1AACD;                        // //Wrk metaal afd
         WUWUMM = #1AFNB;                        // //Wrk metaal lidn
             WUMET2 = #1GWNB; //Wrk metaal refe
         WUMET4 = WUMET2;                        // //wrk metaal ref.
              // Move van ind.maand - Wkl betaling  *
             WUMET1 = BYEENB;
         WUMET3 = WUMET1;                        // //Wrk metaal ind.
         WUWUBZ = #1A4CD;                        // //Wrk metaal kode
              // CASE: WRK.jjmmdd LT WRK.Wrk datum Euro
             If WUHUNB < WUP2DD; //*IF
               WUWUB2 = #1GYNB; //WRk metaal bedr
         WUWUB1 = WUWUB2;                        // //Wrk metaal bedr
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Bedrag BZ is > 200,00
               If #1GYNB > 200.00; //*IF
                  // Setup message data for message
                 ZA0164 = #1GYNB; //Bedrag BZ
                  // Send message 'Bedrag BZ te groot]'
         ZAMSID = 'USR3848';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
               WUWUB2 = 100 * #1GYNB; //WRk metaal bedr
         WUWUB1 = WUWUB2;                        // //Wrk metaal bedr
             Endif; //*FI
              // Edit Metaal FM03/FM33 - Metaal FM03 FM33  *
             //Edit Metaal FM0
             //Wrk metaal afd
             //Wrk metaal lidn
             //Wrk metaal ind.
             //wrk metaal ref.
             //Wrk metaal kode
             //Wrk metaal bedr
             //Wrk metaal para

             LVKCE1R(W0RTN:WQ0318:WQ0319:WQ0320:WQ0321:WQ0322:WQ0323:WQ0324);
                     If %Error();
                // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LVKCE1R';
                // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
     C                   COMMIT
              // CASE: WRK.Wrk metaal parameter is No :gn add/change:Cmd3
             If WUPAPA = 'N'; //*IF
         WUPSCD = '1';                        // //Switch berekeni
                // Send message 'Cmd3 geduwd i.p.v. enter!'
         ZAMSID = 'USR1320';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Beslag in afhx wordt of is reeds negatief --> info message : (afh
            // CASE: WRK.Wrk switch hidden zetten is 0
           If WUCA75 = '0'; //*IF
              // Beslag in afh1 wordt of is reeds negatief--> info message
              // CASE: WRK.Afh1 negatief is *
             If WUQUCD = '*'; //*IF
                // Setup message data for message
         ZA0165 = #1DVCD;                        // //Afh1 kode
                // Send message 'Afh1 wordt negatief. OK?'
         ZAMSID = 'USR0502';
         ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;

             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Afh1 negatief is 1
               If WUQUCD = '1'; //*IF
                  // Setup message data for message
         ZA0166 = #1DVCD;                        // //Afh1 kode
                  // Send message 'Afh1 is reeds negatief'
         ZAMSID = 'USR0522';
         ZAMSTP = '*INFO';                        //Message type
                 EXSR ZASNMS;

               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Afh1 negatief is 3
                 If WUQUCD = '3'; //*IF
                    // Send message 'Afh R.. komt op nul. Geli'
         ZAMSID = 'USR3787';
         ZAMSTP = '*INFO';                        //Message type
                   EXSR ZASNMS;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
              // Beslag in afh2 wordt of is reeds negatief --> info message
              // CASE: WRK.Afh2 negatief is *
             If WUQVCD = '*'; //*IF
                // Setup message data for message
         ZA0167 = #1DWCD;                        // //Afh2 kode
                // Send message 'Afh2 wordt negatief. OK?'
         ZAMSID = 'USR0503';
         ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;

             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Afh2 negatief is 1
               If WUQVCD = '1'; //*IF
                  // Setup message data for message
         ZA0168 = #1DWCD;                        // //Afh2 kode
                  // Send message 'Afh2 is reeds negatief'
         ZAMSID = 'USR0523';
         ZAMSTP = '*INFO';                        //Message type
                 EXSR ZASNMS;

               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Afh2 negatief is 3
                 If WUQVCD = '3'; //*IF
                    // Send message 'Afh R.. komt op nul. Geli'
         ZAMSID = 'USR3787';
         ZAMSTP = '*INFO';                        //Message type
                   EXSR ZASNMS;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
              // Beslag in afh3 wordt of is reeds negatief --> info message
              // CASE: WRK.Afh3 negatief is *
             If WUQWCD = '*'; //*IF
                // Setup message data for message
         ZA0169 = #1DXCD;                        // //Afh3 kode
                // Send message 'Afh3 wordt negatief. OK?'
         ZAMSID = 'USR0504';
         ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;

             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Afh3 negatief is 1
               If WUQWCD = '1'; //*IF
                  // Setup message data for message
         ZA0170 = #1DXCD;                        // //Afh3 kode
                  // Send message 'Afh3 is reeds negatief'
         ZAMSID = 'USR0524';
         ZAMSTP = '*INFO';                        //Message type
                 EXSR ZASNMS;

               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Afh3 negatief is 3
                 If WUQWCD = '3'; //*IF
                    // Send message 'Afh R.. komt op nul. Geli'
         ZAMSID = 'USR3787';
         ZAMSTP = '*INFO';                        //Message type
                   EXSR ZASNMS;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
              // Beslag in afh4 wordt of is reeds negatief --> info message
              // CASE: WRK.Afh4 negatief is *
             If WUQXCD = '*'; //*IF
                // Setup message data for message
         ZA0171 = #1DYCD;                        // //Afh4 kode
                // Send message 'Afh4 wordt negatief. OK?'
         ZAMSID = 'USR0505';
         ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;

             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Afh4 negatief is 1
               If WUQXCD = '1'; //*IF
                  // Setup message data for message
         ZA0172 = #1DYCD;                        // //Afh4 kode
                  // Send message 'Afh4 is reeds negatief'
         ZAMSID = 'USR0525';
         ZAMSTP = '*INFO';                        //Message type
                 EXSR ZASNMS;

               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Afh4 negatief is 3
                 If WUQXCD = '3'; //*IF
                    // Send message 'Afh R.. komt op nul. Geli'
         ZAMSID = 'USR3787';
         ZAMSTP = '*INFO';                        //Message type
                   EXSR ZASNMS;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
              // Beslag in afh5 wordt of is reeds negatief --> info message
              // CASE: WRK.Afh5 negatief is *
             If WUQYCD = '*'; //*IF
                // Setup message data for message
         ZA0173 = #1EDCD;                        // //Afh5 kode
                // Send message 'Afh5 wordt negatief. OK?'
         ZAMSID = 'USR0506';
         ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;

             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Afh5 negatief is 1
               If WUQYCD = '1'; //*IF
                  // Setup message data for message
         ZA0174 = #1EDCD;                        // //Afh5 kode
                  // Send message 'Afh5 is reeds negatief'
         ZAMSID = 'USR0526';
         ZAMSTP = '*INFO';                        //Message type
                 EXSR ZASNMS;

               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Afh5 negatief is 3
                 If WUQYCD = '3'; //*IF
                    // Send message 'Afh R.. komt op nul. Geli'
         ZAMSID = 'USR3787';
         ZAMSTP = '*INFO';                        //Message type
                   EXSR ZASNMS;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
              // Beslag in afh6 wordt of is reeds negatief --> info message
              // CASE: WRK.Afh6 negatief is *
             If WUQZCD = '*'; //*IF
                // Setup message data for message
         ZA0175 = #1EECD;                        // //Afh6 kode
                // Send message 'Afh6 wordt negatief. OK?'
         ZAMSID = 'USR0507';
         ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;

             ELSE;
                // CASE: *OTHERWISE
                // CASE: WRK.Afh6 negatief is 1
               If WUQZCD = '1'; //*IF
                  // Setup message data for message
         ZA0176 = #1EECD;                        // //Afh6 kode
                  // Send message 'Afh6 is reeds negatief'
         ZAMSID = 'USR0527';
         ZAMSTP = '*INFO';                        //Message type
                 EXSR ZASNMS;

               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: WRK.Afh6 negatief is 3
                 If WUQZCD = '3'; //*IF
                    // Send message 'Afh R.. komt op nul. Geli'
         ZAMSID = 'USR3787';
         ZAMSTP = '*INFO';                        //Message type
                   EXSR ZASNMS;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         WUFRCD = '0';                        // //Switch106
           WUCUNN = 0; //Wrk bedrag para
            // Maximum bedrag/type (afzonderlijke tabel)
            // CASE: DTL.BZ kode is = K : Dok maar niet A'pen
           If #1A4CD = 'K'; //*IF
              // Oph. max.bedrag/type :EEF - Type maximum bedrag  *
             CLEAR   AHRC;
     AHS0CO = 'DO';

             //Oph. max.bedrag
             //KEY: Type maxim
             //Switch106
             //Wrk bedrag para

             LWLYXFR(W0RTN:AHRC:WQ0325:WQ0326);
                     If %Error();
                // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LWLYXFR';
                // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           ELSE;
              // CASE: *OTHERWISE
              // Oph. max.bedrag/type :EEF - Type maximum bedrag  *
             CLEAR   AHRC;
     AHS0CO = #1A1CD;

             //Oph. max.bedrag
             //KEY: Type maxim
             //Switch106
             //Wrk bedrag para

             LWLYXFR(W0RTN:AHRC:WQ0327:WQ0328);
                     If %Error();
                // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LWLYXFR';
                // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
            // Wkl+BZ>bedr/mnd controle? - Wkl bet  *
            // RRRRRR = WERKLOOSHEID BEDRAG + BZ BEDRAG + BEDRAG VORST
     EvalR   WUPECD = '0';                        // //SW84
     EvalR   WUW198 = '0';                        // //SW198
           RRRRRR = 0;
           RRRRRR = HWKL + HBEDBZ;
           RRRRRR = RRRRRR + HBEDVO; //+ VORSTBEDRAG
           RMPAR = #1GWNB;
           RRRRWK = 0;
           RRRRBZ = 0;
           //71,... OOK MEETELLEN
           //AFD
           //LIDNR
           //REF.MND
           //TYPE WKL
           MDTOTBDR(#1AACD:#1AFNB:RMPAR:#1A1CD:RRRRWK:RRRRBZ);
             If WUFRCD <> 'Y';
             RRRRRR = RRRRRR + RRRRWK;
             RRRRRR = RRRRRR + RRRRBZ;
             If RRRRRR > BYEBNB; //>MAX BEDR/MND
     EvalR   WUPECD = '1';
             Endif;
           ELSE; //SW106=Y
             If RRRRRR > WUCUNN; //BEDRAG TABEL
     EvalR   WUPECD = '1';
             ENDIF;
             RRRRRR = RRRRRR + RRRRWK;
             RRRRRR = RRRRRR + RRRRBZ;
             If #1A1CD = '52' OR #1A1CD = '51' OR #1A1CD = '53' OR #1A1CD = '34' OR #1A1CD = '35' OR
               If RRRRRR > WUCUNN; //BEDRAG TABEL
     EvalR   WUPECD = '1';
               ENDIF;
             ELSE;
               If RRRRRR > BYEBNB; //>MAX BEDR/MND
     EvalR   WUPECD = '1';
               Endif;
             ENDIF;
           ENDIF;

           If #1A4CD = 'G ' OR #1A4CD = 'C ' OR #1A4CD = 'E ';
             If HVBZ = 0 AND HHBZ = 0 AND HBEDBZ > 0;
     EvalR   WUW198 = '1';                        // //INFO MESSAGE
             Endif; //DAGEN BZ=0
           Endif; //END G,C,E
            // Sw84:bedrag Wkl+BZ>bedr/mnd uit controlerecord --> error
            // CASE: WRK.Switch84 is = 1
           If WUPECD = '1'; //*IF
              // Send message 'Bedrag wkl+bz>max control'
         ZAMSID = 'USR0453';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Sw198=1:info:bijpassing betaling G,C,E met of zonder dagen BZ
            // CASE: WRK.Switch198 is 1
           If WUW198 = '1'; //*IF
              // Send message 'Dagen BZ invullen???'
         ZAMSID = 'USR1647';
         ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;

           Endif; //*FI
            // Zone gn bedrag wklh=N en bedrag nt 0 -->error:combinatie kan niet
            // CASE: DTL.Geen bedrag wklh is N
           If #1BDST = 'N'; //*IF
              // CASE: DTL.Bedrag wkl is niet 0
             If #1HPNB <> *ZERO; //*IF
                // Setup message data for message
         ZA0177 = #1BDST;                        // //Geen bedrag wkl
               ZA0178 = #1HPNB; //Bedrag wkl
                // Send message 'Comb. bedr wkl<>0 & gn =N'
         ZAMSID = 'USR0314';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Zone gn dgn/bedr BZ=N & bedrag BZ nt 0-->error:combinatie kan nie
            // CASE: DTL.Geen dagen/bedrag BZ is N
           If #1BCST = 'N'; //*IF
              // CASE: DTL.Bedrag BZ is niet 0
             If #1GYNB <> *ZERO; //*IF
                // Send message 'Comb. bedrBZ<>0 & gn BZ=N'
         ZAMSID = 'USR0315';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             Endif; //*FI
           Endif; //*FI
            // Berekening netto; //rekening houdend met alle afhoudingskodes
            // CASE: WRK.Switch berekening is 0
           If WUPSCD = '0'; //*IF
              // Update GWlm/vm!!VWlm/vm - Wkl bet  *
             KLMGW = 0;
             KLMVW = 0;
             KVMGW = 0;
             KVMVW = 0;
             KUMHAL = 0;
             If #1GWNB = BYEENB; //ACHT=WKL MND
               If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06';
                 KLMGW = HVAL6; //KUMUL GED.WK
                 If HHAL6 <> 0;
                   KUMHAL = HHAL6 / 2;
                   KLMGW = KLMGW + KUMHAL;
                 Endif; //END HDGN NT0
               Endif;
               If WUCC18 = '04';
                 KLMGW = HVAL6; //KUMUL GED.WK
                 If HHAL6 <> 0;
                   KUMHAL = HHAL6 / 2;
                   KLMGW = KLMGW + KUMHAL;
                 Endif; //END HDGN NT0
               Endif; //END 04
               If #1A1CD <> '02' AND #1A1CD <> '04' AND #1A1CD <> '06';
                 If WUCC18 <> '04';
                   If #1BACD <> '09'; //BEROEP NT 09
                     KLMVW = HVAL6; //KUMUL VOL.WK
                     If HHAL6 <> 0;
                       KUMHAL = HHAL6 / 2;
                       KLMVW = KLMVW + KUMHAL;
                     Endif; //END HDGN NT0
                   Endif; //BEROEP09
                 Endif; //TYPE18->04
               Endif; //06/04/02
               If #1BACD = '09'; //BEROEP=09
                 KLMVW = HVAL5; //KUMUL VOL.WK
                 If HHAL5 <> 0;
                   KUMHAL = HHAL5 / 2;
                   KLMVW = KLMVW + KUMHAL;
                 Endif; //END HDGN NT0
               Endif;
             ELSE; //ACHT<WKL MND
         JJAACH = BYEENB;           // //4 0
     EvalR   MMAACH = BYEENB;           // //2 0
               If MMAACH = 1; //WKLMND=JANUA
                 JJAACH = JJAACH - 1;
         JJMACH = JJAACH;           // //6 0
     EvalR   JJMACH = 12;
               ELSE; //MND NT JANUARI
                 JJMACH = BYEENB - 1;
               Endif; //END MND=JANUARI
               If JJMACH = #1GWNB; //WKLMND-1=ACHT.
                 If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06';
                   KVMGW = HVAL6; //KUMUL GED.WK
                   If HHAL6 <> 0;
                     KUMHAL = HHAL6 / 2;
                     KVMGW = KVMGW + KUMHAL;
                   Endif; //END HDGN NT0
                 Endif;
                 If WUCC18 = '04';
                   KVMGW = HVAL6; //KUMUL GED.WK
                   If HHAL6 <> 0;
                     KUMHAL = HHAL6 / 2;
                     KVMGW = KVMGW + KUMHAL;
                   Endif; //END HDGN NT0
                 Endif;
                 If #1A1CD <> '02' AND #1A1CD <> '04' AND #1A1CD <> '06';
                   If WUCC18 <> '04';
                     If #1BACD <> '09'; //BEROEP NT 09
                       KVMVW = HVAL6; //KUMUL VOL.WK
                       If HHAL6 <> 0;
                         KUMHAL = HHAL6 / 2;
                         KVMVW = KVMVW + KUMHAL;
                       Endif; //END HDGN NT0
                     Endif; //BEROEP 09
                   Endif; //TYPE 18->04
                 Endif; //06/04/02
                 If #1BACD = '09'; //BEROEP=09
                   KVMVW = HVAL5; //KUMUL VOL.WK
                   If HHAL5 <> 0;
                     KUMHAL = HHAL5 / 2;
                     KVMVW = KVMVW + KUMHAL;
                   Endif; //END HDGN NT0
                 Endif;
               Endif;
             Endif; //END ACHT=WKLMND
              // Opv.nettozone:gn DOK(R..) - Wkl betaling  *
              // RESULT=WKLH BEDRAG+BZ BEDRAG+BEDRAG VORST-TAKS OF RWP (TA/BR)
             RESULT = 0;
             RESULW = 0;
             RESULB = 0;
     EvalR   WKLBZ = *BLANK;            // //1

             If #1A4CD = *BLANK OR #1A4CD = 'B ' OR #1A4CD = 'T ' OR #1A4CD = 'S ' OR #1A1CD = '13'
               RESULT = HWKL + HBEDBZ;
               RESULT = RESULT + HBEDVO; //+ VORSTBEDRAG
               RESULT = RESULT - HTAKS; //- TAKS
               RESULT = RESULT - RWP; //- RWP
     EvalR   WKLBZ = 'W';            // //1            RVA GEGEVENS
             ELSE;
               RESULW = HWKL;
               RESULB = HBEDBZ;
               RESULB = RESULB + HBBVO;
               RESULW = RESULW - HTAKSW; //- TAKS WKL
               RESULB = RESULB - HTAKSB; //- TAKS BZ
               RESULW = RESULW - RWP; //- RWP (15)
     EvalR   WKLBZ = 'B';            // //1            RVA+BZ
             Endif;
              //          RESULT    IFGT 0
             If WKLBZ = 'W';
                //**********************************************************************
                //RESULT=RESULT-AFH1->AFH6 BEHALVE BIJ IR- & TB- MOET MEN OPTELLEN
                //KODES TG,TG-,GM,GS,GP KUNNEN HIER NIET VOORKOMEN EN WORDEN DAN
                //OOK VOOR AFTREK UITGEBLANKT OF OP 0 GEZET
                // AFH1
               If #1DVCD = 'TG-' OR #1DVCD = 'TG ' OR #1DVCD = 'GM ' OR #1DVCD = 'GS ' OR #1DVCD = '
         #1DVCD = *BLANK;
                 #1GZNB = 0;
                 #1G0NB = 0;
         #1OYCD = *BLANK;
         #1O5CD = *BLANK;
               Endif;
                // AFH2
               If #1DWCD = 'TG-' OR #1DWCD = 'TG ' OR #1DWCD = 'GM ' OR #1DWCD = 'GS ' OR #1DWCD = '
         #1DWCD = *BLANK;
                 #1G1NB = 0;
                 #1G2NB = 0;
         #1OZCD = *BLANK;
         #1O6CD = *BLANK;
               Endif;
                // AFH3
               If #1DXCD = 'TG-' OR #1DXCD = 'TG ' OR #1DXCD = 'GM ' OR #1DXCD = 'GS ' OR #1DXCD = '
         #1DXCD = *BLANK;
                 #1G3NB = 0;
                 #1G4NB = 0;
         #1O0CD = *BLANK;
         #1O7CD = *BLANK;
               Endif;
                // AFH4
               If #1DYCD = 'TG-' OR #1DYCD = 'TG ' OR #1DYCD = 'GM ' OR #1DYCD = 'GS ' OR #1DYCD = '
         #1DYCD = *BLANK;
                 #1G5NB = 0;
                 #1G6NB = 0;
         #1O1CD = *BLANK;
         #1O8CD = *BLANK;
               Endif;
                // AFH5
               If #1EDCD = 'TG-' OR #1EDCD = 'TG ' OR #1EDCD = 'GM ' OR #1EDCD = 'GS ' OR #1EDCD = '
         #1EDCD = *BLANK;
                 #1HDNB = 0;
                 #1HENB = 0;
         #1O2CD = *BLANK;
         #1O9CD = *BLANK;
               Endif;
                // AFH6
               If #1EECD = 'TG-' OR #1EECD = 'TG ' OR #1EECD = 'GM ' OR #1EECD = 'GS ' OR #1EECD = '
         #1EECD = *BLANK;
                 #1HFNB = 0;
                 #1HGNB = 0;
         #1O3CD = *BLANK;
         #1PACD = *BLANK;
               Endif;
                // SOMMIGE AFHOUDINGEN KUNNEN REEDS UITGEBLANKT ZIJN, DUS KAN MEN
                // VANAF HIER GEEN NT RVA AFHOUDINGEN MEER AFHOUDEN.
     EvalR   MIN1 = #1DVCD;             // //1
     EvalR   MIN2 = #1DWCD;             // //1
     EvalR   MIN3 = #1DXCD;             // //1
     EvalR   MIN4 = #1DYCD;             // //1
     EvalR   MIN5 = #1EDCD;             // //1
     EvalR   MIN6 = #1EECD;             // //1
               If #1DVCD <> *BLANK; //AFH1 KODE
                 If MIN1 = '-';
                   RESULT = RESULT + #1GZNB;
                 ELSE;
                   RESULT = RESULT - #1GZNB;
                 Endif;
               Endif;

               If #1DWCD <> *BLANK; //AFH2 KODE
                 If MIN2 = '-';
                   RESULT = RESULT + #1G1NB;
                 ELSE;
                   RESULT = RESULT - #1G1NB;
                 Endif;
               Endif;

               If #1DXCD <> *BLANK; //AFH3 KODE
                 If MIN3 = '-';
                   RESULT = RESULT + #1G3NB;
                 ELSE;
                   RESULT = RESULT - #1G3NB;
                 Endif;
               Endif;

               If #1DYCD <> *BLANK; //AFH4 KODE
                 If MIN4 = '-';
                   RESULT = RESULT + #1G5NB;
                 ELSE;
                   RESULT = RESULT - #1G5NB;
                 Endif;
               Endif;

               If #1EDCD <> *BLANK; //AFH5 KODE
                 If MIN5 = '-';
                   RESULT = RESULT + #1HDNB;
                 ELSE;
                   RESULT = RESULT - #1HDNB;
                 Endif;
               Endif;

               If #1EECD <> *BLANK; //AFH6 KODE
                 If MIN6 = '-';
                   RESULT = RESULT + #1HFNB;
                 ELSE;
                   RESULT = RESULT - #1HFNB;
                 Endif;
               Endif;
                //----------------------------------------------------------------
                //** RESULT = RESULT - X2 EN BC
               RESULT = RESULT - HX2;
               RESULT = RESULT - HBEDBC;

        WUOCCD = '0';                        // //SWITCH72
        WUODCD = '0';                        // //SWITCH73
        WUOECD = '0';                        // //SWITCH74
        WUOFCD = '0';                        // //SWITCH75
               If RESULT < 0; //NETTO<0
                 RESULT = HWKL + HBEDBZ;
                 RESULT = RESULT + HBEDVO; //+ VORSTBEDRAG
                  //-------------------------------------------------------------
                  //  OPVULLEN TABEL AFHOUDINGEN ADHV. AFH. 1 --> 6
          KOD(1) = #1DVCD;  // AFH1 KODE
          AFH(1) = #1GZNB;  // BEDR
          DAT(1) = #1G0NB;  // MMJJJJ
          TXX(1) = #1OYCD;  // T01,..
          TAS(1) = #1O5CD;  // *OFBLAN

          KOD(2) = #1DWCD;  // AFH2 KODE
          AFH(2) = #1G1NB;  //
          DAT(2) = #1G2NB;  //
          TXX(2) = #1OZCD;  //
          TAS(2) = #1O6CD;  //

          KOD(3) = #1DXCD;  // AFH3 KODE
          AFH(3) = #1G3NB;  //
          DAT(3) = #1G4NB;  //
          TXX(3) = #1O0CD;  //
          TAS(3) = #1O7CD;  //

          KOD(4) = #1DYCD;  // AFH4 KODE
          AFH(4) = #1G5NB;  //
          DAT(4) = #1G6NB;  //
          TXX(4) = #1O1CD;  //
          TAS(4) = #1O8CD;  //

          KOD(5) = #1EDCD;  // AFH5 KODE
          AFH(5) = #1HDNB;
          DAT(5) = #1HENB;
          TXX(5) = #1O2CD;
          TAS(5) = #1O9CD;

          KOD(6) = #1EECD;  // AFH6 KODE
          AFH(6) = #1HFNB;  //
          DAT(6) = #1HGNB;  //
          TXX(6) = #1O3CD;  //
          TAS(6) = #1PACD;  //

          //-------------------------------------------------------------
          //  SORTEREN TABEL AFHOUDINGEN VOLGENS PRIORITEIT

          SortA(D) dsAfh %Fields(Prix);

          #1DVCD = KOD(1);  //
          #1GZNB = AFH(1);  //
          #1G0NB = DAT(1);  //
          #1OYCD = TXX(1);  //
          #1O5CD = TAS(1);

          #1DWCD = KOD(2);
          #1G1NB = AFH(2);
          #1G2NB = DAT(2);
          #1OZCD = TXX(2);
          #1O6CD = TAS(2);

          #1DXCD = KOD(3);
          #1G3NB = AFH(3);
          #1G4NB = DAT(3);
          #1O0CD = TXX(3);
          #1O7CD = TAS(3);

          #1DYCD = KOD(4);
          #1G5NB = AFH(4);
          #1G6NB = DAT(4);
          #1O1CD = TXX(4);
          #1O8CD = TAS(4);

          #1EDCD = KOD(5);
          #1HDNB = AFH(5);
          #1HENB = DAT(5);
          #1O2CD = TXX(5);
          #1O9CD = TAS(5);

          #1EECD = KOD(6);
          #1HFNB = AFH(6);
          #1HGNB = DAT(6);
          #1O3CD = TXX(6);
          #1PACD = TAS(6);

        MIN1 = #1DVCD;
        MIN2 = #1DWCD;
        MIN3 = #1DXCD;
        MIN4 = #1DYCD;
        MIN5 = #1EDCD;
        MIN6 = #1EECD;
          //----------------------------------------------------------------
          // SCHRAPPEN VAN KODES ALS  NETTO < 0 WORDT !!!
          // TEST1->6 = * BIJ NOG TE BEHANDELEN KODES AFHOUDINGEN,
          // TEST1->6 = 0 BIJ BLANKO ZONES; // //= 1 BIJ REEDS AFGETROKKEN KODES
         If #1DVCD = *BLANK;
             TEST1 = '0';            // //1
         ELSE;
             TEST1 = '*';
         Endif;
                 If #1DWCD = *BLANK;
             TEST2 = '0';            // //1
                 ELSE;
             TEST2 = '*';
                 Endif;
                 If #1DXCD = *BLANK;
             TEST3 = '0';            // //1
                 ELSE;
             TEST3 = '*';
                 Endif;
                 If #1DYCD = *BLANK;
             TEST4 = '0';            // //1
                 ELSE;
             TEST4 = '*';
                 Endif;
                 If #1EDCD = *BLANK;
             TEST5 = '0';            // //1
                 ELSE;
             TEST5 = '*';
                 Endif;
                 If #1EECD = *BLANK;
             TEST6 = '0';            // //1
                 ELSE;
             TEST6 = '*';
                 Endif;
                 If #1JQNB = 0;
             TESTX2 = '0';           // //1
                 ELSE;
             TESTX2 = '*';
                 Endif;
                 If #1LQNB = 0;
             TESTBC = '0';           // //1
                 ELSE;
             TESTBC = '*';
                 Endif;

                 TOTRXX = 0;
                 TOTRT = 0;
                 If HTAKS > 0;
                   R01P1 = #1DVCD;
                   R02P1 = #1DWCD;
                   R03P1 = #1DXCD;
                   R04P1 = #1DYCD;
                   R05P1 = #1EDCD;
                   R06P1 = #1EECD;
                   If R01P1 = 'R';
                     TOTRXX = TOTRXX + #1GZNB;
                   ENDIF;
                   If R02P1 = 'R';
                     TOTRXX = TOTRXX + #1G1NB;
                   ENDIF;
                   If R03P1 = 'R';
                     TOTRXX = TOTRXX + #1G3NB;
                   ENDIF;
                   If R04P1 = 'R';
                     TOTRXX = TOTRXX + #1G5NB;
                   ENDIF;
                   If R05P1 = 'R';
                     TOTRXX = TOTRXX + #1HDNB;
                   ENDIF;
                   If R06P1 = 'R';
                     TOTRXX = TOTRXX + #1HFNB;
                   ENDIF;
                   If TOTRXX >= HWKL;
                     HTAKS = 0;
                     HTAKSW = 0;
                   ELSE;
                     TOTRT = TOTRXX + HTAKS;
                     If TOTRT >= HWKL;
                       HTAKS = HWKL - TOTRXX;
                       HTAKSW = HTAKS;
                     ENDIF;
                   ENDIF;
                 ENDIF; //HTAKS>0
                  //----------------------------------------------------------------
                  //** NA S00 --> TAKS EN RWP AFTREKKEN
                 If HTAKS > 0;
                   RESUL2 = RESULT - HTAKS;
                   If RESUL2 >= 0;
                     RESULT = RESUL2;
                   ELSE; //BV -2000 FR
                     WUODCD = '1';
                     HTAKS = HTAKS + RESUL2; //3000+(-2000)
                     HTAKSW = HTAKS; //1000
                     HTAKSB = 0; //0
                     RWP = 0; //0
                     RESULT = 0; //0
                   Endif;
                 Endif; //HTAKS > 0
                 If RWP > 0;
                   RESUL2 = RESULT - RWP;
                   If RESUL2 >= 0;
                     RESULT = RESUL2;
                   ELSE; //BV -2000 FR
                     WUODCD = '1';
                     RWP = RWP + RESUL2; //3000+(-2000)
                     RESULT = 0;
                   Endif;
                 Endif; //END RWP>0
                  //----------------------------------------------------------------
                  //** NA S00,TAKS & RWP --> TB- EN IR- OPTELLEN
                 If TEST1 = '*' AND MIN1 = '-';
                   TEST1 = '1';            // //1
                   RESULT = RESULT + #1GZNB;
                 Endif; //END TEST1=*
                 If TEST2 = '*' AND MIN2 = '-';
                   TEST2 = '1';            // //1
                   RESULT = RESULT + #1G1NB;
                 Endif; //END TEST2=*
                 If TEST3 = '*' AND MIN3 = '-';
                   TEST3 = '1';            // //1
                   RESULT = RESULT + #1G3NB;
                 Endif; //END TEST3=*
                 If TEST4 = '*' AND MIN4 = '-';
                   TEST4 = '1';            // //1
                   RESULT = RESULT + #1G5NB;
                 Endif; //END TEST4=*
                 If TEST5 = '*' AND MIN5 = '-';
                   TEST5 = '1';            // //1
                   RESULT = RESULT + #1HDNB;
                 Endif; //END TEST5=*
                 If TEST6 = '*' AND MIN6 = '-';
                   TEST6 = '1';            // //1
                   RESULT = RESULT + #1HFNB;
                 Endif; //END TEST6=*
                  //----------------------------------------------------------------
                  //** NA S00,TAKS,RWP,TB- & IR- --> ALLE ANDERE AFH. AFTREKKEN
                 If #1DVCD <> 'DI ';
                   If TEST1 = '*';
                     RESUL2 = RESULT - #1GZNB;
                     If RESULT <> 0;
                       TEST1 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1GZNB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST1=*
                 Endif; //END DI

                 If #1DWCD <> 'DI ' and Result>0;
                   If TEST2 = '*';
                     RESUL2 = RESULT - #1G1NB;
                     If RESULT <> 0;
                       TEST2 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G1NB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST2=*
                 Endif; //END DI

                 If #1DXCD <> 'DI ' and Result>0;
                   If TEST3 = '*';
                     RESUL2 = RESULT - #1G3NB;
                     If RESULT <> 0;
                       TEST3 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G3NB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST3=*
                 Endif; //END DI

                 If #1DYCD <> 'DI ' and Result>0;
                   If TEST4 = '*';
                     RESUL2 = RESULT - #1G5NB;
                     If RESULT <> 0;
                       TEST4 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G5NB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST4=*
                 Endif; //END DI

                 If #1EDCD <> 'DI ' and Result>0;
                   If TEST5 = '*';
                     RESUL2 = RESULT - #1HDNB;
                     If RESULT <> 0;
                       TEST5 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HDNB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST5=*
                 Endif; //END DI

                 If #1EECD <> 'DI ' and Result>0;
                   If TEST6 = '*';
                     RESUL2 = RESULT - #1HFNB;
                     If RESULT <> 0;
                       TEST6 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HFNB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST6=*
                 Endif; //END DI
                  //----------------------------------------------------------------
                  //NA S00,TAKS,RWP,TB-,IR-,TB,IR,VO,O01->O99,S01->S99,TV'S NOG BC & X2 AFTR
                  //  BC EERST AFTREKKEN EN DAN PAS X2 = INHOUDING OP LOPENDE MAAND !!
                  //  X2 MAG MAAR ALS LAATSTE BIJDRAGE
                 If TESTX2 = '*' and Result>0;
                   If HX2 > 0;
                     RESUL2 = RESULT - HX2;
                     If RESUL2 < 0;
                         WUOFCD = '1';
                     ELSE;
                       RESULT = RESUL2;
                       TESTX2 = '1';           // //1
                     Endif; //END RESUL2
                   ELSE; //HX2=0
                     TESTX2 = '*';
                   Endif; //END HX2=0
                 Endif; //END TESTX2=*
                  // NA X2 BC
                 If TESTBC = '*' and Result>0;
                   If HBEDBC > 0;
                     RESUL2 = RESULT - HBEDBC;
                     If RESUL2 < 0;
                       WUOFCD = '1';
                       If HBEDB1 > RESULT;
                         BCAAN2 = 0;
                         HBEDB2 = 0;
                       EndIf;
                       If HBEDB1 = RESULT;
                         BCAAN2 = 0;
                         HBEDB2 = 0;
                       Endif;
                       If BCAAN2 > 0;
                         BCAAAA = BCAAN2 - 1; //BCAANTAL-1
                         BCAAN2 = BCAAN2 - 1; //BCAANTAL-1
                         Dow BCAAAA <> 0;
                           If RESULT >= 0;
                             HBEDB2 = BCAAAA * AFDBD2;
                             RESUL2 = RESULT - HBEDB2;
                             RESUL2 = RESUL2 - HBEDB1;
                             If RESUL2 >= 0;
                               BCAAN2 = BCAAAA;
                               RESULT = RESUL2;
                               TESTBC = '1';
                               If RESULT = 0;
                                 leave;
                               ENDIF;
                             Endif; //END >= 0
                           Endif; //END >= 0
                           BCAAAA = BCAAAA - 1; //BCAANTAL-1

                         ENDDO; //ENDDO
                         HBEDB2 = BCAAN2 * AFDBD2; //AANT X BEDR
                         HBEDBC = HBEDB2 + HBEDB1;
                         #1LPNB = BCAAN2 + BCAAN1; //AANTAL
                         #1LQNB = HBEDBC; //BEDR BC
                       Endif; //BCAANT2>0
                       If BCAAN1 > 0;
                         BCAAAA = BCAAN1 - 1; //BCAANTAL-1
                         BCAAN1 = BCAAN1 - 1; //BCAANTAL-1
                         Dow BCAAAA <> 0;
                           If RESULT >= 0;
                             HBEDB1 = BCAAAA * AFDBD1;
                             RESUL2 = RESULT - HBEDB1;
                             If RESUL2 >= 0;
                               BCAAN1 = BCAAAA;
                               RESULT = RESUL2;
                               TESTBC = '1';
                               If RESULT = 0;
                                 leave;
                               ENDIF;
                             Endif; //END >= 0
                           Endif; //END >= 0
                           BCAAAA = BCAAAA - 1; //BCAANTAL-1
                         Enddo; //ENDDO
                         HBEDB1 = BCAAN1 * AFDBD1; //AANT X BEDR
                         HBEDBC = HBEDB1;
                         #1LPNB = BCAAN1; //AANTAL BC'S
                         #1LQNB = HBEDBC; //BEDR BC
                       Endif; //BCAANT1>0

                       BCAAN2 = 0;
                       HBEDB2 = 0;
                       #1LPNB = BCAAN1; //AANTALBC'S
                       HBEDBC = HBEDB1;
                       #1LQNB = HBEDBC; //BEDR BC
                       RESULT = 0;
                       TESTBC = '1';
                     ELSE; //RESUL2>0
                       RESULT = RESUL2;
                       TESTBC = '1';
                     Endif; //END RESUL2
                   ELSE; //BC BEDR=0
                     TESTBC = '*';
                   Endif; //BCBEDR>0
                 Endif; //END TESTBC=*
                  //----------------------------------------------------------------
                  //NA S00,TAKS,RWP,TB-,IR-,TB,IR,VO,O01->O99,S01->S99,TV,BC,X2 NOG DI AFTREK
                 If TEST1 = '*';
                   If #1DVCD = 'DI ';
                     RESUL2 = RESULT - #1GZNB;
                     If RESULT <> 0;
                      TEST1 = '1';            // //1
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1GZNB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                        TEST1 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST1=*
                 If TEST2 = '*' and Result>0;
                   If #1DWCD = 'DI ';
                     RESUL2 = RESULT - #1G1NB;
                     If RESULT <> 0;
                      TEST2 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G1NB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                        TEST2 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST2=*
                 If TEST3 = '*' and Result>0;
                   If #1DXCD = 'DI ';
                     RESUL2 = RESULT - #1G3NB;
                     If RESULT <> 0;
                      TEST3 = '1';            // //1
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G3NB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                       TEST3 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST3=*
                 If TEST4 = '*' and Result>0;
                   If #1DYCD = 'DI ';
                     RESUL2 = RESULT - #1G5NB;
                     If RESULT <> 0;
                      TEST4 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G5NB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                       TEST4 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST4=*
                 If TEST5 = '*' and Result>0;
                   If #1EDCD = 'DI ';
                     RESUL2 = RESULT - #1HDNB;
                     If RESULT <> 0;
                      TEST5 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HDNB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                       TEST5 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST5=*
                 If TEST6 = '*'  and Result>0;
                   If #1EECD = 'DI ';
                     RESUL2 = RESULT - #1HFNB;
                     If RESULT <> 0;
                      TEST6 = '1';            // //1
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HFNB = RESULT;
                       RESULT = 0;
                     ELSE;
                       RESULT = RESUL2;
                       TEST6 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST6=*
                  //---
                 If TEST1 = '*';
                  #1DVCD = *BLANK;                        // //AFH1 KODE
                  #1GZNB = 0; //AFH1 BEDRAG
                  #1G0NB = 0; //AFH1 DATUM
                  #1OYCD = *BLANK;                        // //AFH1 KODE TV
                  #1O5CD = *BLANK;                        // //AFH1 L.MAAL
                 Endif;
                 If TEST2 = '*';
                  #1DWCD = *BLANK;                        // //AFH2 KODE
                  #1G1NB = 0; //AFH2 BEDRAG
                  #1G2NB = 0; //AFH2 DATUM
                  #1OZCD = *BLANK;                        // //AFH2 KODE TV
                  #1O6CD = *BLANK;                        // //AFH2 L.MAAL
                 Endif;
                 If TEST3 = '*';
                  #1DXCD = *BLANK;                        // //AFH3 KODE
                  #1G3NB = 0; //AFH3 BEDRAG
                  #1G4NB = 0; //AFH3 DATUM
                  #1O0CD = *BLANK;                        // //AFH3 KODE TV
                  #1O7CD = *BLANK;                        // //AFH3 L.MAAL
                 Endif;
                 If TEST4 = '*';
                  #1DYCD = *BLANK;                        // //AFH4 KODE
                  #1G5NB = 0; //AFH4 BEDRAG
                  #1G6NB = 0; //AFH4 DATUM
                  #1O1CD = *BLANK;                        // //AFH4 KODE TV
                  #1O8CD = *BLANK;                        // //AFH4 L.MAAL
                 Endif;
                 If TEST5 = '*';
                  #1EDCD = *BLANK;                        // //AFH5 KODE
                  #1HDNB = 0; //AFH5 BEDRAG
                  #1HENB = 0; //AFH5 DATUM
                  #1O2CD = *BLANK;                        // //AFH5 KODE TV
                  #1O9CD = *BLANK;                        // //AFH5 L.MAAL
                 Endif;
                 If TEST6 = '*';
                  #1EECD = *BLANK;                        // //AFH6 KODE
                  #1HFNB = 0; //AFH6 BEDRAG
                  #1HGNB = 0; //AFH6 DATUM
                  #1O3CD = *BLANK;                        // //AFH6 KODE TV
                  #1PACD = *BLANK;                        // //AFH6 L.MAAL
                 Endif;
                 If TESTX2 = '*';
                  #1JQNB = 0; //X2
                  HX2 = 0;
                 Endif;
                 If TESTBC = '*';
                  #1LPNB = 0; //BC AANTAL
                  #1LQNB = 0; //BC BEDRAG
                  #1E9NB = 0; //KAT JAAR
                  HBEDBC = 0;
                  #1CLCD = *BLANK;                        // //KAT KODE
                 Endif;
                  //** OPVULLEN HULPZONES AFH1 --> AFH6
                  WUPJCD = #1DVCD;
                  WUPKCD = #1DWCD;
                  WUPLCD = #1DXCD;
                  WUPMCD = #1DYCD;
                  WUPNCD = #1EDCD;
                  WUPOCD = #1EECD;
               Endif; //END RESULT<0
                //** MOVE RESULT NAAR NETTO ZONE EN TAKS NAAR TAKS-ZONE
               #1HPNB = HWKL; //BEDRAG WKLH
               HBEDBZ = HBEDBZ + HBEDVO; //BEDR BZ+VORST
               HBEDBZ = HBEDBZ + HBBVO; //BEDR BZ+VORST
               #1GYNB = HBEDBZ; //BEDR BZ
               #1BENR = BZINH; //BEDR BZINH BP
               #1GQNB = RESULT; //NETTO ZONE
               #1T6NB = RESULT; //NETTO WKL
             Endif; //WKLBZ=W

              // NU NOG ALS RESULT=0 (WKLBZ=W), MAAR RESULW OF RESULB >0 DUS WKLBZ=B
              // Opv.nettozone2:gn DOK(R.. - Wkl betaling  *
              //RESULW=RESULW-AFH1-->AFH6 BEHALVE BIJ IR-/TB- MOET MEN OPTELLEN
             If WKLBZ = 'B';
                // AFH1
               If #1DVCD = *BLANK;
                  TEST1 = '0';            // //1            0:AFH NT INGEVU
               ELSE;
                 If #1DVCD = 'TG-' OR #1DVCD = 'TG ' OR #1DVCD = 'GM ' OR #1DVCD = 'GS '
                   OR #1DVCD = 'GP' OR #1DVCD = 'GK';
                  TEST1 = 'B';                         // //NAAR BZBEDR
                 ELSE;
                  TEST1 = '*';                         // //NAAR WKLBEDR
                 Endif;
               Endif;
                // AFH2
               If #1DWCD = *BLANK;
                  TEST2 = '0';            // //1
               ELSE;
                 If #1DWCD = 'TG-' OR #1DWCD = 'TG ' OR #1DWCD = 'GM ' OR #1DWCD = 'GS '
                   OR #1DWCD = 'GP' OR #1DWCD = 'GK';
                  TEST2 = 'B';                         // //NAAR BZBEDR
                 ELSE;
                  TEST2 = '*';                         // //NAAR WKLBEDR
                 Endif;
               Endif;
                // AFH3
               If #1DXCD = *BLANK;
                  TEST3 = '0';            // //1
               ELSE;
                 If #1DXCD = 'TG-' OR #1DXCD = 'TG ' OR #1DXCD = 'GM ' OR #1DXCD = 'GS '
                   OR #1DXCD = 'GP' OR #1DXCD = 'GK';
                  TEST3 = 'B';                         // //NAAR BZBEDR
                 ELSE;
                  TEST3 = '*';                         // //NAAR WKLBEDR
                 Endif;
               Endif;
                // AFH4
               If #1DYCD = *BLANK;
                  TEST4 = '0';            // //1
               ELSE;
                 If #1DYCD = 'TG-' OR #1DYCD = 'TG ' OR #1DYCD = 'GM ' OR #1DYCD = 'GS '
                   OR #1DYCD ='GP' OR #1DYCD = 'GK';
                  TEST4 = 'B';                         // //NAAR BZBEDR
                 ELSE;
                  TEST4 = '*';                         // //NAAR WKLBEDR
                 Endif;
               Endif;
                // AFH5
               If #1EDCD = *BLANK;
                  TEST5 = '0';            // //1
               ELSE;
                 If #1EDCD = 'TG-' OR #1EDCD = 'TG ' OR #1EDCD = 'GM ' OR #1EDCD = 'GS '
                   OR #1EDCD = 'GP' OR #1EDCD = 'GK';
                  TEST5 = 'B';                         // //NAAR BZBEDR
                 ELSE;
                  TEST5 = '*';                         // //NAAR WKLBEDR
                 Endif;
               Endif;
                // AFH6
               If #1EECD = *BLANK;
                  TEST6 = '0';            // //1
               ELSE;
                 If #1EECD = 'TG-' OR #1EECD = 'TG ' OR #1EECD = 'GM ' OR #1EECD = 'GS '
                   OR #1EECD = 'GP' OR #1EECD = 'GK';
                  TEST6 = 'B';                         // //NAAR BZBEDR
                 ELSE;
                  TEST6 = '*';                         // //NAAR WKLBEDR
                 Endif;
               Endif;
                // X2
               If #1JQNB = 0;
                  TESTX2 = '0';           // //1
               ELSE;
                  TESTX2 = '*';
               Endif;
                // BC
               If #1LQNB = 0;
                  TESTBC = '0';           // //1
               ELSE;
                  TESTBC = '*';
               Endif;
                //******
                //** TB-,IR-,TG- --> -TEKEN WORDT GESTOPT IN MIN1->MIN6
                  MIN1 = #1DVCD;             // //1
                  MIN2 = #1DWCD;             // //1
                  MIN3 = #1DXCD;             // //1
                  MIN4 = #1DYCD;             // //1
                  MIN5 = #1EDCD;             // //1
                  MIN6 = #1EECD;             // //1

               If TEST1 = '*'; //DUS OP WKL
                  //          #1DVCD    IFNE *BLANK                     AFH1 KODE
                 If MIN1 = '-'; //TB- EN IR-
                   RESULW = RESULW + #1GZNB;
                  TEST1 = '1';                         // //VERWERKT
                 ELSE; //AL BESLAGEN
                   RESULW = RESULW - #1GZNB; //ONDERH, EN
                  TEST1 = '1';                         // //VERWERKT
                 Endif; //TV'S,BEHALV
                  //                    END                             GM EN GS/GP
               Endif;

               If TEST2 = '*'; //DUS OP WKL
                  //          #1DWCD    IFNE *BLANK                     AFH2 KODE
                 If MIN2 = '-';
                   RESULW = RESULW + #1G1NB;
                  TEST2 = '1';                         // //VERWERKT
                 ELSE;
                   RESULW = RESULW - #1G1NB;
                  TEST2 = '1';                         // //VERWERKT
                 Endif;
                  //                    END
               Endif;

               If TEST3 = '*'; //DUS OP WKL
                  //          #1DXCD    IFNE *BLANK                     AFH3 KODE
                 If MIN3 = '-';
                   RESULW = RESULW + #1G3NB;
                  TEST3 = '1';                         // //VERWERKT
                 ELSE;
                   RESULW = RESULW - #1G3NB;
                  TEST3 = '1';                         // //VERWERKT
                 Endif;
                  //                    END
               Endif;

               If TEST4 = '*'; //DUS OP WKL
                  //          #1DYCD    IFNE *BLANK                     AFH4 KODE
                 If MIN4 = '-';
                   RESULW = RESULW + #1G5NB;
                  TEST4 = '1';                         // //VERWERKT
                 ELSE;
                   RESULW = RESULW - #1G5NB;
                  TEST4 = '1';                         // //VERWERKT
                 Endif;
                  //                    END
               Endif;

               If TEST5 = '*'; //DUS OP WKL
                  //          #1EDCD    IFNE *BLANK                     AFH5 KODE
                 If MIN5 = '-';
                   RESULW = RESULW + #1HDNB;
                  TEST5 = '1';                         // //VERWERKT
                 ELSE;
                   RESULW = RESULW - #1HDNB;
                  TEST5 = '1';                         // //VERWERKT
                 Endif;
                  //                    END
               Endif;

               If TEST6 = '*'; //DUS OP WKL
                  //          #1EECD    IFNE *BLANK                     AFH6 KODE
                 If MIN6 = '-';
                   RESULW = RESULW + #1HFNB;
                  TEST6 = '1';                         // //VERWERKT
                 ELSE;
                   RESULW = RESULW - #1HFNB;
                  TEST6 = '1';                         // //VERWERKT
                 Endif;
                  //                    END
               Endif;
                //----------------------------------------------------------------
                //** RESULW = RESULW - X2 EN BC
               RESULW = RESULW - HX2;
               RESULW = RESULW - HBEDBC;
                  TESTX2 = '1';
                  TESTBC = '1';

                  WUOCCD = '0';           // //1            SWITCH72
                  WUODCD = '0';                        // //SWITCH73
                  WUOECD = '0';                        // //SWITCH74
                  WUOFCD = '0';                        // //SWITCH75
               If RESULW < 0; //NETTOWKL<0
                 RESULW = HWKL;
                  //-------------------------------------------------------------
                  //  OPVULLEN TABEL AFHOUDINGEN ADHV. AFH. 1 --> 6
                  KOD(1) = #1DVCD;  // AFH1 KODE
                  AFH(1) = #1GZNB;  //
                  DAT(1) = #1G0NB;  //
                  TXX(1) = #1OYCD;  //
                  TAS(1) = #1O5CD;  //

                  KOD(2) = #1DWCD;  // AFH2 KODE
                  AFH(2) = #1G1NB;  //
                  DAT(2) = #1G2NB;  //
                  TXX(2) = #1OZCD;  //
                  TAS(2) = #1O6CD;  //

                  KOD(3) = #1DXCD;  // AFH3 KODE
                  AFH(3) = #1G3NB;  //
                  DAT(3) = #1G4NB;  //
                  TXX(3) = #1O0CD;  //
                  TAS(3) = #1O7CD;  //

                  KOD(4) = #1DYCD;  // AFH4 KODE
                  AFH(4) = #1G5NB;  //
                  DAT(4) = #1G6NB;  //
                  TXX(4) = #1O1CD;  //
                  TAS(4) = #1O8CD;  //

                  KOD(5) = #1EDCD;  // AFH5 KODE
                  AFH(5) = #1HDNB;  //
                  DAT(5) = #1HENB;  //
                  TXX(5) = #1O2CD;  //
                  TAS(5) = #1O9CD;  //

                  KOD(6) = #1EECD;  // AFH6 KODE
                  AFH(6) = #1HFNB;  //
                  DAT(6) = #1HGNB;  //
                  TXX(6) = #1O3CD;  //
                  TAS(6) = #1PACD;  //
                          //-------------------------------------------------------------
                  //  SORTEREN TABEL AFHOUDINGEN VOLGENS PRIORITEIT
                  //
                  SortA(D) dsAfh %Fields(PRI);

                  #1DVCD = KOD(1);  //
                  #1GZNB = AFH(1);  //
                  #1G0NB = DAT(1);  //
                  #1OYCD = TXX(1);  //
                  #1O5CD = TAS(1);  //

                  #1DWCD = KOD(2);  //
                  #1G1NB = AFH(2);  //
                  #1G2NB = DAT(2);  //
                  #1OZCD = TXX(2);  //
                  #1O6CD = TAS(2);  //

                  #1DXCD = KOD(3);  //
                  #1G3NB = AFH(3);  //
                  #1G4NB = DAT(3);  //
                  #1O0CD = TXX(3);  //
                  #1O7CD = TAS(3);  //

                  #1DYCD = KOD(4);  //
                  #1G5NB = AFH(4);  //
                  #1G6NB = DAT(4);  //
                  #1O1CD = TXX(4);  //
                  #1O8CD = TAS(4);  //

                  #1EDCD = KOD(5);  //
                  #1HDNB = AFH(5);  //
                  #1HENB = DAT(5);  //
                  #1O2CD = TXX(5);  //
                  #1O9CD = TAS(5);  //

                  #1EECD = KOD(6);  //
                  #1HFNB = AFH(6);  //
                  #1HGNB = DAT(6);  //
                  #1O3CD = TXX(6);  //
                  #1PACD = TAS(6);  //

                  MIN1 = #1DVCD;             // //1
                  MIN2 = #1DWCD;             // //1
                  MIN3 = #1DXCD;             // //1
                  MIN4 = #1DYCD;             // //1
                  MIN5 = #1EDCD;             // //1
                  MIN6 = #1EECD;             // //1
                  //----------------------------------------------------------------
                  // SCHRAPPEN VAN KODES ALS  NETTO WKL < 0 WORDT !!!
                  // TEST1->6 = * BIJ NOG TE BEHANDELEN KODES AFHOUDINGEN,
                  // TEST1->6 = 0 BIJ BLANKO ZONES; // //= 1 BIJ REEDS AFGETROKKEN KODES
                  // AFH1
                 If #1DVCD = *BLANK;
                  TEST1 = '0';                         // //0:AFH NT INGEVU
                 ELSE; //*:AFH WELING
                   If #1DVCD = 'TG-' OR #1DVCD = 'TG ' OR #1DVCD = 'GM ' OR #1DVCD = 'GS '
                     OR #1DVCD = 'GP' or #1DVCD = 'GK';
                    TEST1 = 'B';                         // //NAAR BZBEDR
                   ELSE;
                    TEST1 = '*';                         // //NAAR WKLBEDR
                   Endif;
                 Endif;
                  // AFH2
                 If #1DWCD = *BLANK;
                  TEST2 = '0';
                 ELSE;
                   If #1DWCD = 'TG-' OR #1DWCD = 'TG ' OR #1DWCD = 'GM ' OR #1DWCD = 'GS '
                     OR #1DWCD = 'GP' or #1DWCD = 'GK';
                  TEST2 = 'B';                         // //NAAR BZBEDR
                   ELSE;
                  TEST2 = '*';                         // //NAAR WKLBEDR
                   Endif;
                 Endif;
                  // AFH3
                 If #1DXCD = *BLANK;
                  TEST3 = '0';
                 ELSE;
                   If #1DXCD = 'TG-' OR #1DXCD = 'TG ' OR #1DXCD = 'GM ' OR #1DXCD = 'GS '
                     OR #1DXCD = 'GP' or #1DXCD = 'GK';
                    TEST3 = 'B';                         // //NAAR BZBEDR
                   ELSE;
                    TEST3 = '*';                         // //NAAR WKLBEDR
                   Endif;
                 Endif;
                  // AFH4
                 If #1DYCD = *BLANK;
                  TEST4 = '0';
                 ELSE;
                   If #1DYCD = 'TG-' OR #1DYCD = 'TG ' OR #1DYCD = 'GM ' OR #1DYCD = 'GS '
                     OR #1DYCD = 'GP' or #1DYCD = 'GK';
                    TEST4 = 'B';                         // //NAAR BZBEDR
                   ELSE;
                    TEST4 = '*';                         // //NAAR WKLBEDR
                   Endif;
                 Endif;
                  // AFH5
                 If #1EDCD = *BLANK;
                  TEST5 = '0';
                 ELSE;
                   If #1EDCD = 'TG-' OR #1EDCD = 'TG ' OR #1EDCD = 'GM ' OR #1EDCD = 'GS '
                     OR #1EDCD = 'GP' or #1EDCD = 'GK';
                    TEST5 = 'B';                         // //NAAR BZBEDR
                   ELSE;
                    TEST5 = '*';                         // //NAAR WKLBEDR
                   Endif;
                 Endif;
                  // AFH6
                 If #1EECD = *BLANK;
                  TEST6 = '0';
                 ELSE;
                   If #1EECD = 'TG-' OR #1EECD = 'TG ' OR #1EECD = 'GM ' OR #1EECD = 'GS '
                     OR #1EECD = 'GP' or #1EECD = 'GK';
                    TEST6 = 'B';                         // //NAAR BZBEDR
                   ELSE;
                    TEST6 = '*';                         // //NAAR WKLBEDR
                   Endif;
                 Endif;
                  // X2
                 If #1JQNB = 0;
                  TESTX2 = '0';
                 ELSE;
                  TESTX2 = '*';
                 Endif;
                  // BC
                 If #1LQNB = 0;
                  TESTBC = '0';
                 ELSE;
                  TESTBC = '*';
                 Endif;
                  // TB-,IR-,TG- --> -TEKEN WORDT GESTOPT IN MIN1->MIN6
                  MIN1 = #1DVCD;             // //1
                  MIN2 = #1DWCD;             // //1
                  MIN3 = #1DXCD;             // //1
                  MIN4 = #1DYCD;             // //1
                  MIN5 = #1EDCD;             // //1
                  MIN6 = #1EECD;             // //1

                 TOTRXX = 0;
                 TOTRT = 0;
                 If HTAKSW > 0;
                   R01P1 = #1DVCD;            // //1
                   R02P1 = #1DWCD;            // //1
                   R03P1 = #1DXCD;            // //1
                   R04P1 = #1DYCD;            // //1
                   R05P1 = #1EDCD;            // //1
                   R06P1 = #1EECD;            // //1
                   If R01P1 = 'R';
                     TOTRXX = TOTRXX + #1GZNB;
                   ENDIF;
                   If R02P1 = 'R';
                     TOTRXX = TOTRXX + #1G1NB;
                   ENDIF;
                   If R03P1 = 'R';
                     TOTRXX = TOTRXX + #1G3NB;
                   ENDIF;
                   If R04P1 = 'R';
                     TOTRXX = TOTRXX + #1G5NB;
                   ENDIF;
                   If R05P1 = 'R';
                     TOTRXX = TOTRXX + #1HDNB;
                   ENDIF;
                   If R06P1 = 'R';
                     TOTRXX = TOTRXX + #1HFNB;
                   ENDIF;
                   If TOTRXX >= HWKL;
                     HTAKS = HTAKSB;
                     HTAKSW = 0;
                   ELSE;
                     TOTRT = TOTRXX + HTAKSW;
                     If TOTRT >= HWKL;
                       HTAKSW = HWKL - TOTRXX;
                       HTAKS = HTAKSW + HTAKSB;
                     ENDIF;
                   ENDIF;
                 ENDIF; //HTAKSW>0
                  //----------------------------------------------------------------
                  //** NA S00 --> TAKS EN RWP AFTREKKEN
                 If HTAKSW > 0;
                   RESUL2 = RESULW - HTAKSW;
                    //          RESUL2    SUB  RWP       RESUL2           KAN BIJ TYPE
                   If RESUL2 >= 0; //15
                     RESULW = RESUL2;
                   ELSE;
                     WUODCD = '1';
                     HTAKSW = HTAKSW + RESUL2; //300+(-200)=100
                      //                    Z-ADDHTAKSB    HTAKS
                     HTAKS = HTAKSW + HTAKSB;
                     RWP = 0;
                     RESULW = 0;
                   Endif;
                 Endif; //HTAKSW > 0
                 If RWP > 0;
                   RESUL2 = RESULW - RWP; //KAN BIJ TYPE
                   If RESUL2 >= 0; //15
                     RESULW = RESUL2;
                   ELSE;
                    WUODCD = '1';
                      //          HTAKSW    ADD  RESUL2    HTAKSW
                      //                    Z-ADDHTAKSB    HTAKS
                      //          HTAKSW    ADD  HTAKSB    HTAKS
                     RWP = RWP + RESUL2; //100+(-50)=50
                     RESULW = 0;
                   Endif;
                 Endif; //RWP    > 0
                  //----------------------------------------------------------------
                  //** NA S00,TAKS & RWP --> TB- EN IR- OPTELLEN
                 If TEST1 = '*' AND MIN1 = '-'; //OP WKL
                   TEST1 = '1';                         // //VERWERKT
                   RESULW = RESULW + #1GZNB;
                 Endif; //END TEST1=*
                 If TEST2 = '*' AND MIN2 = '-';
                   TEST2 = '1';
                   RESULW = RESULW + #1G1NB;
                 Endif; //END TEST2=*
                 If TEST3 = '*' AND MIN3 = '-';
                   TEST3 = '1';
                   RESULW = RESULW + #1G3NB;
                 Endif; //END TEST3=*
                 If TEST4 = '*' AND MIN4 = '-';
                   TEST4 = '1';
                   RESULW = RESULW + #1G5NB;
                 Endif; //END TEST4=*
                 If TEST5 = '*' AND MIN5 = '-';
                   TEST5 = '1';
                   RESULW = RESULW + #1HDNB;
                 Endif; //END TEST5=*
                 If TEST6 = '*' AND MIN6 = '-';
                   TEST6 = '1';
                   RESULW = RESULW + #1HFNB;
                 Endif; //END TEST6=*
                  //----------------------------------------------------------------
                  //NA S00,TAKSW,RWP,TB-,IR-:ALLE ANDERE AFH.AFTREKKEN ALS TEST1->6 NOG * IS
                 If #1DVCD <> 'DI ';
                   If TEST1 = '*';
                     RESUL2 = RESULW - #1GZNB;
                     If RESULW <> 0;
                      TEST1 = '1';            // //1
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1GZNB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST1=*
                 Endif; //END DI

                 If #1DWCD <> 'DI ' and Resulw>0;
                   If TEST2 = '*';
                     RESUL2 = RESULW - #1G1NB;
                     If RESULW <> 0;
                      TEST2 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G1NB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST2=*
                 Endif; //END DI

                 If #1DXCD <> 'DI ' and Resulw>0;
                   If TEST3 = '*';
                     RESUL2 = RESULW - #1G3NB;
                     If RESULW <> 0;
                       TEST3 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G3NB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST3=*
                 Endif; //END DI

                 If #1DYCD <> 'DI ' and Resulw>0;
                   If TEST4 = '*';
                     RESUL2 = RESULW - #1G5NB;
                     If RESULW <> 0;
                      TEST4 = '1';            // //1
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G5NB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST4=*
                 Endif; //END DI

                 If #1EDCD <> 'DI ' and Resulw>0;
                   If TEST5 = '*';
                     RESUL2 = RESULW - #1HDNB;
                     If RESULW <> 0;
                      TEST5 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HDNB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST5=*
                 Endif; //END DI

                 If #1EECD <> 'DI '  and Resulw>0;
                   If TEST6 = '*';
                     RESUL2 = RESULW - #1HFNB;
                     If RESULW <> 0;
                      TEST6 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HFNB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST6=*
                 Endif; //END DI
                  //----------------------------------------------------------------
                  //NA S00,TAKSW,RWP,TB-,IR-,TB,IR,VO,O01->O99,S01->S99,TV'S NOG BC & X2 AFTR
                  // EERST BC AFTREKKEN EN ALS LAATSTE PAS X2 ? DUS X2 EERST KIJKEN OF
                  // ER NOG CENTJE SGENOEG ZIJN VOOR X2

                 If TESTX2 = '*' and Resulw>0;
                   If HX2 > 0;
                     RESUL2 = RESULW - HX2;
                     If RESUL2 < 0;
                        WUOFCD = '1';
                     ELSE;
                       RESULW = RESUL2;
                       TESTX2 = '1';
                     Endif; //END RESUL2
                   ELSE; //HX2=0
                    TESTX2 = '*';
                   Endif; //END HX2=0
                 Endif; //END TESTX2=*
                 If TESTBC = '*' and Resulw>0;
                   If HBEDBC > 0;
                     RESUL2 = RESULW - HBEDBC;
                     If RESUL2 < 0;
                       WUOFCD = '1';
                       If HBEDB1 > RESULW;
                         BCAAN2 = 0;
                         HBEDB2 = 0;
                       Endif;
                       If HBEDB1 = RESULW;
                         BCAAN2 = 0;
                         HBEDB2 = 0;
                       Endif;
                       If BCAAN2 > 0;
                         BCAAAA = BCAAN2 - 1; //BCAANTAL-1
                         BCAAN2 = BCAAN2 - 1; //BCAANTAL-1
                         Dow BCAAAA <> 0;
                           If RESULW >= 0;
                             HBEDB2 = BCAAAA * AFDBD2;
                             RESUL2 = RESULW - HBEDB2;
                             RESUL2 = RESUL2 - HBEDB1;
                             If RESUL2 >= 0;
                               BCAAN2 = BCAAAA;
                               RESULW = RESUL2;
                               TESTBC = '1';
                               If RESULW = 0;
                                 leave;
                               ENDIF;
                             Endif; //END >= 0
                           Endif; //END >= 0
                           BCAAAA = BCAAAA - 1; //BCAANTAL-1
                         Enddo; //ENDDO
                         HBEDB2 = BCAAN2 * AFDBD2; //AANT X BEDR
                         HBEDBC = HBEDB2 + HBEDB1;
                         #1LPNB = BCAAN2 + BCAAN1; //AANTAL
                         #1LQNB = HBEDBC; //BEDR BC
                       Endif; //BCAANT2>0
                       If BCAAN1 > 0;
                         BCAAAA = BCAAN1 - 1; //BCAANTAL-1
                         BCAAN1 = BCAAN1 - 1; //BCAANTAL-1
                         Dow BCAAAA <> 0;
                           If RESULW >= 0;
                             HBEDB1 = BCAAAA * AFDBD1;
                             RESUL2 = RESULW - HBEDB1;
                             If RESUL2 >= 0;
                               BCAAN1 = BCAAAA;
                               RESULW = RESUL2;
                               TESTBC = '1';
                               If RESULW = 0;
                                 leave;
                               ENDIF;
                             Endif; //END >= 0
                           Endif; //END >= 0
                           BCAAAA = BCAAAA - 1; //BCAANTAL-1
                         Enddo; //ENDDO
                         HBEDB1 = BCAAN1 * AFDBD1; //AANT X BEDR
                         HBEDBC = HBEDB1;
                         #1LPNB = BCAAN1; //AANTALBC'S
                         #1LQNB = HBEDBC; //BEDR BC
                       Endif; //BCAANT1>0

                       BCAAN2 = 0;
                       HBEDB2 = 0;
                       #1LPNB = BCAAN1; //AANTALBC'S
                       HBEDBC = HBEDB1;
                       #1LQNB = HBEDBC; //BEDR BC
                       RESULW = 0;
                       TESTBC = '1';
                     ELSE; //RESUL2>0
                       RESULW = RESUL2;
                       TESTBC = '1';
                     Endif; //END RESUL2
                   ELSE; //BC BEDR=0
                    TESTBC = '*';
                   Endif; //BCBEDR>0
                 Endif; //END TESTBC=*

                  //----------------------------------------------------------------
                  //NA S00,TAKSW,RWP,TB-,IR-,TB,IR,VO,O01->O99,S01->S99,TV,BC,X2 NOG DI AFTR
                 If TEST1 = '*';
                   If #1DVCD = 'DI ';
                     RESUL2 = RESULW - #1GZNB;
                     If RESULW <> 0;
                      TEST1 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1GZNB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                       TEST1 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST1=*
                 If TEST2 = '*' and Resulw>0;
                   If #1DWCD = 'DI ';
                     RESUL2 = RESULW - #1G1NB;
                     If RESULW <> 0;
                      TEST2 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G1NB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                       TEST2 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST2=*
                 If TEST3 = '*' and Resulw>0;
                   If #1DXCD = 'DI ';
                     RESUL2 = RESULW - #1G3NB;
                     If RESULW <> 0;
                      TEST3 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G3NB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                       TEST3 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST3=*
                 If TEST4 = '*' and Resulw>0;
                   If #1DYCD = 'DI ';
                     RESUL2 = RESULW - #1G5NB;
                     If RESULW <> 0;
                      TEST4 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G5NB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                       TEST4 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST4=*
                 If TEST5 = '*' and Resulw>0;
                   If #1EDCD = 'DI ';
                     RESUL2 = RESULW - #1HDNB;
                     If RESULW <> 0;
                      TEST5 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HDNB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                       TEST5 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST5=*
                 If TEST6 = '*' and Resulw>0;
                   If #1EECD = 'DI ';
                     RESUL2 = RESULW - #1HFNB;
                     If RESULW <> 0;
                      TEST6 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HFNB = RESULW;
                       RESULW = 0;
                     ELSE;
                       RESULW = RESUL2;
                       TEST6 = '1';
                     Endif; //END RESUL2
                   Endif; //END DI
                 Endif; //END TEST6=*

               Endif; //END RESULW<0
                //**************************************************************
                //VNF HIER BEGINNEN WE AF TE HOUDEN VAN RESULB : RESULB=BEDRAG BZ=HBEDBZ
                // RESULB = RESULB-GM-GS-GP-GK-TG  + TG-
               If TEST1 = 'B';
                  //          #1DVCD    IFNE *BLANK                     AFH1 KODE
                 If MIN1 = '-';
                   TEST1 = '2';
                   RESULB = RESULB + #1GZNB;
                 ELSE;
                   RESULB = RESULB - #1GZNB;
                   TEST1 = '2';
                 Endif;
                  //                    END
               Endif;

               If TEST2 = 'B';
                  //          #1DWCD    IFNE *BLANK                     AFH2 KODE
                 If MIN2 = '-';
                   RESULB = RESULB + #1G1NB;
                   TEST2 = '2';
                 ELSE;
                   RESULB = RESULB - #1G1NB;
                   TEST2 = '2';
                 Endif;
                  //                    END
               Endif;

               If TEST3 = 'B';
                  //          #1DXCD    IFNE *BLANK                     AFH3 KODE
                 If MIN3 = '-';
                   RESULB = RESULB + #1G3NB;
                   TEST3 = '2';
                 ELSE;
                   RESULB = RESULB - #1G3NB;
                   TEST3 = '2';
                 Endif;
                  //                    END
               Endif;

               If TEST4 = 'B';
                  //          #1DYCD    IFNE *BLANK                     AFH4 KODE
                 If MIN4 = '-';
                   RESULB = RESULB + #1G5NB;
                   TEST4 = '2';
                 ELSE;
                   RESULB = RESULB - #1G5NB;
                   TEST4 = '2';
                 Endif;
                  //                    END
               Endif;

               If TEST5 = 'B';
                  //          #1EDCD    IFNE *BLANK                     AFH5 KODE
                 If MIN5 = '-';
                   RESULB = RESULB + #1HDNB;
                   TEST5 = '2';
                 ELSE;
                   RESULB = RESULB - #1HDNB;
                   TEST5 = '2';
                 Endif;
                  //                    END
               Endif;

               If TEST6 = 'B';
                  //          #1EECD    IFNE *BLANK                     AFH6 KODE
                 If MIN6 = '-';
                   RESULB = RESULB + #1HFNB;
                   TEST6 = '2';
                 ELSE;
                   RESULB = RESULB - #1HFNB;
                   TEST6 = '2';
                 Endif;
                  //                    END
               Endif;
                //----------------------------------------------------------------
               If RESULB < 0; //NETTO<0
                 RESULB = HBEDBZ;
                 RESULB = RESULB + HBBVO;
                  //-------------------------------------------------------------
                  //  OPVULLEN TABEL AFHOUDINGEN ADHV. AFH. 1 --> 6
                  //-------------------------------------------------------------
                  // SORTERING KAN REEDS VROEGER GEBEURD ZIJN BIJ RESULW<0
                  // DOCH WAS DEZE TOEN > 0, DAN IS DIE SORTERING NIET GEBEURD
                  // DAN MOET MEN NOG WETEN OF TEST1=0,1,B OF *; //....
                  KOD(1) = #1DVCD;  // AFH1 KODE
                  AFH(1) = #1GZNB;  //
                  DAT(1) = #1G0NB;  //
                  TXX(1) = #1OYCD;  //
                  TAS(1) = #1O5CD;  //
                  TTT(1) = TEST1;  // TEST1

                  KOD(2) = #1DWCD;  // AFH2 KODE
                  AFH(2) = #1G1NB;  //
                  DAT(2) = #1G2NB;  //
                  TXX(2) = #1OZCD;  //
                  TAS(2) = #1O6CD;  //
                  TTT(2) = TEST2;  // TEST2

                  KOD(3) = #1DXCD;  // AFH3 KODE
                  AFH(3) = #1G3NB;  //
                  DAT(3) = #1G4NB;  //
                  TXX(3) = #1O0CD;  //
                  TAS(3) = #1O7CD;  //
                  TTT(3) = TEST3;  // TEST3

                  KOD(4) = #1DYCD;  // AFH4 KODE
                  AFH(4) = #1G5NB;  //
                  DAT(4) = #1G6NB;  //
                  TXX(4) = #1O1CD;  //
                  TAS(4) = #1O8CD;  //
                  TTT(4) = TEST4;  // TEST4

                  KOD(5) = #1EDCD;  // AFH5 KODE
                  AFH(5) = #1HDNB;  //
                  DAT(5) = #1HENB;  //
                  TXX(5) = #1O2CD;  //
                  TAS(5) = #1O9CD;  //
                  TTT(5) = TEST5;  // TEST5

                  KOD(6) = #1EECD;  // AFH6 KODE
                  AFH(6) = #1HFNB;  //
                  DAT(6) = #1HGNB;  //
                  TXX(6) = #1O3CD;  //
                  TAS(6) = #1PACD;  //
                  TTT(6) = TEST6;  // TEST6
                  //-------------------------------------------------------------
                  //  SORTEREN TABEL AFHOUDINGEN VOLGENS PRIORITEIT
                  SortA(D) dsAfh %fields(PRI);

                  #1DVCD = KOD(1);  //
                  #1GZNB = AFH(1);  //
                  #1G0NB = DAT(1);  //
                  #1OYCD = TXX(1);  //
                  #1O5CD = TAS(1);  //
                  TEST1 = TTT(1);  //

                  #1DWCD = KOD(2);  //
                  #1G1NB = AFH(2);  //
                  #1G2NB = DAT(2);  //
                  #1OZCD = TXX(2);  //
                  #1O6CD = TAS(2);  //
                  TEST2 = TTT(2);  //

                  #1DXCD = KOD(3);  //
                  #1G3NB = AFH(3);  //
                  #1G4NB = DAT(3);  //
                  #1O0CD = TXX(3);  //
                  #1O7CD = TAS(3);  //
                  TEST3 = TTT(3);  //

                  #1DYCD = KOD(4);  //
                  #1G5NB = AFH(4);  //
                  #1G6NB = DAT(4);  //
                  #1O1CD = TXX(4);  //
                  #1O8CD = TAS(4);  //
                  TEST4 = TTT(4);  //

                  #1EDCD = KOD(5);  //
                  #1HDNB = AFH(5);  //
                  #1HENB = DAT(5);  //
                  #1O2CD = TXX(5);  //
                  #1O9CD = TAS(5);  //
                  TEST5 = TTT(5);  //

                  #1EECD = KOD(6);  //
                  #1HFNB = AFH(6);  //
                  #1HGNB = DAT(6);  //
                  #1O3CD = TXX(6);  //
                  #1PACD = TAS(6);  //
                  TEST6 = TTT(6);  //

                   MIN1 = #1DVCD;             // //1
                   MIN2 = #1DWCD;             // //1
                   MIN3 = #1DXCD;             // //1
                   MIN4 = #1DYCD;             // //1
                   MIN5 = #1EDCD;             // //1
                   MIN6 = #1EECD;             // //1
                  //----------------------------------------------------------------
                  // TEST1->6 = * BIJ NOG TE BEHANDELEN KODES AFHOUDINGEN WKLH
                  // TEST1->6 = 0 BIJ BLANKO ZONES; // //= 1 BIJ REEDS AFGETROKKEN KODES
                  // TEST1->6 = 2 BIJ BZ PROBEREN AF TE TREKKEN DOCH RESULB WERD<0
                  // TEST1->6 = B BIJ NOG TE BEHANDELEN KODES AFHOUDINGEN BZ
                  //               (TG,TG-,GM, GS EN GP EN GK)
                 If TEST1 = '2';
                  TEST1 = 'B';
                 Endif;
                 If TEST2 = '2';
                  TEST2 = 'B';
                 Endif;
                 If TEST3 = '2';
                  TEST3 = 'B';
                 Endif;
                 If TEST4 = '2';
                  TEST4 = 'B';
                 Endif;
                 If TEST5 = '2';
                  TEST5 = 'B';
                 Endif;
                 If TEST6 = '2';
                  TEST6 = 'B';
                 Endif;
                  //----------------------------------------------------------------
                  //** EERST --> TAKSB  AFTREKKEN
                 RESUL2 = RESULB - HTAKSB;
                  //          RESUL2    SUB  RWP       RESUL2     (RWP OP BZ BEST NT
                 If RESUL2 >= 0;
                   RESULB = RESUL2;
                 ELSE;
                  WUODCD = '1';
                   HTAKSB = HTAKSB + RESUL2; //100+(-70)=30
                   HTAKS = HTAKSB + HTAKSW;
                   RWP = 0;
                   RESULB = 0;
                 Endif;
                  //----------------------------------------------------------------
                  //** NA TAKSB  --> TG-  OPTELLEN
                 If TEST1 = 'B' AND #1DVCD = 'TG-';
                  TEST1 = '1';
                   RESULB = RESULB + #1GZNB;
                 Endif; //END TEST1=*
                 If TEST2 = 'B' AND #1DWCD = 'TG-';
                  TEST2 = '1';
                   RESULB = RESULB + #1G1NB;
                 Endif; //END TEST2=*
                 If TEST3 = 'B' AND #1DXCD = 'TG-';
                  TEST3 = '1';
                   RESULB = RESULB + #1G3NB;
                 Endif; //END TEST3=*
                 If TEST4 = 'B' AND #1DYCD = 'TG-';
                  TEST4 = '1';
                   RESULB = RESULB + #1G5NB;
                 Endif; //END TEST4=*
                 If TEST5 = 'B' AND #1EDCD = 'TG-';
                  TEST5 = '1';
                   RESULB = RESULB + #1HDNB;
                 Endif; //END TEST5=*
                 If TEST6 = 'B' AND #1EECD = 'TG-';
                  TEST6 = '1';
                   RESULB = RESULB + #1HFNB;
                 Endif; //END TEST6=*
                  //----------------------------------------------------------------
                  //** NA TAKSB,TG- --> TG AFTREKKEN
                 If TEST1 = 'B';
                   If #1DVCD = 'TG ';
                     RESUL2 = RESULB - #1GZNB;
                     If RESULB <> 0;
                      TEST1 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1GZNB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST1=*
                 Endif; //END DI

                 If TEST2 = 'B' and ResulB>0;
                   If #1DWCD = 'TG ';
                     RESUL2 = RESULB - #1G1NB;
                     If RESULB <> 0;
                      TEST2 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G1NB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST2=*
                 Endif; //END DI

                 If TEST3 = 'B' and ResulB>0;
                   If #1DXCD = 'TG ';
                     RESUL2 = RESULB - #1G3NB;
                     If RESULB <> 0;
                      TEST3 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G3NB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST3=*
                 Endif; //END DI

                 If TEST4 = 'B'  and ResulB>0;
                   If #1DYCD = 'TG ';
                     RESUL2 = RESULB - #1G5NB;
                     If RESULB <> 0;
                      TEST4 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G5NB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST4=*
                 Endif; //END DI

                 If TEST5 = 'B' and ResulB>0;
                   If #1EDCD = 'TG ';
                     RESUL2 = RESULB - #1HDNB;
                     If RESULB <> 0;
                      TEST5 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HDNB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST5=*
                 Endif; //END DI

                 If TEST6 = 'B' and ResulB>0;
                   If #1EECD <> 'TG ';
                     RESUL2 = RESULB - #1HFNB;
                     If RESULB <> 0;
                      TEST6 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HFNB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                     Endif; //END RESUL2
                   Endif; //END TEST6=*
                 Endif; //END DI
                  //----------------------------------------------------------------
                  //** NA TAKSB,TG-,TG OOK NOG GM, GS EN GP AFTREKKEN
                 If TEST1 = 'B';
                   If #1DVCD = 'GM ' OR #1DVCD = 'GS ' OR #1DVCD = 'GP ' OR #1DVCD = 'GK ';
                     RESUL2 = RESULB - #1GZNB;
                     If RESULB <> 0;
                      TEST1 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1GZNB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                       TEST1 = '1';
                     Endif; //END RESUL2
                   Endif; //END GM,GS,GP
                 Endif; //END TEST1=B
                 If TEST2 = 'B' and ResulB>0;
                   If #1DWCD = 'GM ' OR #1DWCD = 'GS ' OR #1DWCD = 'GP ' OR #1DWCD = 'GK ';
                     RESUL2 = RESULB - #1G1NB;
                     If RESULB <> 0;
                      TEST2 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G1NB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                       TEST2 = '1';
                     Endif; //END RESUL2
                   Endif; //END GM,GS,GP
                 Endif; //END TEST2=B
                 If TEST3 = 'B' and ResulB>0;
                   If #1DXCD = 'GM ' OR #1DXCD = 'GS ' OR #1DXCD = 'GP ' OR #1DXCD = 'GK ';
                     RESUL2 = RESULB - #1G3NB;
                     If RESULB <> 0;
                      TEST3 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G3NB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                       TEST3 = '1';
                     Endif; //END RESUL2
                   Endif; //END GM,GS,GP
                 Endif; //END TEST3=B
                 If TEST4 = 'B' and ResulB>0;
                   If #1DYCD = 'GM ' OR #1DYCD = 'GS ' OR #1DYCD = 'GP ' OR #1DYCD = 'GK ';
                     RESUL2 = RESULB - #1G5NB;
                     If RESULB <> 0;
                      TEST4 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1G5NB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                       TEST4 = '1';
                     Endif; //END RESUL2
                   Endif; //END GM,GS,GP
                 Endif; //END TEST4=B
                 If TEST5 = 'B' and ResulB>0;
                   If #1EDCD = 'GM ' OR #1EDCD = 'GS ' OR #1EDCD = 'GP ' OR #1EDCD = 'GK ';
                     RESUL2 = RESULB - #1HDNB;
                     If RESULB <> 0;
                      TEST5 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HDNB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                       TEST5 = '1';
                     Endif; //END RESUL2
                   Endif; //END GM,GS,GP
                 Endif; //END TEST5=B
                 If TEST6 = 'B' and ResulB>0;
                   If #1EECD = 'GM ' OR #1EECD = 'GS ' OR #1EECD = 'GP ' OR #1EECD = 'GK ';
                     RESUL2 = RESULB - #1HFNB;
                     If RESULB <> 0;
                      TEST6 = '1';
                     Endif;
                     If RESUL2 < 0;
                       WUOECD = '1';
                       #1HFNB = RESULB;
                       RESULB = 0;
                     ELSE;
                       RESULB = RESUL2;
                       TEST6 = '1';
                     Endif; //END RESUL2
                   Endif; //END GM,GS,GP
                 Endif; //END TEST6=B

               Endif; //END RESULB<0

               If TEST1 = '*' OR TEST1 = 'B';
                  #1DVCD = *BLANK;                        // //AFH1 KODE
                  #1GZNB = 0; //AFH1 BEDRAG
                  #1G0NB = 0; //AFH1 DATUM
                  #1OYCD = *BLANK;                        // //AFH1 KODE TV
                  #1O5CD = *BLANK;                        // //AFH1 L.MAAL
               Endif;
               If TEST2 = '*' OR TEST2 = 'B';
                  #1DWCD = *BLANK;                        // //AFH2 KODE
                  #1G1NB = 0; //AFH2 BEDRAG
                  #1G2NB = 0; //AFH2 DATUM
                  #1OZCD = *BLANK;                        // //AFH2 KODE TV
                  #1O6CD = *BLANK;                        // //AFH2 L.MAAL
               Endif;
               If TEST3 = '*' OR TEST3 = 'B';
                  #1DXCD = *BLANK;                        // //AFH3 KODE
                  #1G3NB = 0; //AFH3 BEDRAG
                  #1G4NB = 0; //AFH3 DATUM
                  #1O0CD = *BLANK;                        // //AFH3 KODE TV
                  #1O7CD = *BLANK;                        // //AFH3 L.MAAL
               Endif;
               If TEST4 = '*' OR TEST4 = 'B';
                  #1DYCD = *BLANK;                        // //AFH4 KODE
                  #1G5NB = 0; //AFH4 BEDRAG
                  #1G6NB = 0; //AFH4 DATUM
                  #1O1CD = *BLANK;                        // //AFH4 KODE TV
                  #1O8CD = *BLANK;                        // //AFH4 L.MAAL
               Endif;
               If TEST5 = '*' OR TEST5 = 'B';
                  #1EDCD = *BLANK;                        // //AFH5 KODE
                  #1HDNB = 0; //AFH5 BEDRAG
                  #1HENB = 0; //AFH5 DATUM
                  #1O2CD = *BLANK;                        // //AFH5 KODE TV
                  #1O9CD = *BLANK;                        // //AFH5 L.MAAL
               Endif;
               If TEST6 = '*' OR TEST6 = 'B';
                  #1EECD = *BLANK;                        // //AFH6 KODE
                  #1HFNB = 0; //AFH6 BEDRAG
                  #1HGNB = 0; //AFH6 DATUM
                  #1O3CD = *BLANK;                        // //AFH6 KODE TV
                  #1PACD = *BLANK;                        // //AFH6 L.MAAL
               Endif;
               If TESTX2 = '*';
                  #1JQNB = 0; //X2
                  HX2 = 0;
                  #1JQNB = 0;
               Endif;
               If TESTBC = '*';
                  #1LPNB = 0; //BC AANTAL
                  #1LQNB = 0; //BC BEDRAG
                  #1E9NB = 0; //KAT JAAR
                  HBEDBC = 0;
                  #1CLCD = *BLANK;                        // //KAT KODE
               Endif;
                //----------------------------------------------------------------
                //** OPVULLEN HULPZONES AFH1 --> AFH6
                  WUPJCD = #1DVCD;
                  WUPKCD = #1DWCD;
                  WUPLCD = #1DXCD;
                  WUPMCD = #1DYCD;
                  WUPNCD = #1EDCD;
                  WUPOCD = #1EECD;
                //----------------------------------------------------------------
                //** MOVE RESULW NAAR NETTO ZONE EN TAKSW NAAR TAKS-ZONE
                //** MOVE RESULB NAAR NETTO ZONE BZ EN TAKSB NAAR TAKSB-ZONE
               #1HPNB = HWKL; //BEDRAG WKLH
               HBEDBZ = HBEDBZ + HBEDVO; //BEDR BZ+VORST
               HBEDBZ = HBEDBZ + HBBVO; //BEDR BZ+VORST
               #1GYNB = HBEDBZ; //BEDR BZ
               #1BENR = BZINH; //BEDR BZINH BP
               #1T6NB = RESULW; //NETTO WKL
               #1T7NB = RESULB; //NETTO BZ
               NET = RESULB;
               NET = NET + RESULW;
               #1GQNB = NET; //NETTO TOTAAL
             Endif; //WKLBZ=B
              // Heropvullen taks en rwp - Wkl betaling  *
             If HTAKS <> 0;
               #1HCNB = HTAKS;
               #1T4NB = HTAKSW;
               #1T5NB = HTAKSB;
             ELSE;
               #1HCNB = 0;
               #1T4NB = 0;
               #1T5NB = 0;
             Endif;
             If RWP <> 0;
               #1JRNB = RWP;
             ELSE;
               #1JRNB = 0;
             Endif;
              // CASE: WRK.Switch bedrag Wklh is =0 : 1ste maal in program
             If WUPFCD = '0'; //*IF
               WUPFCD = '3';                        // //Switch bedrag W
             Endif; //*FI
              // CASE: WRK.Switch bedrag BZ is =0:1ste maal in programma
             If WUPGCD = '0'; //*IF
               WUPGCD = '3';                        // //Switch bedrag B
             Endif; //*FI
             WUMLNB = #1HPNB; //wrk bedrag Wklh
             WUMMNB = #1GYNB; //wrk bedrag BZ
             WUBMND = #1BENR; //Wrk inh% BP
           ELSE;
              // CASE: *OTHERWISE
              // CASE: WRK.Switch70 is Eq 1
             If WUOACD = '1'; //*IF
                // Opvullen netto bij regelR - Wkl betaling  *
                // RESULT = WKLH BEDRAG+BZ BEDRAG+BEDRAG VORST-TAKS OF RWP (TA/BR)
               RESULT = 0;
               RESULT = HWKL + HBEDBZ;
               RESULT = RESULT + HBEDVO; //+ VORSTBEDRAG
               RESULT = RESULT - HTAKS; //- TAKS
               RESULT = RESULT - RWP; //- RWP
               #1GQNB = RESULT; //NETTOZONE OPVUL
               #1T6NB = *ZERO; //Netto wkl
               #1T7NB = *ZERO; //Netto BZ
               #1HCNB = *ZERO; //Taks
               #1T4NB = *ZERO; //Taks wkl
               #1T5NB = *ZERO; //Taks BZ
               #1JRNB = *ZERO; //RWP
                // Send message 'Er is ergens een fout'
               ZAMSID = 'USR3817';
               EXSR ZASNMS;
               *In99 = *On;

             ELSE;
                // CASE: *OTHERWISE
               #1GQNB = *ZERO; //Netto
               #1T6NB = *ZERO; //Netto wkl
               #1T7NB = *ZERO; //Netto BZ
               #1HCNB = *ZERO; //Taks
               #1T4NB = *ZERO; //Taks wkl
               #1T5NB = *ZERO; //Taks BZ
               #1JRNB = *ZERO; //RWP
                // Send message 'Er is ergens een fout'
               ZAMSID = 'USR3817';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Sw73:Kan geen taks/rwp afhouden
            // CASE: WRK.Switch73 is eq 1
           If WUODCD = '1'; //*IF
              // Send message 'Geen taks/rwp af te houde'
             ZAMSID = 'USR0429';
             ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;
           Endif; //*FI
            // Sw74:Te veel afhoudingen; //sommige werden op 0 gezet
            // CASE: WRK.Switch74 is eq 1
           If WUOECD = '1'; //*IF
              // Send message 'Te veel afh.en:sommige we'
             ZAMSID = 'USR0426';
             ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;
           Endif; //*FI
            // Sw75:X2/BC werden op nul gezet of aantal werd aangepast
            // CASE: WRK.Switch75 is eq 1
           If WUOFCD = '1'; //*IF
              // Send message 'X2/BC onmogelijk af te ho'
             ZAMSID = 'USR0425';
             ZAMSTP = '*INFO';                        //Message type
             EXSR ZASNMS;
           Endif; //*FI
            // CASE: WRK.Switch blanko opdracht is N
           If WUKTCJ = 'N'; //*IF
              // Controle alle zones=0 (niet testen voor 91/B./C./D./E./F.)
              // CASE:
              //  - c1ANDc9
              //   !- c1    : DTL.Type wklh. kode is <> 91
              //   !- c9    : DTL.Type wklh. kode is <> G.
              //   '-
             Y0CX01 = '0';           // //1
             If #1A1CD <> '91'; //*IF
               If #1A1CD <> 'G.'; //*IF
                 Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
                // Contr alle zones 0 - Wkl betaling  *
               WUW204 = '0';                        // //SWITCH204   ES0
               If #1GLNB = *ZERO AND #1GMNB = *ZERO AND #1GYNB = *ZERO AND #1G7NB = *ZERO
                 AND #1JONB = *ZERO AND #1GPNB = *ZERO AND #1JNNB = *ZERO
                 AND #1GNNB = *ZERO AND #1JLNB = *ZERO AND #1GONB = *ZERO AND #1JMNB = *ZERO
                 AND #1GVNB = *ZERO AND #1GINB = *ZERO AND #1GJNB = *ZERO AND #1GKNB = *ZERO
                 AND #1GRNB = *ZERO AND #1GSNB = *ZERO AND #1GTNB = *ZERO AND #1GUNB = *ZERO
                 AND #1JJNB = *ZERO AND #1JKNB = *ZERO AND #1GGNB = *ZERO AND #1GHNB = *ZERO
                 AND #1HPNB = *ZERO AND #1GXNB = *ZERO
                 AND #1DVCD = *BLANK AND #1DWCD = *BLANK AND #1DXCD = *BLANK AND #1DYCD = *BLANK
                 AND #1EDCD = *BLANK AND #1EECD = *BLANK AND #1LPNB = *ZERO AND #1BDST = 'Y';
                   WUW204 = '1';
               Endif; //END
                // Switch204=1 : alle zones zijn niet ingevuld --> error : blanko op
                // CASE: WRK.Switch204 is 1
               If WUW204 = '1'; //*IF
                  // Send message 'Geen enkele zone is ing'
                 ZAMSID = 'USR1833';
                 EXSR ZASNMS;
                 *In99 = *On;
                 WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Controle met Ov.betwklh2y - Wkl betaling  *
            //=VGL MET OV.BET V 1 IM + ZELFDE RM (KAN WEL BIJ <> TYPES C10 OF <> WB'S)
            //KAN OOK BIJ INPUT <> AFDELINGEN VOOR <> MND ACHTERSTAL
           CTRBET = 0;
           WUW206 = '0';           // //1
           WUFRCD = '0';           // //1            SWITCH106
           CATC10 = *blanks;          // //CATC10            1            TYPE C10 1POS
           CATC1X = *blanks;         // //CATC1X            2            TYPE C10 2POS
              // BEPALEN TYPE C10
           BARC10 = #1DOCD;           // //7

           MDC10N(#1BACD:#1AACD:#1BCCD:#1A1CD:BARC10:CATC10:CATC1X);
           WUWBCD = '0';                        // //SW..:BET BESTAA
           REDC12 = '0000';           // //4
           DOK = #1GWNB;
           GWBNR8 = #1A2CD;           // //2 0
           TYPET = *blanks;         // //TYPET             2
            //--- LVBZRELH
           SETLL (#1AACD:#1AFNB:BYEENB:#1GWNB:DOK:REDC12:CATC10:GWBNR8:TYPET) @BZREFY;
           READE (#1AACD:#1AFNB:BYEENB:#1GWNB:DOK:REDC12:CATC10:GWBNR8) @BZREFY;
           If Not %Eof(LVBZRELH);
              //-- N50=GEVONDEN ONGEACHT HET TYPE
             If #1A1CD in %List('01':'02':'03':'04':'06':'11':'31':'18':'24':'16':'17':
                                '05':'57':'58');
               CHAIN (#1AACD:#1AFNB:BYEENB:#1GWNB:DOK:REDC12:CATC10:GWBNR8:#1A1CD) @BZREFY ;
               If %found();   // N51N50
                 If CATC10 = '9';
                   CHAIN (#1AACD:#1AFNB:BYEENB:#1GWNB:DOK:REDC12:CATC10:GWBNR8:WUCC18) @BZREFY ;
                   If %Found();
                     WUWBCD='J';
                   EndIf;
                 Else;
                   WUWBCD='J';
                 EndIf;
                 If #1A1CD in %List('05':'57':'58');
                   If Not (BZCDCD in %List('01':'03':'05':'57':'58':'02':'04':'06'));
                     WUWBCD = 'J';
                   Else;
                     CTRBET = BZEONB;
                     WUWBCD = '0';
                   EndIf;
                 EndIf;
                 If #1A1CD = '24' and #1BCCD = 'W';
                   If BZCDCD = '24';
                     If BZRRCD = 'W';
                       WUWBCD = 'J';
                     Else;
                       CTRBET = BZEONB;
                       WUWBCD = '0';
                     EndIf;
                   Else;
                     WUWBCD = 'J';
                   EndIf;
                 EndIf;
                 If #1A1CD = '24' and #1BCCD = 'F';
                   If BZCDCD = '24';
                     If BZRRCD = 'F';
                       WUWBCD = 'J';
                     Else;
                       CTRBET = BZEONB;
                       WUWBCD = '0';
                     EndIf;
                   Else;
                     WUWBCD = 'J';
                   EndIf;
                 EndIf;
               Else;  // 51N50
                 If #1A1CD in %List('02':'04':'06');
                   If Not (BZCDCD in %List('01':'21':'22':'51':'03':'16':'17':'31'));
                     WUWBCD = 'J';
                   Else;
                     CTRBET = BZEONB;
                   EndIf;
                 EndIf;
                 If #1A1CD in %List('05':'57':'58');
                   If Not (BZCDCD in %List('01':'03':'05':'57':'58':'02':'04':'06'));
                     WUWBCD = 'J';
                   Else;
                     CTRBET = BZEONB;
                     WUWBCD = '0';
                   EndIf;
                 EndIf;
                 If #1A1CD in %List('01':'03':'11':'16':'17');
                   If Not (BZCDCD in %List('02':'04':'06':'21':'22':'51':'01':'03':'11':'16':'17'));
                     WUWBCD = 'J';
                   Else;
                     CTRBET = BZEONB;
                   EndIf;
                 EndIf;
                 If #1A1CD in %List('21':'22':'51');
                   If Not (BZCDCD in %List('01':'03':'11':'16':'17'));
                     WUWBCD = 'J';
                   Else;
                     CTRBET = BZEONB;
                   EndIf;
                 EndIf;
                 If #1A1CD = '18';
                   If WUCC18 = '18';
                     If BZCDCD <> '04';
                       WUWBCD = 'J';
                     Else;
                       CTRBET = BZEONB;
                     EndIf;
                   Elseif WUCC18='04';
                     If BZCDCD <> '18';
                       WUWBCD = 'J';
                     Else;
                       CTRBET = BZEONB;
                     EndIf;
                   EndIf;
                 EndIf;
               Endif;
             ELSE; //NT 01,02,18
               WUWBCD = 'J';                        // //GEVONDEN
             Endif; //END 01,02,18
           Endif; //END ZELFDE G


            //---
           USRP6 = BIBLCD;
           If BIBLCD = 'RVDS    ' OR WUDTCC = 'BYPAS';
             WUWBCD = '0';                        // //BET.BESTAAT
           ENDIF;
            //---- EINDE BIJPASSING TOEGESTAAN ROSANNE OF BYPAS..
           DM = BYEDNB;               // //4 0          DG,MND UITV.DTM BANK
           JREC = BYEDNB;             // //2 0
           DREC2 = DM;            // //2 0
           MREC2 = DM;            // //2 0
           JREC2 = 2000 + JREC;
           JMREC2 = JREC2;           // //6 0
           JMREC2 = MREC2;
           JMDREC = JMREC2;           // //8 0
           JMDREC = DREC2;

           CHAIN (#1AACD:#1AFNB:BYEENB:JMDREC:#1GWNB:DOK:REDC12) LVBZREL1 ;
           if %found();
             WUW206 = '1';
           endif;
            // BEDRAGEN >= 9999,99 KUNNEN NIET OP TAPE.
           SOMC2 = 0;
           If BIBLCD = 'RVDS    ' OR WUDTCC = 'BYPAS';
             SETLL (#1AACD:#1AFNB:BYEENB:#1GWNB:DOK:REDC12:CATC10:GWBNR8:TYPET) @BZREFY;
             READE (#1AACD:#1AFNB:BYEENB:#1GWNB:DOK:REDC12:CATC10:GWBNR8) @BZREFY;
             Dow Not %Eof();
               SOMC2 += BZEVNB; //BRUTO WKL
               READE (#1AACD:#1AFNB:BYEENB:#1GWNB:DOK:REDC12:CATC10:GWBNR8) @BZREFY;
             EndDo;
             SOMC2 = SOMC2 + HWKL;
             If SOMC2 >= 9999.99;
               WUFRCD = '1';                        // //SWITCH106
             ENDIF;
           ENDIF; //RVDS/BYPAS

            // Switch206=1:dubbele betaling met ov.bet.wklh
            // CASE: WRK.switch206 is 1
           If WUW206 = '1'; //*IF
              // CASE: DTL.Type wklh. kode is <> 24
             If #1A1CD <> '24'; //*IF
                // Send message 'Dubbele betaling :zelfde'
               ZAMSID = 'USR1963';
               EXSR ZASNMS;
               *In99 = *On;
             ELSE;
                // CASE: *OTHERWISE
                // Send message 'Reeds een betaling voor d'
               ZAMSID = 'USR3301';
               ZAMSTP = '*INFO';                        //Message type
               EXSR ZASNMS;
             Endif; //*FI
           Endif; //*FI
            // Switch106=1:bedrag > 100.000 fr
            // CASE: WRK.Switch106 is 1
           If WUFRCD = '1'; //*IF
              // Send message 'Alle bedragen >= 100.000'
             ZAMSID = 'USR3635';
             EXSR ZASNMS;
             *In99 = *On;
           Endif; //*FI
            // Optellen kbf dagen - Wkl betaling  *
           XXKBF = XXKBF + #1GXNB;
           XXNTV = XXNTV + #1GXNB;
            // Switch95=J-->bijpassing van een betaling : controle enkel dagen i
            // CASE: WRK.Switch95 is J
           If WUWBCD = 'J'; //*IF
              // CASE: DTL.Subberoep kode is niet P
             If #1BCCD <> 'P'; //*IF
                // CASE: DTL.Bedrag wkl is niet 0
               If #1HPNB <> *ZERO; //*IF
                  // Send message 'Bijpassing betaling->fout'
                 ZAMSID = 'USR0629';
                 EXSR ZASNMS;
                 *In99 = *On;
                 WUPSCD = '1';                        // //Switch berekeni
               ELSE;
                  // CASE: *OTHERWISE
                  // CASE: DTL.Geen bedrag wklh is N
                 If #1BDST = 'N'; //*IF
                    // CASE: DTL.BZ kode is B
                   If #1A4CD = 'B'; //*IF
                      // Send message 'Bijpassing betaling->fout'
                     ZAMSID = 'USR0629';
                     EXSR ZASNMS;
                     *In99 = *On;
                     WUPSCD = '1';                        // //Switch berekeni
                   ELSE;
                      // CASE: *OTHERWISE
                      // CASE: DTL.BZ kode is = T
                     If #1A4CD = 'T'; //*IF
                        // Send message 'Bijpassing betaling->fout'
                       ZAMSID = 'USR0629';
                       EXSR ZASNMS;
                       *In99 = *On;
                       WUPSCD = '1';                        // //Switch berekeni
                     ELSE;
                        // CASE: *OTHERWISE
                        // CASE: DTL.BZ kode is S
                       If #1A4CD = 'S'; //*IF
                          // Send message 'Bijpassing betaling->fout'
                         ZAMSID = 'USR0629';
                         EXSR ZASNMS;
                         *In99 = *On;
                         WUPSCD = '1';                        // //Switch berekeni
                       Endif; //*FI
                     Endif; //*FI
                   Endif; //*FI
                 ELSE;
                    // CASE: *OTHERWISE
                    // BZ bedrag
                    // CASE: DTL.Bedrag BZ is niet 0
                   If #1GYNB <> *ZERO; //*IF
                      // BZ=B
                      // CASE: DTL.BZ kode is B
                     If #1A4CD = 'B'; //*IF
                        //  Send message 'Bijpassing betaling->fout'
                       ZAMSID = 'USR0629';
                       EXSR ZASNMS;
                       *In99 = *On;
                       WUPSCD = '1';                        // //Switch berekeni
                     Endif; //*FI
                      // BZ=T
                      // CASE: DTL.BZ kode is = T
                     If #1A4CD = 'T'; //*IF
                        // Send message 'Bijpassing betaling->fout'
                       ZAMSID = 'USR0629';
                       EXSR ZASNMS;
                       *In99 = *On;
                       WUPSCD = '1';                        // //Switch berekeni
                     Endif; //*FI
                      // BZ=S
                      // CASE: DTL.BZ kode is S
                     If #1A4CD = 'S'; //*IF
                        // Send message 'Bijpassing betaling->fout'
                       ZAMSID = 'USR0629';
                       EXSR ZASNMS;
                       *In99 = *On;
                       WUPSCD = '1';                        // //Switch berekeni
                     Endif; //*FI
                      // Type wklh=13
                      // CASE: DTL.Type wklh. kode is 13 : brugp textiel
                     If #1A1CD = '13'; //*IF
                        // Send message 'Bijpassing betaling->fout'
                       ZAMSID = 'USR0629';
                       EXSR ZASNMS;
                       *In99 = *On;
                       WUPSCD = '1';                        // //Switch berekeni
                     Endif; //*FI
                      // Type wklh=14
                      // CASE: DTL.Type wklh. kode is 14 : brugp textiel deelti
                     If #1A1CD = '14'; //*IF
                        // Send message 'Bijpassing betaling->fout'
                       ZAMSID = 'USR0629';
                       EXSR ZASNMS;
                       *In99 = *On;
                       WUPSCD = '1';                        // //Switch berekeni
                     Endif; //*FI
                      // Type wklh=15
                      // CASE: DTL.Type wklh. kode is 15 : grensarbeiders
                     If #1A1CD = '15'; //*IF
                        // Send message 'Bijpassing betaling->fout'
                       ZAMSID = 'USR0629';
                       EXSR ZASNMS;
                       *In99 = *On;
                       WUPSCD = '1';                        // //Switch berekeni
                     Endif; //*FI
                   ELSE;
                      // CASE: *OTHERWISE
                      // CASE: DTL.Geen dagen/bedrag BZ is N
                     If #1BCST = 'N'; //*IF
                        // BZ=B
                        // CASE: DTL.BZ kode is B
                       If #1A4CD = 'B'; //*IF
                          // Send message 'Bijpassing betaling->fout'
                         ZAMSID = 'USR0629';
                         EXSR ZASNMS;
                         *In99 = *On;
                         WUPSCD = '1';                        // //Switch berekeni
                       Endif; //*FI
                        // BZ=T
                        // CASE: DTL.BZ kode is = T
                       If #1A4CD = 'T'; //*IF
                          // Send message 'Bijpassing betaling->fout'
                         ZAMSID = 'USR0629';
                         EXSR ZASNMS;
                         *In99 = *On;
                         WUPSCD = '1';                        // //Switch berekeni
                       Endif; //*FI
                        // BZ=S
                        // CASE: DTL.BZ kode is S
                       If #1A4CD = 'S'; //*IF
                          // Send message 'Bijpassing betaling->fout'
                         ZAMSID = 'USR0629';
                         EXSR ZASNMS;
                         *In99 = *On;
                         WUPSCD = '1';                        // //Switch berekeni
                       Endif; //*FI
                        // Type wklh=13
                        // CASE: DTL.Type wklh. kode is 13 : brugp textiel
                       If #1A1CD = '13'; //*IF
                          // Send message 'Bijpassing betaling->fout'
                         ZAMSID = 'USR0629';
                         EXSR ZASNMS;
                         *In99 = *On;
                         WUPSCD = '1';                        // //Switch berekeni
                       Endif; //*FI
                        // Type wklh=14
                        // CASE: DTL.Type wklh. kode is 14 : brugp textiel deelti
                       If #1A1CD = '14'; //*IF
                          // Send message 'Bijpassing betaling->fout'
                         ZAMSID = 'USR0629';
                         EXSR ZASNMS;
                         *In99 = *On;
                         WUPSCD = '1';                        // //Switch berekeni
                       Endif; //*FI
                        // Type wklh=15
                        // CASE: DTL.Type wklh. kode is 15 : grensarbeiders
                       If #1A1CD = '15'; //*IF
                          // Send message 'Bijpassing betaling->fout'
                         ZAMSID = 'USR0629';
                         EXSR ZASNMS;
                         *In99 = *On;
                         WUPSCD = '1';                        // //Switch berekeni
                       Endif; //*FI
                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
                  // Uren GW > 0
                  // CASE: DTL.Uren ged.wkl. is > 0
                 If #1GINB > *ZERO; //*IF
                    // Send message 'Bijpassing betaling->fout'
                   ZAMSID = 'USR0629';
                   EXSR ZASNMS;
                   *In99 = *On;
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
                  // Afh1 niet blank
                  // CASE: DTL.Afh1 kode is nt blank
                 If #1DVCD <> *BLANK; //*IF
                    // Send message 'Bijpassing betaling->fout'
                   ZAMSID = 'USR0629';
                   EXSR ZASNMS;
                   *In99 = *On;
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
                  // Afh2 niet blank
                  // CASE: DTL.Afh2 kode is nt blank
                 If #1DWCD <> *BLANK; //*IF
                    // Send message 'Bijpassing betaling->fout'
                   ZAMSID = 'USR0629';
                   EXSR ZASNMS;
                   *In99 = *On;
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
                  // Afh3 niet blank
                  // CASE: DTL.Afh3 kode is nt blank
                 If #1DXCD <> *BLANK; //*IF
                    // Send message 'Bijpassing betaling->fout'
                   ZAMSID = 'USR0629';
                   EXSR ZASNMS;
                   *In99 = *On;
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
                  // Afh4 niet blank
                  // CASE: DTL.Afh4 kode is nt blank
                 If #1DYCD <> *BLANK; //*IF
                    // Send message 'Bijpassing betaling->fout'
                   ZAMSID = 'USR0629';
                   EXSR ZASNMS;
                   *In99 = *On;
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
                  // Afh5 niet blank
                  // CASE: DTL.Afh5 kode is nt blank
                 If #1EDCD <> *BLANK; //*IF
                    // Send message 'Bijpassing betaling->fout'
                   ZAMSID = 'USR0629';
                   EXSR ZASNMS;
                   *In99 = *On;
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
                  // Afh6 niet blank
                  // CASE: DTL.Afh6 kode is nt blank
                 If #1EECD <> *BLANK; //*IF
                    // Send message 'Bijpassing betaling->fout'
                   ZAMSID = 'USR0629';
                   EXSR ZASNMS;
                   *In99 = *On;
                   WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Contr.neg.taks<totaal bed - Wkl betaling  *
           WUWU33 = '0';
           TOTPLU = HWKL; //WKL
           TOTPLU = TOTPLU + HBEDBZ; //BZ
           TOTPLU = TOTPLU + HTAKS; //TAKSWKLBZ

           POSTAK = 0;
           NEGTAK = 0;
           If #1DVCD = 'TB-' OR #1DVCD = 'TG-';
             NEGTAK = NEGTAK + #1GZNB;
           Endif;
           If #1DVCD = 'TB ' OR #1DVCD = 'TG ';
             POSTAK = POSTAK + #1GZNB;
           Endif;
           If #1DWCD = 'TB-' OR #1DWCD = 'TG-'; //AFH2
             NEGTAK = NEGTAK + #1G1NB;
           Endif;
           If #1DWCD = 'TB ' OR #1DWCD = 'TG ';
             POSTAK = POSTAK + #1G1NB;
           Endif;
           If #1DXCD = 'TB-' OR #1DXCD = 'TG-'; //AFH3
             NEGTAK = NEGTAK + #1G3NB;
           Endif;
           If #1DXCD = 'TB ' OR #1DXCD = 'TG ';
             POSTAK = POSTAK + #1G3NB;
           Endif;
           If #1DYCD = 'TB-' OR #1DYCD = 'TG-'; //AFH4
             NEGTAK = NEGTAK + #1G5NB;
           Endif;
           If #1DYCD = 'TB ' OR #1DYCD = 'TG ';
             POSTAK = POSTAK + #1G5NB;
           Endif;
           If #1EDCD = 'TB-' OR #1EDCD = 'TG-'; //AFH5
             NEGTAK = NEGTAK + #1HDNB;
           Endif;
           If #1EDCD = 'TB ' OR #1EDCD = 'TG ';
             POSTAK = POSTAK + #1HDNB;
           Endif;
           If #1EECD = 'TB-' OR #1EECD = 'TG-'; //AFH6
             NEGTAK = NEGTAK + #1HFNB;
           Endif;
           If #1EECD = 'TB ' OR #1EECD = 'TG ';
             POSTAK = POSTAK + #1HFNB;
           Endif;

           NEGPOS = TOTPLU - NEGTAK;
           If NEGPOS < 0; //NEG>POS
     EvalR   WUWU33 = '1';
           Endif;

           LPJRTA = 0;
           NEGJAR = 0;
           LPJRTA = HTAKS + #DCA24; //TAKS LOP.JR
           LPJRTA = LPJRTA + POSTAK; //+TB+TG
           NEGJAR = LPJRTA - NEGTAK; //-(TB-)-(TG-)
           If NEGJAR < 0;
     EvalR   WUWU33 = '2';
           Endif;
           LPJRTA = 0;
           NEGJAR = 0;
           LPJRTA = HTAKS + #1AENR; //TAKS LOP.JR
           LPJRTA = LPJRTA + POSTAK; //+TB+TG
           NEGJAR = LPJRTA - NEGTAK; //-(TB-)-(TG-)
           If NEGJAR < 0;
     EvalR   WUWU33 = '2';
           Endif;
           If BYEENB >= 202001;
             MDBEL02(#1AACD:#1AFNB:#1A1CD:#1A4CD:BDRGTR);
               LPJRTA = 0;
             NEGJAR = 0;
             LPJRTA = HTAKS + BDRGTR; //TAKS LOP.JR
             LPJRTA = LPJRTA + POSTAK; //+TB+TG
             NEGJAR = LPJRTA - NEGTAK; //-(TB-)-(TG-)
             If NEGJAR < 0;
     EvalR   WUWU33 = '2';
             Endif;
           ENDIF; //201901
            // CONTROLEREN OF TB-/TG- GEBRUIKT WORDEN BIJ HET JUISTE TYPE WKLH/CODE BZ
         TBTGOK = 'Y';
           MDTBTG(#1A1CD:#1A4CD:#1DVCD:#1DWCD:#1DXCD:#1DYCD:#1EDCD:#1EECD:TBTGOK);
             If TBTGOK = 'N';
         WUWU33 = '3';
           ENDIF;
            // Taks lopend jaar -(TB-) -(TG-) wordt negatief --> negatieve belas
            // CASE: WRK.Switch133 is 2
           If WUWU33 = '2'; //*IF
              // Send message 'Negatieve belastingen'
         ZAMSID = 'USR1614';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Taks lopend jaar -(TB-) -(TG-) wordt negatief --> negatieve belas
            // CASE: WRK.Switch133 is 3
           If WUWU33 = '3'; //*IF
              // Send message 'Negatieve belastingen'
         ZAMSID = 'USR1614';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Type 25: ndl grensarb. : bedrag wklh is verplicht en <= 2000fr
            // CASE: DTL.Type wklh. kode is 25
           If #1A1CD = '25'; //*IF
              // CASE: DTL.Bedrag wkl is = 0
             If #1HPNB = *ZERO; //*IF
                // Send message 'Type 25:bedrag wklh=verpl'
         ZAMSID = 'USR2300';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Bedrag wkl is > 2000
               If #1HPNB > 2000; //*IF
                  // Send message 'Type 25:Bedrag <=2000fr'
         ZAMSID = 'USR2301';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Type 24F: fr grensarb. : bedrag wklh is verplicht en <= 2000fr
            // CASE:
            //  - c1ANDc2
            //   !- c1    : DTL.Type wklh. kode is 24 : wisselkoerstoeslag
            //   !- c2    : DTL.Subberoep kode is F
            //   '-
         Y0CX01 = '0';           // //1
           If #1A1CD = '24'; //*IF
             If #1BCCD = 'F'; //*IF
         Y0CX01 = '1';
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // CASE: DTL.Bedrag wkl is = 0
             If #1HPNB = *ZERO; //*IF
                // Send message 'Type24F:bedrag wklh=verpl'
         ZAMSID = 'USR3303';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Bedrag wkl is > 2000
               If #1HPNB > 2000; //*IF
                  // Send message 'Type24F:bedrag<=2000fr'
         ZAMSID = 'USR3302';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Type 24W: Fr grensarb. : bedrag wklh is verplicht en <= 7625fr vn
            // CASE:
            //  - c1ANDc2
            //   !- c1    : DTL.Type wklh. kode is 24 : wisselkoerstoeslag
            //   !- c2    : DTL.Subberoep kode is W
            //   '-
         Y0CX01 = '0';           // //1
           If #1A1CD = '24'; //*IF
             If #1BCCD = 'W'; //*IF
         Y0CX01 = '1';
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // CASE: DTL.Bedrag wkl is = 0
             If #1HPNB = *ZERO; //*IF
                // Setup message data for message
               ZA0179 = #1HPNB; //Bedrag wkl
                // Send message 'Type24W:bedrag wklh=verpl'
         ZAMSID = 'USR3351';
               EXSR ZASNMS;
               *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
             ELSE;
                // CASE: *OTHERWISE
                // CASE: DTL.Bedrag wkl is > 7625
               If #1HPNB > 7625; //*IF
                  // CASE: DTL.Datum achterstal is < 199901
                 If #1GWNB < 199901; //*IF
                    // Setup message data for message
                   ZA0180 = #1HPNB; //Bedrag wkl
                    // Send message 'Bij type24:bedr wkl<=9999'
         ZAMSID = 'USR0875';
                   EXSR ZASNMS;
                   *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
                 ELSE;
                    // CASE: *OTHERWISE
                    // Setup message data for message
                   ZA0181 = #1HPNB; //Bedrag wkl
                    // Send message 'Type24W:bedrag<=7625'
         ZAMSID = 'USR3352';
                   EXSR ZASNMS;
                   *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Type 00 : bedrag wklh/BZ >0 : error
            // CASE: DTL.Type wklh. kode is 00 : niet toelaatbaar
           If #1A1CD = '00'; //*IF
              // CASE:
              //  - c1ORc2
              //   !- c1    : DTL.Bedrag wkl is niet 0
              //   !- c2    : DTL.Bedrag BZ is niet 0
              //   '-
             If #1HPNB <> *ZERO OR #1GYNB <> *ZERO; //*IF
                // Send message 'Type 00 en bedragen > 0'
         ZAMSID = 'USR2533';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Code BZ FA, PA kan pas vanaf 01/1997
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.BZ kode is FA
            //   !- c2    : DTL.BZ kode is PA
            //   '-
           If #1A4CD = 'FA' OR #1A4CD = 'PA'; //*IF
              // CASE:
              //  - c1ANDc2
              //   !- c1    : DTL.Bedrag BZ is > 0
              //   !- c2    : DTL.Datum achterstal is < 199701
              //   '-
         Y0CX01 = '0';           // //1
             If #1GYNB > *ZERO; //*IF
               If #1GWNB < 199701; //*IF
         Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
                // Send message 'Code BZ FA, PA kan pas'
         ZAMSID = 'USR2553';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Code BZ FS,PS,CS,ES kan pas vanaf 01/2014 tem 06/2015
            // CASE:
            //  - c1ORc2ORc3ORc4
            //   !- c1    : DTL.BZ kode is FS
            //   !- c2    : DTL.BZ kode is PS
            //   !- c3    : DTL.BZ kode is ES
            //   !- c4    : DTL.BZ kode is CS
            //   '-
           If #1A4CD = 'FS' OR #1A4CD = 'PS' OR #1A4CD = 'ES' OR #1A4CD = 'CS'; //*IF
              // CASE:
              //  - c1ANDc2
              //   !- c1    : DTL.Bedrag BZ is > 0
              //   !- c2    : DTL.Datum achterstal is < 201401
              //   '-
         Y0CX01 = '0';           // //1
             If #1GYNB > *ZERO; //*IF
               If #1GWNB < 201401; //*IF
         Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
                // Send message 'Code BZ FS, PS kan pas'
         ZAMSID = 'USR6640';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
              // CASE:
              //  - c1ANDc2
              //   !- c1    : DTL.Bedrag BZ is > 0
              //   !- c2    : DTL.Datum achterstal is > 201506
              //   '-
         Y0CX01 = '0';           // //1
             If #1GYNB > *ZERO; //*IF
               If #1GWNB > 201506; //*IF
         Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
                // Send message 'Metaal : Bz code niet ver'
         ZAMSID = 'USR6641';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // BZ metaal en geen geldige kaart voor refertemaand--> error
            // CASE: DTL.Bedrag BZ is > 0
           If #1GYNB > *ZERO; //*IF
              // CASE:
              //  - c1ORc2ORc3ORc4ORc5ORc6ORc7ORc8ORc9ORc10ORc11ORc12ORc13ORc14OR
              //  - c15ORc16ORc17ORc18ORc19ORc20ORc21ORc22ORc23ORc24ORc25ORc26ORc
              //  - 27ORc28ORc29ORc30ORc31ORc32
              //   !- c1    : DTL.BZ kode is G
              //   !- c2    : DTL.BZ kode is VZ
              //   !- c3    : DTL.BZ kode is DZ
              //   !- c4    : DTL.BZ kode is C
              //   !- c5    : DTL.BZ kode is A
              //   !- c6    : DTL.BZ kode is NA
              //   !- c7    : DTL.BZ kode is V1
              //   !- c8    : DTL.BZ kode is V2
              //   !- c9    : DTL.BZ kode is V3
              //   !- c10   : DTL.BZ kode is V4
              //   !- c11   : DTL.BZ kode is Z
              //   !- c12   : DTL.BZ kode is E
              //   !- c13   : DTL.BZ kode is VA
              //   !- c14   : DTL.BZ kode is DA
              //   !- c15   : DTL.BZ kode is Z1
              //   !- c16   : DTL.BZ kode is FA
              //   !- c17   : DTL.BZ kode is PA
              //   !- c18   : DTL.BZ kode is M
              //   !- c19   : DTL.BZ kode is M1
              //   !- c20   : DTL.BZ kode is FZ
              //   !- c21   : DTL.BZ kode is PZ
              //   !- c22   : DTL.BZ kode is VJ
              //   !- c23   : DTL.BZ kode is 35
              //   !- c24   : DTL.BZ kode is 85
              //   !- c25   : DTL.BZ kode is 62
              //   !- c26   : DTL.BZ kode is 75
              //   !- c27   : DTL.BZ kode is 29
              //   !- c28   : DTL.BZ kode is 79
              //   !- c29   : DTL.BZ kode is CS
              //   !- c30   : DTL.BZ kode is ES
              //   !- c31   : DTL.BZ kode is FS
              //   !- c32   : DTL.BZ kode is PS
              //   '-
             If #1A4CD = 'G' OR #1A4CD = 'VZ' OR #1A4CD = 'DZ' OR #1A4CD = 'C' OR #1A4CD = 'A' OR #1
                // BZ=15 --> type kaart=15
                // CASE: DTL.BZ kode is 15
               If #1A4CD = '15'; //*IF
         WUIWCO = '15';                        // //wrk metaal type
               Endif; //*FI
                // BZ=G  --> type kaart=01
                // CASE: DTL.BZ kode is G
               If #1A4CD = 'G'; //*IF
         WUIWCO = '01';                        // //wrk metaal type
               Endif; //*FI
                // BZ=VJ --> type kaart=VJ
                // CASE: DTL.BZ kode is VJ
               If #1A4CD = 'VJ'; //*IF
         WUIWCO = 'VJ';                        // //wrk metaal type
               Endif; //*FI
                // BZ=35 --> type kaart=35
                // CASE: DTL.BZ kode is 35
               If #1A4CD = '35'; //*IF
         WUIWCO = '35';                        // //wrk metaal type
               Endif; //*FI
                // BZ=85 --> type kaart=85
                // CASE: DTL.BZ kode is 85
               If #1A4CD = '85'; //*IF
         WUIWCO = '85';                        // //wrk metaal type
               Endif; //*FI
                // BZ=VZ --> type kaart=03
                // CASE: DTL.BZ kode is VZ
               If #1A4CD = 'VZ'; //*IF
         WUIWCO = '03';                        // //wrk metaal type
               Endif; //*FI
                // BZ=DZ --> type kaart=33
                // CASE: DTL.BZ kode is DZ
               If #1A4CD = 'DZ'; //*IF
         WUIWCO = '33';                        // //wrk metaal type
               Endif; //*FI
                // BZ=C  --> type kaart=11
                // CASE: DTL.BZ kode is C
               If #1A4CD = 'C'; //*IF
         WUIWCO = '11';                        // //wrk metaal type
               Endif; //*FI
                // BZ=A  --> type kaart=21
                // CASE: DTL.BZ kode is A
               If #1A4CD = 'A'; //*IF
         WUIWCO = '21';                        // //wrk metaal type
               Endif; //*FI
                // BZ=NA --> type kaart=22
                // CASE: DTL.BZ kode is NA
               If #1A4CD = 'NA'; //*IF
         WUIWCO = '22';                        // //wrk metaal type
               Endif; //*FI
                // BZ=V1 --> type kaart=23
                // CASE: DTL.BZ kode is V1
               If #1A4CD = 'V1'; //*IF
         WUIWCO = '23';                        // //wrk metaal type
               Endif; //*FI
                // BZ=V2 --> type kaart=23
                // CASE: DTL.BZ kode is V2
               If #1A4CD = 'V2'; //*IF
         WUIWCO = '23';                        // //wrk metaal type
               Endif; //*FI
                // BZ=V3 --> type kaart=73
                // CASE: DTL.BZ kode is V3
               If #1A4CD = 'V3'; //*IF
         WUIWCO = '73';                        // //wrk metaal type
               Endif; //*FI
                // BZ=V4 --> type kaart=73
                // CASE: DTL.BZ kode is V4
               If #1A4CD = 'V4'; //*IF
         WUIWCO = '73';                        // //wrk metaal type
               Endif; //*FI
                // BZ=Z  --> type kaart=32
                // CASE: DTL.BZ kode is Z
               If #1A4CD = 'Z'; //*IF
         WUIWCO = '32';                        // //wrk metaal type
               Endif; //*FI
                // BZ=E  --> type kaart=61
                // CASE: DTL.BZ kode is E
               If #1A4CD = 'E'; //*IF
         WUIWCO = '61';                        // //wrk metaal type
               Endif; //*FI
                // BZ=VA --> type kaart=71
                // CASE: DTL.BZ kode is VA
               If #1A4CD = 'VA'; //*IF
         WUIWCO = '71';                        // //wrk metaal type
               Endif; //*FI
                // BZ=DA --> type kaart=72
                // CASE: DTL.BZ kode is DA
               If #1A4CD = 'DA'; //*IF
         WUIWCO = '72';                        // //wrk metaal type
               Endif; //*FI
                // BZ=Z1 --> type kaart=82
                // CASE: DTL.BZ kode is Z1
               If #1A4CD = 'Z1'; //*IF
         WUIWCO = '82';                        // //wrk metaal type
               Endif; //*FI
                // BZ=FA --> type kaart=20
                // CASE: DTL.BZ kode is FA
               If #1A4CD = 'FA'; //*IF
         WUIWCO = '20';                        // //wrk metaal type
               Endif; //*FI
                // BZ=PA --> type kaart=70
                // CASE: DTL.BZ kode is PA
               If #1A4CD = 'PA'; //*IF
         WUIWCO = '70';                        // //wrk metaal type
               Endif; //*FI
                // BZ=M  --> type kaart=34
                // CASE: DTL.BZ kode is M
               If #1A4CD = 'M'; //*IF
         WUIWCO = '34';                        // //wrk metaal type
               Endif; //*FI
                // BZ=M1 --> type kaart=84
                // CASE: DTL.BZ kode is M1
               If #1A4CD = 'M1'; //*IF
         WUIWCO = '84';                        // //wrk metaal type
               Endif; //*FI
                // BZ=35 --> type kaart=35
                // CASE: DTL.BZ kode is 35
               If #1A4CD = '35'; //*IF
         WUIWCO = '35';                        // //wrk metaal type
               Endif; //*FI
                // BZ=85 --> type kaart=85
                // CASE: DTL.BZ kode is 85
               If #1A4CD = '85'; //*IF
         WUIWCO = '85';                        // //wrk metaal type
               Endif; //*FI
                // BZ=FZ --> type kaart=04
                // CASE: DTL.BZ kode is FZ
               If #1A4CD = 'FZ'; //*IF
         WUIWCO = '04';                        // //wrk metaal type
               Endif; //*FI
                // BZ=PZ --> type kaart=44
                // CASE: DTL.BZ kode is PZ
               If #1A4CD = 'PZ'; //*IF
         WUIWCO = '44';                        // //wrk metaal type
               Endif; //*FI
                // BZ=62 --> type kaart=62
                // CASE: DTL.BZ kode is 62
               If #1A4CD = '62'; //*IF
         WUIWCO = '62';                        // //wrk metaal type
               Endif; //*FI
                // BZ=75 --> type kaart=75
                // CASE: DTL.BZ kode is 75
               If #1A4CD = '75'; //*IF
         WUIWCO = '75';                        // //wrk metaal type
               Endif; //*FI
                // BZ=29 --> type kaart=29
                // CASE: DTL.BZ kode is 29
               If #1A4CD = '29'; //*IF
         WUIWCO = '29';                        // //wrk metaal type
               Endif; //*FI
                // BZ=79 --> type kaart=79
                // CASE: DTL.BZ kode is 79
               If #1A4CD = '79'; //*IF
         WUIWCO = '79';                        // //wrk metaal type
               Endif; //*FI
                // BZ=FS --> type kaart=FS
                // CASE: DTL.BZ kode is FS
               If #1A4CD = 'FS'; //*IF
         WUIWCO = 'FS';                        // //wrk metaal type
               Endif; //*FI
                // BZ=PS --> type kaart=PS
                // CASE: DTL.BZ kode is PS
               If #1A4CD = 'PS'; //*IF
         WUIWCO = 'PS';                        // //wrk metaal type
               Endif; //*FI
                // BZ=CS --> type kaart=CS
                // CASE: DTL.BZ kode is CS
               If #1A4CD = 'CS'; //*IF
         WUIWCO = 'CS';                        // //wrk metaal type
               Endif; //*FI
                // BZ=ES --> type kaart=ES
                // CASE: DTL.BZ kode is ES
               If #1A4CD = 'ES'; //*IF
         WUIWCO = 'ES';                        // //wrk metaal type
               Endif; //*FI
         WUIVCO = '0';                        // //Switch298
               WUA195 = 2099; //Wrk veld 4 posi
               WUYFNR = 2099; //wrk veld 4 posi
               WUYHNR = #1GWNB; //wrk veld 6 posi
               WUK750 = #1GWNB * 100; //Wrk veld 8 posi
               WUK750 = WUK750 + 31; //Wrk veld 8 posi
               WUY7NR = 209912; //Wrk veld 8 posi
               WUY6NR = *ZERO; //Wrk veld 8 posi
                // Attest reeds ingebracht? - Metaal attesten  *
               CLEAR   AIRC;
     AIAACD = #1AACD;
     AIAFNB = #1AFNB;
     AIEICO = WUIWCO;

               //Attest reeds in
               //KEY: Metaal att
               //Wrk veld 8 posi
               //Switch298
               //Wrk veld 4 posi
               //wrk veld 4 posi
               //wrk veld 6 posi
               //Wrk veld 8 posi
               //Wrk veld 8 posi

               LWDWXFR(W0RTN:AIRC:WQ0329:WQ0330:WQ0331:WQ0332:WQ0333:WQ0334:WQ0335);
                       If %Error();
                  // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LWDWXFR';
                  // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                 EXSR ZASNMS;
               Endif;
                // Error detected?
               If W0RTN <> *BLANK;
                 *In99 = *On;
               Endif;
                // CASE: WRK.Switch298 is 1
               If WUIVCO = '1'; //*IF
                  // Send message 'Geen geldige kaart voor r'
         ZAMSID = 'USR3337';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
                // CASE: WRK.Switch298 is 2
               If WUIVCO = '2'; //*IF
                  // Setup message data for message
                 ZA0182 = WUY6NR; //Wrk veld 8 posi
                 ZA0183 = WUYHNR; //wrk veld 6 posi
                  // Send message 'Kaart metaal afgelopen'
         ZAMSID = 'USR3395';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
                // CASE: WRK.Switch298 is 3
               If WUIVCO = '3'; //*IF
                  // Setup message data for message
                 ZA0184 = WUA195; //Wrk veld 4 posi
                 ZA0185 = WUYFNR; //wrk veld 4 posi
                  // Send message 'Geen geldige kaart metaal'
         ZAMSID = 'USR3338';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
                // BZ=C/E/CS/ES eerst 1ste maanden betalen voora je volgende maand b
                // CASE:
                //  - c1ORc2ORc3ORc4
                //   !- c1    : DTL.BZ kode is C
                //   !- c2    : DTL.BZ kode is E
                //   !- c3    : DTL.BZ kode is ES
                //   !- c4    : DTL.BZ kode is CS
                //   '-
               If #1A4CD = 'C' OR #1A4CD = 'E' OR #1A4CD = 'ES' OR #1A4CD = 'CS'; //*IF
                 WUZCNR = WUY7NR / 100; //Wrk refertemaan
                  // CASE: WRK.Wrk refertemaand LT DTL.Datum achterstal
                 If WUZCNR < #1GWNB; //*IF
                   WUZFNR = 209912; //Wrk jr/mnd acht
                    // Bepalen jr/mnd acht.-1 - Wkl betaling  *
                   //Bepalen jr/mnd
                   //Wrk refertemaan
                   //Datum achtersta
                   //Wrk jr/mnd acht

                   LWFAXFR(W0RTN:WQ0336:WQ0337:WQ0338);
                           If %Error();
                      // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LWFAXFR';
                      // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                     EXSR ZASNMS;
                   Endif;
                    // Error detected?
                   If W0RTN <> *BLANK;
                     *In99 = *On;
                   Endif;
         WUJ1CO = '0';                        // //Switch301
         WUJ2CO = '0';                        // //Switch302
                    // Controle BZ=C/E met ref.m - OV betaling wklh.  *
                   CLEAR   AJRC;
     AJAACD = #1AACD;
     AJAFNB = #1AFNB;
                   AJK5NB = WUZFNR; //OVW refertemaan

                   //Controle BZ=C/E
                   //KEY: OV betalin
                   //Switch301

                   LWE6XFR(W0RTN:AJRC:WQ0339);
                           If %Error();
                      // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LWE6XFR';
                      // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                     EXSR ZASNMS;
                   Endif;
                    // Error detected?
                   If W0RTN <> *BLANK;
                     *In99 = *On;
                   Endif;
                    // CASE: WRK.Switch301 is nt 0
                   If WUJ1CO <> '0'; //*IF
                      // Controle BZ=C/E met RM - Wkl betaling  *
                     CLEAR   AKRC;
     AKAACD = #1AACD;
     AKAFNB = #1AFNB;
                     AKGWNB = WUZFNR; //Datum achtersta

                     //Controle BZ=C/E
                     //KEY: Wkl betali
                     //Switch302
                     //Switch301

                     LWE7XFR(W0RTN:AKRC:WQ0340:WQ0341);
                             If %Error();
                        // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LWE7XFR';
                        // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
                       EXSR ZASNMS;
                     Endif;
                      // Error detected?
                     If W0RTN <> *BLANK;
                       *In99 = *On;
                     Endif;
                      // CASE: WRK.Switch302 is 1
                     If WUJ2CO = '1'; //*IF
                        // Send message 'Er is nog geen betaling g'
         ZAMSID = 'USR3396';
                       EXSR ZASNMS;
                       *In99 = *On;

                     Endif; //*FI
                      // CASE: WRK.Switch302 is 2
                     If WUJ2CO = '2'; //*IF
                        // Send message 'Reeds betaling gebeurd zo'
         ZAMSID = 'USR3397';
                       EXSR ZASNMS;
                       *In99 = *On;

                     Endif; //*FI
                   Endif; //*FI
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // BC/X2 werkvelden
          // CASE: DTL.BC aantal is > 0
         If #1LPNB > *ZERO; //*IF
         WUEFCO = #1CLCD;                        // //Wrk categorie B
           WUKADM = #1E9NB; //Wrk categorie J
         ELSE;
            // CASE: *OTHERWISE
         WUEFCO = *BLANK;                        // //Wrk categorie B
           WUKADM = *ZERO; //Wrk categorie J
         Endif; //*FI
          // BZ Metaal ziekte:Z,Z1,M,M1,35,85,FZ,PZ:GEEN bedr wklh] +BZ<=76,85
          // CASE:
          //  - c1ORc2ORc3ORc4ORc5ORc6ORc7ORc8ORc9
          //   !- c1    : DTL.BZ kode is Z
          //   !- c2    : DTL.BZ kode is Z1
          //   !- c3    : DTL.BZ kode is M
          //   !- c4    : DTL.BZ kode is M1
          //   !- c5    : DTL.BZ kode is 35
          //   !- c6    : DTL.BZ kode is 85
          //   !- c7    : DTL.BZ kode is FZ
          //   !- c8    : DTL.BZ kode is PZ
          //   !- c9    : DTL.BZ kode is 15
          //   '-
         If #1A4CD = 'Z' OR #1A4CD = 'Z1' OR #1A4CD = 'M' OR #1A4CD = 'M1' OR #1A4CD = '35' OR #1A4C
            // CASE: DTL.Bedrag wkl is > 0
           If #1HPNB > *ZERO; //*IF
              // Send message 'Geen wklh bij codes BZ=M,'
         ZAMSID = 'USR3404';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // ophalen maandbedrag BZ - Wkl betaling  *
           BZTER = 0;
           HBZTER = 0;
           WULVND = 0;
           RMPAR = #1GWNB;
           //REF.MND
           //BZ KODE
           //SWITCH
            // BZ=Z,M,35,Z1,M1,85 < maximum voor deze periode
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6
            //   !- c1    : DTL.BZ kode is Z
            //   !- c2    : DTL.BZ kode is M
            //   !- c3    : DTL.BZ kode is 35
            //   !- c4    : DTL.BZ kode is Z1
            //   !- c5    : DTL.BZ kode is M1
            //   !- c6    : DTL.BZ kode is 85
            //   '-
           MDBZ2(RMPAR:#1A4CD:WUN3CD:BZTER:HBZTER:WULVND);
             If #1A4CD = 'Z' OR #1A4CD = 'M' OR #1A4CD = '35' OR #1A4CD = 'Z1' OR #1A4CD = 'M1' OR #
              // CASE: DTL.Bedrag BZ GT WRK.Wrk bedrag BZ M M1
             If #1GYNB > WULVND; //*IF
                // Send message 'Bedrag BZ > maximum'
         ZAMSID = 'USR2293';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // CASE:
            //  - c1ORc2ORc3ORc4ORc5ORc6
            //   !- c1    : DTL.BZ kode is M
            //   !- c2    : DTL.BZ kode is M1
            //   !- c3    : DTL.BZ kode is FZ
            //   !- c4    : DTL.BZ kode is PZ
            //   !- c5    : DTL.BZ kode is 35
            //   !- c6    : DTL.BZ kode is 85
            //   '-
           If #1A4CD = 'M' OR #1A4CD = 'M1' OR #1A4CD = 'FZ' OR #1A4CD = 'PZ' OR #1A4CD = '35' OR #1
              // controle vorige mnd betaa - Wkl betaling  *
             RMPARM = #1GWNB;
         WUJ2CO = 'Y';                        // //VORIGE MAAND BETAALD
         BZPARM = #1A4CD;           // //2            VORIGE MAAND BETAALD
              // CASE: WRK.Switch302 is N
             MDMETKRT(#1AACD:#1AFNB:RMPARM:BZPARM:WUJ2CO);
               If WUJ2CO = 'N';
                // Send message 'Er is nog geen betaling g'
         ZAMSID = 'USR3396';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // Netto/taks of RWP is negatief
          // CASE:
          //  - c1ORc2ORc3ORc4ORc5ORc6ORc7
          //   !- c1    : DTL.Netto is < 0
          //   !- c2    : DTL.Netto wkl is < 0
          //   !- c3    : DTL.Netto BZ is < 0
          //   !- c4    : DTL.Taks is < 0
          //   !- c5    : DTL.Taks wkl is < 0
          //   !- c6    : DTL.Taks BZ is < 0
          //   !- c7    : DTL.RWP is < 0
          //   '-
         If #1GQNB < 0 OR #1T6NB < 0 OR #1T7NB < 0 OR #1HCNB < 0 OR #1T4NB < 0 OR #1T5NB < 0 OR #1JR
            // Send message 'Netto/taks/RWP < 0 ]]'
         ZAMSID = 'USR3776';
           EXSR ZASNMS;
           *In99 = *On;

         Endif; //*FI
          // !!! Euro<-->Bfr;Wie heeft wklh/BZ berekend? Geen nullen na de kom
          // CASE: WRK.Wrk hidden zetten calcul is 0
         If WUCA77 = '0'; //*IF
         WUM8CE = '0';                        // //Wrk switch na k
         #1GDCE = 'E';                        // //Wkl betaling BE
            // CASE: DTL.Datum achterstal is <= 11/2001
           If #1GWNB <= 200111; //*IF
             WUGJNR = 100 * #1GJNB; //Wrk na komma 01
              // Na komma 01 moet 00 zijn
              // CASE: WRK.Wrk na komma 01 is nt 0
             If WUGJNR <> *ZERO; //*IF
                // Send message 'Er is een bedragveld waar'
         ZAMSID = 'USR2859';
               EXSR ZASNMS;
               *In99 = *On;

         WUM8CE = '1';                        // //Wrk switch na k
             Endif; //*FI
           Endif; //*FI
            // Wie heeft wklh berekend?
            // CASE:
            //  - c1ORc2
            //   !- c1    : WRK.Switch bedrag Wklh is =0 : 1ste maal in program
            //   !- c2    : WRK.Switch bedrag Wklh is =3 :bedr wkl comput.berek
            //   '-
           If WUPFCD = '0' OR WUPFCD = '3'; //*IF
         #1BKCE = 'C';                        // //Wie heeft wklh
           ELSE;
              // CASE: *OTHERWISE
         #1BKCE = '*';                        // //Wie heeft wklh
           Endif; //*FI
            // PWA-toeslag : zelf bedrag wklh invullen:geen volledige maand
            // CASE:
            //  - c2ANDc1ANDc3
            //   !- c2    : DTL.Subberoep kode is P
            //   !- c1    : WRK.switch PWA toeslag is 2
            //   !- c3    : DTL.Wie heeft wklh berekend ? is *
            //   '-
         Y0CX01 = '0';           // //1
           If #1BCCD = 'P'; //*IF
             If WUA3CF = '2'; //*IF
               If #1BKCE = '*'; //*IF
         Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // Send message 'PWA-toeslag : zelf bedrag'
         ZAMSID = 'USR4193';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // Type 29=werkhervatting : zelf betaling inbrengen ipv computer te
            // CASE: DTL.Type wklh. kode is 29 = werkhervatting
           If #1A1CD = '29'; //*IF
              // CASE:
              //  - c1ORc2
              //   !- c1    : WRK.SwitchC10A is 01
              //   !- c2    : WRK.SwitchC10B is 10
              //   '-
             If WUUSCC = '01' OR WUUTCC = '10'; //*IF
                // CASE: DTL.Wie heeft wklh berekend ? is C
               If #1BKCE = 'C'; //*IF
                  // CASE:
                  //  - c1ANDc2
                  //   !- c1    : DTL.Bedrag wkl is > 0
                  //   !- c2    : DTL.Bedrag wkl LE WRK.Bedrag type29
                  //   '-
         Y0CX01 = '0';           // //1
                 If #1HPNB > *ZERO; //*IF
                   If #1HPNB <= WUC5NU; //*IF
         Y0CX01 = '1';
                   Endif; //*FI
                 Endif; //*FI
                 If Y0CX01 = '1'; //*IF
                 ELSE;
                    // CASE: *OTHERWISE
                    // Send message 'Type 29 : u moet bedrag w'
         ZAMSID = 'USR4097';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         WUBGCG = '0';                        // //switch type 29
            // Reeds een betaling type 29 gebeurd ==> bedrag wklh zelf invullen
            // CASE:
            //  - c1ANDc2ANDc3
            //   !- c1    : DTL.Type wklh. kode is <> 02
            //   !- c2    : DTL.Type wklh. kode is <> 04
            //   !- c3    : DTL.Type wklh. kode is <> 06
            //   '-
         Y0CX01 = '0';           // //1
           If #1A1CD <> '02'; //*IF
             If #1A1CD <> '04'; //*IF
               If #1A1CD <> '06'; //*IF
         Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // CASE:
              //  - c1ANDc2
              //   !- c1    : WRK.SwitchC10B is 10
              //   !- c2    : DTL.Wie heeft wklh berekend ? is C
              //   '-
         Y0CX01 = '0';           // //1
             If WUUTCC = '10'; //*IF
               If #1BKCE = 'C'; //*IF
         Y0CX01 = '1';
               Endif; //*FI
             Endif; //*FI
             If Y0CX01 = '1'; //*IF
         #1BKCE = '*';                        // //Wie heeft wklh
                // CASE:
                //  - c1ANDc2
                //   !- c1    : DTL.Bedrag wkl is > 0
                //   !- c2    : DTL.Bedrag wkl LE WRK.Bedrag type29
                //   '-
         Y0CX01 = '0';           // //1
               If #1HPNB > *ZERO; //*IF
                 If #1HPNB <= WUC5NU; //*IF
         Y0CX01 = '1';
                 Endif; //*FI
               Endif; //*FI
               If Y0CX01 = '1'; //*IF
               ELSE;
                  // CASE: *OTHERWISE
                  // Send message 'Type 29 : reeds een betal'
         ZAMSID = 'USR4098';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
         WUBGCG = '1';                        // //switch type 29
             Endif; //*FI
           Endif; //*FI
            // Type 29=werkhervatting : RSZ gewijzigd; //zelf bedrag invullen
            // CASE: DTL.Type wklh. kode is 29 = werkhervatting
           If #1A1CD = '29'; //*IF
              // CASE: DTL.Wie heeft wklh berekend ? is C
             If #1BKCE = 'C'; //*IF
                // CASE: WRK.SwitchRSZ is W
               If WUUQCC = 'W'; //*IF
                  // Send message 'Type 29 : nieuwe aanvraag'
         ZAMSID = 'USR4099';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
                // CASE: WRK.SwitchRSZ is B
               If WUUQCC = 'B'; //*IF
                  // Send message 'Type 29 : Geen recht meer'
         ZAMSID = 'USR4100';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Achterstal<=11/2001 + Euro:ZELF bedrag invullen](nt vr type15)
            // CASE:
            //  - c1ANDc2ANDc3ANDc4
            //   !- c1    : DTL.Wkl betaling BEF/EURO is E
            //   !- c2    : DTL.Datum achterstal is <= 11/2001
            //   !- c3    : DTL.Dagbedrag is nt 0
            //   !- c4    : DTL.Bedrag wkl is niet 0
            //   '-
         Y0CX01 = '0';           // //1
           If #1GDCE = 'E'; //*IF
             If #1GWNB <= 200111; //*IF
               If #1DDNB <> *ZERO; //*IF
                 If #1HPNB <> *ZERO; //*IF
         Y0CX01 = '1';
                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // CASE: DTL.Wie heeft wklh berekend ? is C
             If #1BKCE = 'C'; //*IF
                // CASE: DTL.Type wklh. kode is <> 15
               If #1A1CD <> '15'; //*IF
                  // Send message 'Dagbedrag>0:bedrag wklh z'
         ZAMSID = 'USR3781';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
            // Bij lopende sanctie bedrag wklh zelf invullen!
            // CASE:
            //  - c1ANDc2
            //   !- c1    : WRK.switch21 is 1
            //   !- c2    : DTL.Geen bedrag wklh is Y
            //   '-
         Y0CX01 = '0';           // //1
           If WUG2CD = '1'; //*IF
             If #1BDST = 'Y'; //*IF
         Y0CX01 = '1';
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // CASE: WRK.Switch bedrag Wklh is nt 1 : nt zelf bedrag ing
             If WUPFCD <> '1'; //*IF
                // Send message 'Datum einde sankt >= wkl'
         ZAMSID = 'USR0291';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
            // Wie heeft BZ berekend?
            // CASE:
            //  - c1ORc2
            //   !- c1    : WRK.Switch bedrag BZ is =0:1ste maal in programma
            //   !- c2    : WRK.Switch bedrag BZ is =3:bedr bz computer berek
            //   '-
           If WUPGCD = '0' OR WUPGCD = '3'; //*IF
         #1BLCE = 'C';                        // //Wie heeft BZ be
           ELSE;
              // CASE: *OTHERWISE
         #1BLCE = '*';                        // //Wie heeft BZ be
           Endif; //*FI
         Endif; //*FI
          // Maanden VOOR EURO (<=11/2001) bedrag=0,01 eurocent : RVA weigert
          // CASE: DTL.Datum achterstal is <= 11/2001
         If #1GWNB <= 200111; //*IF
            // CASE: DTL.Bedrag wkl is = 0,01
           If #1HPNB = 0.01; //*IF
              // Send message '1 eurocent voor mndn <11/'
         ZAMSID = 'USR4152';
             EXSR ZASNMS;
             *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
           ELSE;
              // CASE: *OTHERWISE
              // CASE:
              //  - c1ORc2
              //   !- c1    : DTL.BZ kode is B
              //   !- c2    : DTL.Type wklh. kode is 15 : grensarbeiders
              //   '-
             If #1A4CD = 'B' OR #1A1CD = '15'; //*IF
                // CASE: DTL.Bedrag BZ is = 0,01
               If #1GYNB = 0.01; //*IF
                  // Send message '1 eurocent voor mndn <11/'
         ZAMSID = 'USR4152';
                 EXSR ZASNMS;
                 *In99 = *On;

         WUPSCD = '1';                        // //Switch berekeni
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
         WUFMCG = 'N';                        // //Wrk KB213 betaa
         WUVXNM = *ZERO; //Wrk datum KB213
         WUFLCG = *BLANK;                        // //Wrk datum KB213
          // Controle dec./jan KB213 - Wkl betaling  *
         If MNDACH = 12 OR MNDACH = 01; //12/2005
          If Not(#1GWNB = 201701 OR #1GWNB = 201801 OR #1GWNB = 201901 OR #1GWNB = 202001);
            //WKL2496 NIET MEER TESTEN VOOR JANUARI 2017
            //WKL2828 NIET MEER TESTEN VOOR JANUARI 2018 2019 2020
           If HVTOT6 > 0 OR HHTOT6 > 0 OR HVTOT5 > 0 OR HHTOT5 > 0;
             If #1A1CD = '01' OR #1A1CD = '03';
               //AFD
               //LIDNR
               //REF.MND
               //WRK KB213 BETAALD
               //WRK DATUM KB213 8 LA
               //WRK DATUM KB213 10 L
               MDBOUWKB(#1AACD:#1AFNB:RMPARM:WUFMCG:WUVXNM:WUFLCG);
               If WUFMCG = 'N';
                 If #DFYTK = '124   ' OR #DFYTK = '401124' OR #1A4CD = 'B ' OR WUS5CL = 'Y';
                   If MNDACH = 12; //12
                     JR1124 = JRACHT;
                     JR2124 = JRACHT + 1;
                   ELSE; //01
                     JR1124 = JRACHT - 1;
                     JR2124 = JRACHT;
                   ENDIF;
                   BG1124 = JR1124 * 10000;
                   EI2124 = JR2124 * 10000;
                    //          BG1124    ADD  1024      BG1124
                    //WKL2496
                   BG1124 = BG1124 + 1023;
                   EI2124 = EI2124 + 0109;
                   If #1AKDT >= BG1124 AND #1AKDT < EI2124; //20071024
                     WUFMCG = 'X';
                   ENDIF;
                 ENDIF; //124/401124
               ENDIF; //GEVONDEN=N
             ENDIF; //TYPE 01,03
           ENDIF; //DAGEN R6,... INGEVUL
            // VOOR TIJDELIJKE WKLH ALLE GEVALLEN DIE GEEN BZ CODE B HEBBEN
           If HVTOT6 > 0 OR HHTOT6 > 0 OR HVTOT5 > 0 OR HHTOT5 > 0;
             If #1A1CD = '02' OR #1A1CD = '04' OR #1A1CD = '06';
               //AFD
               //LIDNR
               //REF.MND
               //WRK KB213 BETAALD
               //WRK DATUM KB213 8 LA
               //WRK DATUM KB213 10 L
             MDBOUWKB(#1AACD:#1AFNB:RMPARM:WUFMCG:WUVXNM:WUFLCG);
               ENDIF;
           ENDIF; //DAGEN R6,... INGEVUL
          EndIf;
         ENDIF; //MAAND DEC./JANUARI
          // CASE: WRK.Wrk KB213 betaald is Y
         If WUFMCG = 'Y'; //*IF
            // Setup message data for message
         ZA0186 = WUFLCG;                        // //Wrk datum KB213
            // Send message 'Er is een betaling KB213'
         ZAMSID = 'USR4674';
         ZAMSTP = '*INFO';                        //Message type
           EXSR ZASNMS;

         Endif; //*FI
          // CASE: WRK.Wrk KB213 betaald is X
         If WUFMCG = 'X'; //*IF
            // Send message 'KB213 : geen cumul wklh m'
         ZAMSID = 'USR5114';
         ZAMSTP = '*INFO';                        //Message type
           EXSR ZASNMS;

         Endif; //*FI
          // Type 12 : verlofscherm2 tonen
          // CASE: WRK.Switch berekening is 0
         If WUPSCD = '0'; //*IF
            // CASE: DTL.Type wklh. kode is 12 :171bis beschutte werk
           If #1A1CD = '12'; //*IF
             WUBWNB = #1GWNB / 100; //Verlof jaar
              // Update verlof via betaals - Verlof  *
             //Update verlof v
             //Afdeling nr
             //Lid nr
             //Verlof jaar
             //Add/change lid
             //Type wklh. kode

             LXGME1R(W0RTN:WQ0342:WQ0343:WQ0344:WQ0345:WQ0346);
                     If %Error();
                // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'LXGME1R';
                // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
         Endif; //*FI
          // type12 met dagen V of anc : lid heeft recht op nettobedrag
          // CASE: DTL.Type wklh. kode is 12 :171bis beschutte werk
         If #1A1CD = '12'; //*IF
           YRSW00 = 1;
           ZQ = 5;
           If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00007 OR ZQ > 00007;
         W0RTN = 'Y2U0510';
           ELSE;
             WUDMCH = %Subst(#1DOCD:ZQ:YRSW00); //wrk veld 1 lang
           Endif;
         WUDNCH = 'N';                        // //Wrk leeftijd 50
            // CASE: WRK.wrk veld 1 lang type12 is 3
           If WUDMCH = '3'; //*IF
              // Bepalen leeftijd type12 - Wkl betaling  *
             RMPAR = #1GWNB / 100;
             RMPAR = RMPAR * 100;
             TSTLFT = 50;
             //AFD
             //LIDNR
             //REF.MND
             //TEST LEEFTIJD
              // OUTPUT
             //'N' OF 'Y'
           MDLEEFT(#1AACD:#1AFNB:RMPAR:TSTLFT:WUDNCH);
             Endif;
            // CASE:
            //  - c1ORc2ORc3
            //   !- c1    : DTL.Volle dagen verlof is > 0
            //   !- c2    : DTL.Halve dagen verlof is niet 0
            //   !- c3    : WRK.Wrk leeftijd 50 of ouder is Y
            //   '-
           If #1GNNB > *ZERO OR #1JLNB <> *ZERO OR WUDNCH = 'Y'; //*IF
             YRSW00 = 1;
             ZQ = 1;
             If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00003 OR ZQ > 00003;
         W0RTN = 'Y2U0510';
             ELSE;
               WUDOCH = %Subst(#1DVCD:ZQ:YRSW00); //Wrk 1 positie S
             Endif;
             YRSW00 = 1;
             ZQ = 1;
             If YRSW00 < 1 OR ZQ < 1 OR YRSW00 > 00003 OR ZQ > 00003;
         W0RTN = 'Y2U0510';
             ELSE;
               WUDPCH = %Subst(#1DWCD:ZQ:YRSW00); //Wrk 1 positie S
             Endif;
              // CASE: DTL.Netto wkl is niet 0
             If #1T6NB <> *ZERO; //*IF
                // CASE:
                //  - c1ORc2ORc3ORc4ORc5ORc6
                //   !- c1    : DTL.Afh1 kode is = TB
                //   !- c2    : DTL.Afh2 kode is = TB
                //   !- c3    : DTL.Afh3 kode is = TB
                //   !- c4    : DTL.Afh4 kode is = TB
                //   !- c5    : DTL.Afh5 kode is = TB
                //   !- c6    : DTL.Afh6 kode is = TB
                //   '-
               If #1DVCD = 'TB' OR #1DWCD = 'TB' OR #1DXCD = 'TB' OR #1DYCD = 'TB' OR #1EDCD = 'TB'
               ELSE;
                  // CASE: *OTHERWISE
                  // Send message 'Type12 : er moet een TB'
         ZAMSID = 'USR5209';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
             ELSE;
                // CASE: *OTHERWISE
                // Send message 'Type12 : dagen V of anc'
         ZAMSID = 'USR5208';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // CASE:
          //  - c1ORc2
          //   !- c1    : DTL.Type wklh. kode is 50
          //   !- c2    : DTL.Type wklh. kode is 53
          //   '-
         If #1A1CD = '50' OR #1A1CD = '53'; //*IF
            // CASE: DTL.Bedrag wkl EQ WRK.Bedrag type50
           If #1HPNB = WUTSNC; //*IF
         #1BKCE = 'C';                        // //Wie heeft wklh
           ELSE;
              // CASE: *OTHERWISE
         #1BKCE = '*';                        // //Wie heeft wklh
           Endif; //*FI
         Endif; //*FI
          // CASE: WRK.switch 114Â§7 is *
         If WULQCH = '*'; //*IF
            // CASE: DTL.Wie heeft wklh berekend ? is C
           If #1BKCE = 'C'; //*IF
              // Send message 'Verg.art 114Â§7:zelf bedra'
         ZAMSID = 'USR5417';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
         Endif; //*FI
          // CASE: DTL.Wkl gemiddeld maandbedr. is ingevuld
         If #1BENR <> 0; //*IF
            // CASE: DTL.Wkl gemiddeld maandbedr. is < 0
           If #1BENR < 0; //*IF
              // Send message 'Inh% BP : bedrag < 0'
         ZAMSID = 'USR5747';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
            // CASE:
            //  - c1ORc2ORc3ORc4
            //   !- c1    : DTL.BZ kode is 29
            //   !- c2    : DTL.BZ kode is 79
            //   !- c3    : DTL.BZ kode is NA
            //   !- c4    : DTL.BZ kode is DA
            //   '-
           If #1A4CD = '29' OR #1A4CD = '79' OR #1A4CD = 'NA' OR #1A4CD = 'DA'; //*IF
           ELSE;
              // CASE: *OTHERWISE
              // Send message 'Inh% BP kan niet met deze'
         ZAMSID = 'USR5748';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
         Endif; //*FI
          // Controle na F24 mag men niets meer wijzigen
          // CASE: WRK.Wrk f24 gebruikt is Y
         If WUYBCJ = 'Y'; //*IF
         WUTQCK = 'N';                        // //C105 bestaat al
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = 'C105';

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
           //Test Doc BD bes
           //KEY: Documenten
           //Wrk taal
           //WRK Barema
           //WRK Type wkl. k
           //WRK document BD

           XPG(AARC:WQ0347:WQ0348:WQ0349:WQ0350);
                   If %Error();
              // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
              // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
         WUTSCK = 'N';                        // //C110A bestaat a
            // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
           CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
           AAQLDM = #1GWNB; //Doc BD meer RM
           AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = 'C110A';

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
           //Test Doc BD bes
           //KEY: Documenten
           //Wrk taal
           //WRK Barema
           //WRK Type wkl. k
           //WRK document BD

           XPG(AARC:WQ0351:WQ0352:WQ0353:WQ0354);
                   If %Error();
              // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
              // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
             EXSR ZASNMS;
             *In99 = *On;
           Endif;
            // controle na F24 - Wkl betaling  *
         WUYCCJ = 'N';
           If #1GLNB <> F24R6;
         WUYCCJ = 'Y';
           ENDIF;
           If #1GMNB <> F24HR6;
         WUYCCJ = 'Y';
           ENDIF;
           If #1G7NB <> F24BV;
         WUYCCJ = 'Y';
           ENDIF;
           If #1JONB <> F24HBV;
         WUYCCJ = 'Y';
           ENDIF;
           If #1GNNB <> F24V;
         WUYCCJ = 'Y';
           ENDIF;
           If #1JLNB <> F24HV;
         WUYCCJ = 'Y';
           ENDIF;
            //          #1MPCE    IFNE WUZGCJ
            //                    MOVEL'Y'       WUYCCJ
            //                    ENDIF
           If WUTPCK <> WUTQCK;
         WUYCCJ = 'Y';
           ENDIF;
           If WUTRCK <> WUTSCK;
         WUYCCJ = 'Y';
           ENDIF;
            // CASE: WRK.Wijziging na f24 is Y
           If WUYCCJ = 'Y'; //*IF
              // Send message 'F24 gebruikt!'
         ZAMSID = 'USR6380';
             EXSR ZASNMS;
             *In99 = *On;

           Endif; //*FI
         Endif; //*FI
         WUFDND = #1GJNB; //Wrk bedrag Y na
          // Karina : warning wanneer BF(S) zonder/met C105
          // Test Doc BD bestaat RPGLE - Documenten BD meerdere  *
         CLEAR   AARC;
     AAAACD = #1AACD;
     AAAFNB = #1AFNB;
     AAY0CJ = WUWUBE;
         AAQLDM = #1GWNB; //Doc BD meer RM
         AAQMDM = WUZKNR; //Doc BD meer IM
     AAY1CJ = @CN(034);
     AAY2CJ = 'C105';

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '08';
         //Test Doc BD bes
         //KEY: Documenten
         //Wrk taal
         //WRK Barema
         //WRK Type wkl. k
         //WRK document BD

         XPG(AARC:WQ0355:WQ0356:WQ0357:WQ0358);
                 If %Error();
            // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '08';
            // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
           EXSR ZASNMS;
           *In99 = *On;
         Endif;
          // Karina WKL-1524
          // Window overschrijven - Wkl betaling  *
         WRITE #RCDDTL1;
          // Test barema 96/..... - Werkloze baremas  *
         CLEAR   ALRC;
     ALAACD = #1AACD;
     ALAFNB = #1AFNB;
         ALNFND = WUXUND; //Werkloze barema
     ALPPCJ = WUVMCJ;
         ALNEDE = #1GWNB; //Werkloze barema
     ALDVCJ = *BLANK;
         ALQIDE = *ZERO; //Werkloze barema
         ALX0ND = *ZERO; //Werkloze barema
     ALVKCJ = *BLANK;
         ALKJDE = *ZERO; //1ste periode Da
     ALARNB = *BLANK;
     ALA1CD = *BLANK;
     ALDOCD = *BLANK;
         ALKKDE = *ZERO; //1ste periode Da
     ALY0CI = *BLANK;
     ALY1CI = *BLANK;
         ALKLDE = *ZERO; //1ste periode Da
     ALY2CI = *BLANK;
     ALY3CI = *BLANK;
         ALLCDE = *ZERO; //1ste periode da
     ALGTCJ = *BLANK;
     ALGUCJ = *BLANK;
         ALLDDE = *ZERO; //1ste periode da
     ALGVCJ = *BLANK;
     ALGWCJ = *BLANK;
         ALLEDE = *ZERO; //1ste periode da
     ALGXCJ = *BLANK;
     ALGYCJ = *BLANK;
         ALLFDE = *ZERO; //1ste periode da
     ALGZCJ = *BLANK;
     ALG0CJ = *BLANK;
         ALLGDE = *ZERO; //1ste periode da
     ALG1CJ = *BLANK;
     ALG2CJ = *BLANK;
         ALLHDE = *ZERO; //1ste periode da
     ALG3CJ = *BLANK;
     ALG4CJ = *BLANK;
         ALLIDE = *ZERO; //1ste periode da
     ALG5CJ = *BLANK;
     ALG6CJ = *BLANK;
         ALLJDE = *ZERO; //1ste periode da
     ALG7CJ = *BLANK;
     ALG8CJ = *BLANK;
         ALLKDE = *ZERO; //1ste periode da
     ALG9CJ = *BLANK;
     ALHACJ = *BLANK;
         ALLLDE = *ZERO; //1ste periode da
     ALHBCJ = *BLANK;
     ALHCCJ = *BLANK;
         ALLMDE = *ZERO; //1ste periode da
     ALHDCJ = *BLANK;
     ALHECJ = *BLANK;
         ALLNDE = *ZERO; //1ste periode da
     ALHFCJ = *BLANK;
     ALHGCJ = *BLANK;
         ALKODE = *ZERO; //1ste periode da
     ALY8CI = *BLANK;
     ALY9CI = *BLANK;
         ALLODE = *ZERO; //1ste periode da
     ALH7CJ = *BLANK;
     ALH8CJ = *BLANK;
         ALLPDE = *ZERO; //1ste periode da
     ALH9CJ = *BLANK;
     ALIACJ = *BLANK;
         ALUEND = *ZERO; //Werkloze S04 da
         ALUFND = *ZERO; //Werkloze S04 da
         ALUGND = *ZERO; //Werkloze S04 da
         ALUHND = *ZERO; //Werkloze S04 da
         ALUIND = *ZERO; //Werkloze S04 da
         ALUJND = *ZERO; //Werkloze S04 da
         ALUKND = *ZERO; //Werkloze S04 da
         ALULND = *ZERO; //Werkloze S04 da
         ALUMND = *ZERO; //Werkloze S04 da
         ALUNND = *ZERO; //Werkloze S04 da
         ALUOND = *ZERO; //Werkloze S04 da
         ALUPND = *ZERO; //Werkloze S04 da
         ALUQND = *ZERO; //Werkloze S04 da
         ALURND = *ZERO; //Werkloze S04 da
         ALUSND = *ZERO; //Werkloze S04 da
         ALUTND = *ZERO; //Werkloze S04 da
         ALUUND = *ZERO; //Werkloze S04 da
         ALUVND = *ZERO; //Werkloze S04 da
         ALKMDE = *ZERO; //TW datum1
     ALY4CI = *BLANK;
     ALY5CI = *BLANK;
         ALKNDE = *ZERO; //TW datum2
     ALY6CI = *BLANK;
     ALY7CI = *BLANK;
         ALKZDE = *ZERO; //TW datum3
     ALHHCJ = *BLANK;
     ALHICJ = *BLANK;
         ALU0ND = *ZERO; //Werkloze S04 TW
         ALU1ND = *ZERO; //Werkloze S04 TW
         ALU2ND = *ZERO; //Werkloze S04 TW
         ALUWND = *ZERO; //Werkloze S04 TW
         ALUXND = *ZERO; //Werkloze S04 TW
         ALUYND = *ZERO; //Werkloze S04 TW
         ALUZND = *ZERO; //Werkloze S04 TW
         ALPADE = *ZERO; //Werkloze S04 ve
     ALPXCJ = *BLANK;
         ALT6ND = *ZERO; //Werkloze S04 aa
         ALPBDE = *ZERO; //Werkloze S04 da
         ALT7ND = *ZERO; //Werkloze S04 Be
         ALT8ND = *ZERO; //Werkloze S04 Be
         ALT9ND = *ZERO; //Werkloze S04 Be
         ALPCDE = *ZERO; //Werkloze S04 be
     ALPYCJ = *BLANK;
         ALUAND = *ZERO; //Werkloze S04 al
         ALUBND = *ZERO; //Werkloze S04 al
         ALUCND = *ZERO; //Werkloze S04 al
         ALUDND = *ZERO; //Werkloze S04 al
     ALP0CJ = *BLANK;
         ALPDDE = *ZERO; //Werkloze S04 dt
         ALU3ND = *ZERO; //Werkloze S04 be
     ALP1CJ = *BLANK;
     ALP2CJ = *BLANK;
     ALP3CJ = *BLANK;
     ALZ1CJ = *BLANK;
     ALZ2CJ = *BLANK;
     ALZ3CJ = *BLANK;
     ALP4CJ = *BLANK;
     ALP5CJ = *BLANK;
     ALP6CJ = *BLANK;
     ALZ4CJ = *BLANK;
     ALZ5CJ = *BLANK;
     ALZ6CJ = *BLANK;
     ALV9TN = *BLANK;
     ALWATN = *BLANK;
         ALQNDE = *ZERO; //werkloze barema
     ALPQCJ = *BLANK;
     ALPRCJ = *BLANK;
     ALPSCJ = *BLANK;
     ALPTCJ = *BLANK;
     ALPUCJ = *BLANK;
     ALPVCJ = *BLANK;
     ALPWCJ = *BLANK;
     ALPZCJ = *BLANK;
     ALTTTN = *BLANK;
         ALL2DE = *ZERO; //Werkloze barema
         ALG8TM = *ZERO; //Werkloze barema
     ALTUTN = *BLANK;
         ALL3DE = *ZERO; //Werkloze barema
         ALG9TM = *ZERO; //Werkloze barema

         WXPGM = 'MDCLCBAR';           // //10
     EvalR   WXPGM = '09';
         //Test barema 96/
         //RCD: Werkloze b
         //WRK Taalkode
         //wrk type bereke

         XPG(ALRC:WQ0359:WQ0360);
                 If %Error();
            // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = 'MDCLCBAR';          // //10
     EvalR   W0CLPG = '09';
            // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
           EXSR ZASNMS;
           *In99 = *On;
         Endif;
          // CASE: WRK.switch LBB is Y
         If WUBDCN = 'Y'; //*IF
            // CASE:
            //  - c1ANDc2
            //   !- c1    : DTL.BC aantal is = 0
            //   !- c2    : DTL.Netto wkl is > 11,60
            //   '-
         Y0CX01 = '0';           // //1
           If #1LPNB = *ZERO; //*IF
             If #1T6NB >= 11.60; //*IF
         Y0CX01 = '1';
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
           Endif; //*FI
         Endif; //*FI
          // CASE: DTL.Type wklh. kode is 12 :171bis beschutte werk
         If #1A1CD = '12'; //*IF
            // CASE:
            //  - c1ORc2
            //   !- c1    : DTL.Netto wkl is niet 0
            //   !- c2    : DTL.Netto BZ is niet 0
            //   '-
           If #1T6NB <> *ZERO OR #1T7NB <> 0; //*IF
              // Prompt voor fouten/info - Foutenlijsten pop-up  *
             CLEAR   PCRC;
     PCJECL = 'T12';
     PCJFCL = WUYXCJ;

             //Prompt voor fou
             //KEY: Foutenlijs

             L0ALPVR(W0RTN:PCRC);
                     If %Error();
                // Call to program ended in error
         W0RTN = 'Y2U0032';
         W0CLPG = *BLANKS;          // //10
         W0CLPG = 'L0ALPVR';
                // Send message '*Error occured on CALL...'
         ZAMSID = 'Y2U0032';
         ZAMSGF = 'Y2USRMSG';
         ZAMSDA = W0CLPG;                        // //Message data
               EXSR ZASNMS;
             Endif;
              // Error detected?
             If W0RTN <> *BLANK;
               *In99 = *On;
             Endif;
           Endif; //*FI
         Endif; //*FI
          // CASE: WRK.Wrk totaalR6 zonderBV/KBF is > 0
         If WUJYNG > 0; //*IF
            // CASE: DTL.Bedrag wkl is = 0
           If #1HPNB = *ZERO; //*IF
              // CASE: WRK.Switch 1ste maal RMbetaal is 1
             If WULECN = '1'; //*IF
                // CASE: DTL.Type wklh. kode is <> 00
               If #1A1CD <> '00'; //*IF
                  // Send message 'Dagen zonder bedrag wkl'
         ZAMSID = 'USR1083';
                 EXSR ZASNMS;
                 *In99 = *On;

               Endif; //*FI
                // als wkl3932 in productie moet,moet bovenste if met * en onderste
                // wachten tot RVDS en Kim terug zijn na operatie lies en operatie ?
                // dus ergens dec 2024 of januari 2025 voorzien
             Endif; //*FI
           Endif; //*FI
         ELSE;
            // CASE: *OTHERWISE
            // CASE: DTL.Bedrag wkl is = 0
           If #1HPNB = *ZERO; //*IF
              // CASE: WRK.Switch 1ste maal RMbetaal is 1
             If WULECN = '1'; //*IF
                // CASE:
                //  - c1ORc2ORc3ORc4ORc5ORc6
                //   !- c1    : DTL.Type wklh. kode is 00 : niet toelaatbaar
                //   !- c2    : DTL.Type wklh. kode is 70 :nt ingaan op uitnodig
                //   !- c3    : DTL.Type wklh. kode is 71 :vrijwillig wklh
                //   !- c4    : DTL.Type wklh. kode is 72 :blijv.onmogelijkheid
                //   !- c5    : DTL.Type wklh. kode is 73 :in afwachting E301
                //   !- c6    : DTL.Type wklh. kode is 97
                //   '-
               If #1A1CD = '00' OR #1A1CD = '70' OR #1A1CD = '71' OR #1A1CD = '72' OR #1A1CD = '73'
                  // CASE: DTL.Dagen kbf sanktie is = 0
                 If #1GXNB = *ZERO; //*IF
                    // Send message 'Geen dagen doorgegeven?'
         ZAMSID = 'USR4026';
                   EXSR ZASNMS;
                   *In99 = *On;

                 Endif; //*FI
               Endif; //*FI
             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // CASE:
          //  - c1ORc2
          //   !- c1    : DTL.Type wklh. kode is 09 : conv brugp voltijds
          //   !- c2    : DTL.Type wklh. kode is 10 : conv brugp deeltijds
          //   '-
         If #1A1CD = '09' OR #1A1CD = '10'; //*IF
            // CASE:
            //  - c1ANDc2
            //   !- c1    : DTL.BZ kode is nt blank
            //   !- c2    : DTL.Geen dagen/bedrag BZ is Y
            //   '-
         Y0CX01 = '0';           // //1
           If #1A4CD <> *BLANK; //*IF
             If #1BCST = 'Y'; //*IF
         Y0CX01 = '1';
             Endif; //*FI
           Endif; //*FI
           If Y0CX01 = '1'; //*IF
              // Mag er nog29/79/NA/DA bij - Wkl betaling  *
             BZVVVV = #1GPNB;
             BZHHHH = #1JNNB;
             //AFD
             //LIDNR
             //REF.MND
             //TYPE
             //BZ KODE
             //VOLLE BZ
             //HALVE BZ
              // CASE: WRK.switch bz 29 79 is N
             MDTOTD29(#1AACD:#1AFNB:RMPAR:#1A1CD:#1A4CD:BZVVVV:BZHHHH:WUMNCN);
               If WUMNCN = 'N';
                // Send message 'Bijpassing onmogelijk'
         ZAMSID = 'USR7540';
               EXSR ZASNMS;
               *In99 = *On;

             Endif; //*FI
           Endif; //*FI
         Endif; //*FI
          // Lstempel mag nt gr d RM - Wkl betaling  *
         WUNZCN = '0';
         If #1AKDD > 0;
           JJMMLS = #1AKDD / 100;
           If JJMMLS > #1GWNB;
         WUNZCN = '1';
           ENDIF;
         ENDIF;
          // CASE: WRK.sw Laatste stempel > RM is 1
         If WUNZCN = '1'; //*IF
            // Setup message data for message
            // Convert Wkl datum laatste stempel to external.

           UIDTD2 = #1AKDD;
           UDTDC2 = UDTD12;
           UDTDY2 = UDTD22;
           UDTDM2 = UDTD32;
           UDTDD2 = UDTD42;
           ZA0187 = UEDTD2;
            // Send message 'Laatste stempel refertem'
         ZAMSID = 'USR7455';
           EXSR ZASNMS;
           *In99 = *On;

         Endif; //*FI
          // WB fusies WB nt mr geldig - Wkl betaling  *
         If #1GWNB >= 202501;
     EvalR   WBWBIN = #1A2CD;           // //2
           RMPARM = #1GWNB;
         WUNSCN = 'N';
            // ERROR MESSAGE : WB BESTAAT NIET (MEER) SINDS 01/2025
         MDWB025C(WBWBIN:RMPARM:WUNSCN);
           ENDIF;
          // CASE: WRK.Switch WB ongeldig is Y
         If WUNSCN = 'Y'; //*IF
            // Send message 'WB, ond.afd foutief'
         ZAMSID = 'USR3031';
           EXSR ZASNMS;
           *In99 = *On;

         Endif; //*FI
          // Check relations
          // Check reference to Kateg suppl
         EXSR VBCKRL;
         If W0RTN <> *BLANK;
         W0RTN = *BLANK;
           *In99 = *On;
           *In31 = *On;
           *In99 = *On;
           *In31 = *On;
           *In99 = *On;
           *In31 = *On;
         Endif;
          // Check reference to C12 reden
         EXSR VCCKRL;
         If W0RTN <> *BLANK;
         W0RTN = *BLANK;
           *In99 = *On;
           *In99 = *On;
         Endif;
          // USER: Validate detail screen relations
         WUAACD = #1AACD;                        // //Afdeling nr
         WUAFNB = #1AFNB;                        // //Lid nr
         WUGWNB = 0; //Datum achtersta
         ZQ = 0;
         WUCACO = #1AKNB + '' + #1FGNB; //Wrk veld 9 posi
         ZQ = 0;
         WUAPCF = WUCACO + '' + #1FHNB; //Wrk veld 11 pos
         WUL6ND = #1GWNB; //Wrk RM key scre
          // Geen uren ged. wkl. required
         If #1ISCD = *BLANK AND *IN64 = '0'; //IF
         @I1(34) = '1';
           *In99 = *On;
            // Send message '*Value required'
         ZAMSID = 'Y2U0001';
         ZAMSGF = 'Y2USRMSG';
           EXSR ZASNMS;
         Endif; //FI
          // Geen bedrag wklh required
         If #1BDST = *BLANK AND *IN44 = '0'; //IF
           *In99 = *On;
            // Send message '*Value required'
         ZAMSID = 'Y2U0001';
         ZAMSGF = 'Y2USRMSG';
           EXSR ZASNMS;
         Endif; //FI
          // Geen dagen/bedrag BZ required
         If #1BCST = *BLANK AND *IN42 = '0'; //IF
           *In99 = *On;
            // Send message '*Value required'
         ZAMSID = 'Y2U0001';
         ZAMSGF = 'Y2USRMSG';
           EXSR ZASNMS;
         Endif; //FI
       ENDSR;