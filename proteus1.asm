    LIST P=16F628A
    INCLUDE <P16F628A.INC>

    __CONFIG _CP_OFF & _WDT_OFF & _XT_OSC

    ORG 0x0000

Start:
    CLRWDT           ; Watchdog timer reset (opsiyonel)
    BSF STATUS, RP0  ; Bank1 seç
    MOVLW 0x00
    MOVWF TRISB      ; PORTB çıkış olarak ayarlandı
    BCF STATUS, RP0  ; Bank0 seç
    MOVLW 0x00
    MOVWF PORTB      ; PORTB pinlerini kapat (LED’ler sönük)
    
MainLoop:
    GOTO MainLoop    ; Sonsuz döngü

    END
