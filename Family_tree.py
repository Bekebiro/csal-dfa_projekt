family_tree = r'''



  K. Dénes ----- Turi Liza || Sz. József -- V. Sára || B. Nándor -- H. Anna  || N. Attila -- N. Ágnes || M.István -- K.Erzsébet || V. László -- K. Mária || K. Péter -- Sz. Magdolna || P. Imre -- K. Etelka
      (16)  ||      (17)        (18)     ||    (19)       (20)   ||   (21)         (22)   ||   (23)        (24)   ||    (25)          (26)    ||   (27)       (28)     ||    (29)        (30)   ||    (31)

  Kovács János --------------------- Szabó Mária             Viktor Bányai --------- Nagy Erzsébet             Mészáros István -------- Vadkerty Magdolna         Kapus Péter -------------- Papp Sára
        (8)          ||                  (9)                       (10)         ||          (11)                       (12)           ||         (13)                    (14)     ||             (15)
                Kovács Ferenc                -------------          Bányai Viktória                                           Mészáros Csaba       ---------------------     Kapus Erika
                      (4)                         ||                       (5)                                                    (6)                     ||                     (7)
                                        Kovács Barnabás      ----------------------------------------------------------------------------------   Mészáros Erika
                                              (2)                                             ||                                                   (3)
                                                                                        Kovács József
                                                                                              (1)
                      
                      
'''

print(family_tree)






import sqlite3

conn = sqlite3.connect('family_tree2.db')
c = conn.cursor()

def get_person_name(person_id):
    c.execute(f'SELECT KeresztNev, VezetekNev FROM Személy WHERE SzemelyId = {person_id};')
    person = c.fetchone()
    if person:
        return f"{person[0]} {person[1]}"
    else:
        return None

def get_foreign_person_name(column_name, selected_value):
    if selected_value is not None:
        if column_name in ['ApaId', 'AnyaId', 'HazasId']:
            parent_name = get_person_name(selected_value)
            return f"{column_name.replace('Id', '')} neve: {parent_name} (ID: {selected_value})"
        elif column_name == 'Nem':
            return f"{column_name}: {'Nő' if selected_value == 'N' else 'Férfi'}"
        else:
            return f"{column_name}: {selected_value}"
    else:
        return f"{column_name}: Ilyen attribútuma még nincs a személynek."

continue_searching = True
while continue_searching:
    try:
        szemely_id = int(input('Írd be kérlek melyik személyt szeretnéd lekérdezni (SzemélyId alapján): '))
        person_name = get_person_name(szemely_id)
        if person_name:
            print(f"A személy neve: {person_name}")
            while True:
                confirmation = input("Biztos vagy benne, hogy ezt a személyt szeretnéd lekérdezni? (igen/nem): ").lower()
                if confirmation in ['igen', 'nem']:
                    if confirmation == 'igen':
                        c.execute(f'SELECT * FROM Személy WHERE SzemelyId = {szemely_id};')
                        szemely = c.fetchone()
                        if szemely:
                            print(f"A(z) {szemely_id} azonosítójú személy adatai:")
                            for i, column_name in enumerate(
                                    ['SzemelyId', 'Születési hely', 'Keresztnév', 'Vezetéknév', 'Elhunyt hely', 'Elhunyt ido', 'Szuletési idő', 'Nem',
                                    'Apa', 'Anya', 'Hazastárs', 'Minden attribútum']):
                                print(f"{i + 1}. {column_name}")

                            while True:
                                try:
                                    attributum_index = int(input('Melyik attribútumait szeretnéd látni a személynek? (Válassz sorszámot) '))
                                    if 1 <= attributum_index <= len(szemely):
                                        selected_column_name = ['SzemelyId', 'SzulHely', 'KeresztNev', 'VezetekNev', 'ElhunytHely', 'ElhunytIdo', 'SzulIdo', 'Nem',
                                                    'ApaId', 'AnyaId', 'HazasId'][attributum_index - 1]
                                        selected_value = szemely[attributum_index - 1]
                                        print(get_foreign_person_name(selected_column_name, selected_value))
                                        break
                                    elif attributum_index == 12:
                                        for i, column_name in enumerate(szemely):
                                            selected_column_name = ['SzemelyId', 'SzulHely', 'KeresztNev', 'VezetekNev', 'ElhunytHely', 'ElhunytIdo', 'SzulIdo', 'Nem', 'ApaId', 'AnyaId', 'HazasId'][i]
                                            selected_value = szemely[i]
                                            print(get_foreign_person_name(selected_column_name, selected_value))
                                        break
                                    else:
                                        print('Érvénytelen sorszám. Kérem, válasszon egyet a listából.')
                                except ValueError:
                                    print('Érvénytelen bemenet, próbáld újra.')
                            break
                        else:
                            print(f"Nincs olyan személy az adatbázisban, akinek {szemely_id} azonosítója lenne.")
                            continue_searching = False
                            break
                    elif confirmation == "nem":
                        break
                else:
                    print("Érvénytelen válasz. Kérem, válasszon igen vagy nem választ!")
            continue_searching = input("Szeretnél még tovább keresni? (igen/nem): ").lower() == "igen"
        else:
            print(f"Nincs olyan személy az adatbázisban, akinek {szemely_id} azonosítója lenne.")

    except ValueError:
        print('Érvénytelen bemenet, próbáld újra.')

conn.close()
