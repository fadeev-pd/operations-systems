!/bin/bash

current_date=$(date +"%Y-%m-%d") #выводим текущую дату
echo $current_date

echo "Фадеев Павел" #сообщение с текущей датой

read -p "Введите год рождения: " age

year=$(date +%Y)

if ((year - age >  17)); then
        echo "Ты совершеннолетний"
else
        echo "Ты несовершеннолетний"
fi


#!/bin/bash

read -p "Введите вашу фамилию: " lastname
read -p "Введите дату рождения (дд.мм.гггг): " birthdate
day=$(echo "$birthdate" | cut -d'.' -f1)
month=$(echo "$birthdate" | cut -d'.' -f2)
year=$(echo "$birthdate" | cut -d'.' -f3)
current_year=$(date +%Y)
current_month=$(date +%m)
current_day=$(date +%d)
age=$((current_year - year))
if [[ $current_month -lt $month ]] || ([[ $current_month -eq $month ]] && [[ $current_day -lt $day ]]); then
    age=$((age - 1))
fi

#
echo "Привет, $lastname, тебе $age"

