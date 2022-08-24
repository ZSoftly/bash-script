#!/usr/bin/bash

# Clear the screen befor begin then program.
    clear

# Hold the terminal for a few seconds.
    sleep 3

# Tell the user what this program do.
                echo -e "This program will display the Official Language/Languages \nof any African country of your choice"

# Hold the terminal for a few seconds.
    sleep 3

# Giving the user specific instructions.
                echo " All countries' names must begin with a capital letter"

# Hold the terminal for a few seconds.
    sleep 3

# Request input from the user.
                echo "Enter country name"
read country

# Hold the terminal for a few seconds.
    sleep 3

case $country in
        Botswana|Gambia|Ghana|Liberia|Malawi|Namibia|Nigeria|"Sierra Leone"|"South Sudan"|Zambia)
                echo "$country Official language is Emglish"
        ;;
        Benin|"Burkina Faso"|"Cote d'Ivoire"|"Democratic Republic of Congo"|Gabon|Guinea|Mali|Niger|"Republic of Congo"|Senegal|Togo)
                echo "$country Official language is French"
        ;;
        Cameroon|Mauritius)
                echo "$country Official languages are English and French"
        ;;
        Tanzania|Uganda|Kenya)
                echo "$country Official languages are English and Swahili"
        ;;
        Angola|"Cape Verde"|Guinea-Bissau|Mozambique|"Sao Tome and Principe")
                echo "$country Official language is Portuguese"
        ;;
        Tunisia|Djibouti)
                echo "$country Official languages are Arabic and French"
        ;;
        "Equatorial Guinea")
                echo "$country Official languages are French and Portuguese"
        ;;
        Ethiopia|Mauritania)
                echo "$country Official language is Arabic"
        ;;
        Algeria)
                echo "$country Official languages are Modern Standard Arabic and Tamazight (Berber)"
        ;;
        Burundi)
                echo "$country Official languages are Kurundi, French and English"
        ;;
        "Central African Republic")
                echo "$country Official languages are French and Sangho"
        ;;
        Chad)
                echo "$country Official languages are French and Modern Standard Arabic"
        ;;
        Comoros)
                echo "$country Official languages are Comorian, French and Arabic"
        ;;
        Egypt|Libya)
                echo "$country Official language is Modern Standard Arabic"
        ;;
        Eritrea)
                echo "$country Official language: N/A"
        ;;
        eSwatini|Eswatini|ESwatini)
                echo "$country Official languages are Swazi and English"
        ;;
        Lesotho)
                echo "$country Official languages are Sesotho and English"
        ;;
        Madagascar)
                echo "$country Official languages are Malagasy and French"
        ;;
        Morocco)
                echo "$country Official languages are Modern Standard Arabic and Amazigh (Berber)"
        ;;
        Rwanda)
                echo "$country Official languages are Kinyarwanda, French, English and Swahili"
        ;;
        Seychelles)
                echo "$country Official languages are Seychellois Creole, French and English"
        ;;
        Somalia)
                echo "$country Official languages are Somali and Arabic"
        ;;
        "South Africa")
                echo -e "$country Official languages are: \nAfrikaans, English, Zulu, \nXhosa, Ndebele,Venda, Swati, \nSotho, Northern Sotho, Tsonga and Tswana"
        ;;
        Sudan)
                echo "$country Official languages are Arabic and English"
        ;;
        Zimbabwe)
                echo -e "$country Official languages are: \nChewa, Chibarwe, English, Kalanga, \nKoisan, Nambya, Ndau, Ndebele, \nShangani, Shona, sign language, Sotho, \nTonga, Tswana, Venda and Xhosa"
                echo -e "==> Of Zimbabwe's 16 official languages,: \nShona, Ndebele and English are the most widely spoken."
        ;;
        *)
                echo "oops Not an African Country!!!"
esac