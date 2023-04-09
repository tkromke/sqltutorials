DELETE FROM belegt
WHERE Punkte < 5
    AND snr = (
        SELECT snr
        FROM schueler
        WHERE vorname = 'Heinz'
            AND nachname = 'Müller'
    )