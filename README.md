<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PIC16F628A LED Project</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: #f7f9fb;
            color: #333;
        }
        header {
            background-color: #2c3e50;
            color: white;
            padding: 30px;
            text-align: center;
        }
        h1 {
            margin-bottom: 5px;
        }
        .container {
            padding: 40px;
            max-width: 1000px;
            margin: auto;
        }
        h2 {
            color: #2c3e50;
            border-bottom: 2px solid #3498db;
            padding-bottom: 5px;
        }
        p {
            line-height: 1.6;
        }
        .image-box {
            margin: 20px 0;
            border: 1px solid #ccc;
            background: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        .image-box img {
            width: 100%;
            max-width: 600px;
            display: block;
            margin: 0 auto;
            border-radius: 6px;
        }
        .image-title {
            text-align: center;
            font-weight: bold;
            margin-top: 10px;
            color: #34495e;
        }
        .code-box {
            background-color: #ecf0f1;
            padding: 15px;
            font-family: Consolas, monospace;
            border-left: 6px solid #3498db;
            overflow-x: auto;
            margin: 20px 0;
        }
        ul {
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <header>
        <h1>PIC16F628A LED Control Project</h1>
        <p>Visual simulation of LED control using Assembly & Proteus</p>
    </header>

    <div class="container">

        <h2>📝 Project Overview</h2>
        <p>
            This project demonstrates how to use the <strong>PIC16F628A</strong> microcontroller to control 8 LEDs using Assembly language.
            The simulation is built in <strong>Proteus</strong>. A crystal oscillator is used for stable timing, and LEDs are controlled through PORTB.
        </p>

        <h2>🔌 Circuit: All LEDs OFF (Passive State)</h2>
        <div class="image-box">
            <img src="led_kontrol_pasif.jpeg" alt="All LEDs OFF">
            <div class="image-title">All LEDs OFF (Passive State)</div>
        </div>

        <div class="code-box">
; led_kontrol_pasif.asm
bsf     STATUS, RP0      
clrf    TRISB            
bcf     STATUS, RP0      
clrf    PORTB            
        </div>

        <h2>💡 Circuit: D6 LED ON (Active State)</h2>
        <div class="image-box">
            <img src="led_kontrol_d6_aktif.jpeg" alt="D6 LED ON">
            <div class="image-title">D6 LED ON (Active State)</div>
        </div>

        <div class="code-box">
; led_d6_aktif.asm
bsf     STATUS, RP0      
clrf    TRISB            
bcf     STATUS, RP0      
movlw   b'00100000'      
movwf   PORTB            
        </div>

        <h2>📁 Files Included</h2>
        <ul>
            <li><strong>led_kontrol_pasif.asm</strong> – Turns OFF all LEDs</li>
            <li><strong>led_d6_aktif.asm</strong> – Turns ON only D6 (RB5)</li>
            <li><strong>led_kontrol_pasif.jpeg</strong> – Screenshot of passive state</li>
            <li><strong>led_kontrol_d6_aktif.jpeg</strong> – Screenshot of active state</li>
            <li><strong>led_kontrol.hex</strong> – HEX file for simulation</li>
        </ul>

        <h2>🖼️ Add Your Own Output</h2>
        <p>You can add additional screenshots by uploading them and inserting like below:</p>
        <div class="code-box">
&lt;img src="your_image_name.jpeg" alt="Description"&gt;
        </div>

    </div>

</body>
</html>
