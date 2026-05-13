#!/bin/bash
echo $(date +%s) #выводим текущую дату
echo "Фадеев Павел" 

read -p "Введите свой возраст: " age

year=$(date +%Y)
пщ
if (( year - age >  17)); then
        echo "Ты совершеннолетний"
else
        echo "Ты несовершеннолетний"
fi



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
